<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* Đáng lẽ nên dùng Session
*/
class Login extends MY_Controller
{
	
	public function __construct()
	{
		parent::__construct();		
		$this->load->model('login_model');
	}

	public function index()
	{
		//if ($this->_valid_login() && $url == 'login') redirect(base_url());

		$this->load->helper('string');
		$token = random_string('md5' , 32);
		$this->data['token'] = $token;

		$this->load->helper('form');
		$this->load->library('form_validation');

		//$this->load->helper('user_helper');

		if ($this->input->post())
		{
			$this->form_validation->set_rules('password', 'password', 'trim|required|callback__check_password', array('required' => 'Password không được để trống.'));
			$this->form_validation->set_rules('token', 'token', 'trim|required|is_unique[tlpv_login.token]');		

			if ($this->form_validation->run() === TRUE)
			{
				$username = $this->input->post('username');
				$created_at = date('Y-m-d H:i:s');
				$expired_at = date('Y-m-d H:i:s', strtotime('+4 hours', strtotime($created_at)));

				$insertdata = array(
					'token' => $token,
					'created_at' => $created_at,
					'expired_at' => $expired_at,
					'data' => $this->input->user_agent()
				);

				if ($this->login_model->create($insertdata))
				{
					$this->session->set_userdata('anta_session', $token);
					redirect(base_url(),'refresh');
				}
				else
				{
					redirect(base_url('login/'),'refresh');
				}
			}
		}

		$this->load->view('admin/login/form', $this->data);
	}

	public function _check_password()
	{
		$this->load->model('user_model');

		$username = $this->input->post('username');
		$password = $this->input->post('password');

		$where = array('username' => $username);

		if($this->user_model->check_exists($where))
		{
			$input = array();
			$input['where'] = array('username' => $username);

			$user = $this->user_model->get_row($input);
			$real_password = $user->password;

			if (password_verify($password, $real_password))
			{
			    return TRUE;
			}
		}		

		$this->form_validation->set_message('_check_password', 'Username hoặc password không đúng.');

		return FALSE;
	}

	public function destroy()
	{
		if ($this->_valid_login())
		{
			pre('1');
			$token = $this->_get_row_token();

			$insertdata = array('expired_at' => date('Y-m-d H:i:s'));

			if ($this->login_model->update($token->id, $insertdata))
			{
				redirect(base_url('login/'),'refresh');
			}
			else
			{
				redirect(base_url(),'refresh');
			}	
		}
		else
		{
			pre('o');
		}
	}
}