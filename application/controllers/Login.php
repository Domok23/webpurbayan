<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	// load model
	public function __construct()
	{
		parent::__construct();
		$this->load->model('user_model');
	}

	// Login page
	public function index()
	{
		check_already_login();
		// Validasi input
		$this->form_validation->set_rules('email','Email','trim|required|valid_email',
				array(	'required'	=> '%s harus diisi',
				'valid_email'	=> '%s tidak valid. Masukkan email yang benar.'));

		$this->form_validation->set_rules('password','Password','required',
			array(	'required'	=> '%s harus diisi'));

		if($this->form_validation->run()) {
			$email 	= strip_tags($this->input->post('email'));
			$password 	= strip_tags($this->input->post('password'));
			// Proses ke simple login
			$this->simple_login->login($email,$password);
		}
		// End validasi

		$data = array(	'title'		=> 'Login Admin');
		$this->load->view('login/list', $data, FALSE);
	}

	// Logout
	public function logout()
	{
		// Panggil library logout
		$this->simple_login->logout();
	}

    // Mengirimkan email untuk reset password
	private function _sendEmail($token, $type)
    {
		$site 			= $this->konfigurasi_model->listing();
        $config = [
            'protocol'  => $site->protocol,
            'smtp_host' => $site->smtp_host,
            'smtp_user' => $site->smtp_user,
            'smtp_pass' => $site->smtp_pass,
            'smtp_port' => $site->smtp_port,
            'mailtype'  => 'html',
            'charset'   => 'utf-8',
            'newline'   => "\r\n"
        ];

        $this->email->initialize($config);

        $this->email->from($site->smtp_user, 'Web Purbayan');
        $this->email->to($this->input->post('email'));

		if ($type == 'forgot') {
            $this->email->subject('Reset Password');
            $this->email->message('Click this link to reset your password : <a href="' . base_url() . 'login/resetpassword?email=' . $this->input->post('email') . '&token=' . urlencode($token) . '">Reset Password</a>');
        }

        if ($this->email->send()) {
            return true;
        } else {
            echo $this->email->print_debugger();
            die;
        }
    }

    // Lupa password
	public function forgotPassword()
    {
        $this->form_validation->set_rules('email','Email','trim|required|valid_email',
			array(	'required'	    => '%s harus diisi',
				    'valid_email'	=> '%s tidak valid. Masukkan email yang benar.'));
		if($this->form_validation->run() == false) {
			$data['title'] = 'Lupa Password';
			$this->load->view('login/forgotpassword', $data, FALSE);
		}else {
            $email = $this->input->post('email');
            $user = $this->db->get_where('users', ['email' => $email])->row_array();

            if ($user) {
                $token = base64_encode(random_bytes(32));
                $user_token = [
                    'email' => $email,
                    'token' => $token,
                    'date_created' => time()
                ];

                $this->db->insert('user_token', $user_token);
                $this->_sendEmail($token, 'forgot');

                $this->session->set_flashdata('sukses', 'Silahkan cek email untuk reset password');
                
                redirect('login/forgotpassword');
            } else {
                $this->session->set_flashdata('warning', 'Email tidak terdaftar.');
                redirect('login/forgotpassword');
            }
        }
    }

    //link Reset Password di email
	public function resetPassword()
    {
        $email = $this->input->get('email');
        $token = $this->input->get('token');

        $user = $this->db->get_where('users', ['email' => $email])->row_array();

        if ($user) {
            $user_token = $this->db->get_where('user_token', ['token' => $token])->row_array();

            if ($user_token) {
                $this->session->set_userdata('reset_email', $email);
                $this->changePassword();
            } else {
                $this->session->set_flashdata('warning', 'Gagal! Token salah.');
                redirect('login');
            }
        } else {
            $this->session->set_flashdata('warning', 'Gagal! Email salah');
            redirect('login');
        }
    }

    //Ganti password setelah reset di email
    public function changePassword()
    {
        if (!$this->session->userdata('reset_email')) {
            redirect('login');
        }

        $this->form_validation->set_rules('new_password', 'Password Baru', 'trim|required|min_length[6]',
            array(	'required'		=> '%s harus diisi',
					'min_length'	=> '%s minimal 6 karakter'));
        $this->form_validation->set_rules('passconf', 'Konfirmasi Password', 'trim|required|min_length[6]|matches[new_password]',
            array(	'required'		=> '%s harus diisi',
					'min_length'	=> '%s minimal 6 karakter',
                    'matches'	    => '%s tidak cocok. Pastikan password Anda sama'));

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Ganti Password';
            $this->load->view('login/change-password', $data, FALSE);
        } else {
            // password oke
            $password = sha1($this->input->post('new_password'));
            $password_hint = $this->input->post('new_password');
            $email = $this->session->userdata('reset_email');

            $this->db->set('password', $password);
            $this->db->set('password_hint', $password_hint);
            $this->db->where('email', $email);
            $this->db->update('users');

            $this->session->unset_userdata('reset_email');

            $this->db->delete('user_token', ['email' => $email]);

            $this->session->set_flashdata('sukses', 'Password berhasil diganti! Silahkan login.');
            redirect('login');
        }
    }
}

/* End of file Login.php */
/* Location: ./application/controllers/Login.php */