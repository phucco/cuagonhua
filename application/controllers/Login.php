<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class Login extends MY_Controller
{
	
	public function __construct()
	{
		parent::__construct();
		$this->config->load('custom_config');
		$this->load->helper('form');
		$this->load->library('form_validation');
		$this->load->library('encrypt');
	}

	public function index()
	{
				

		if ($this->session->userdata('G1Kpmvg9j0fZJ447NiOT') === TRUE)
		{
			redirect(base_url(''));
		}
		else
		{
			if ($this->input->post())
			{			
				$this->form_validation->set_rules('username', 'username', 'required');
				$this->form_validation->set_rules('password', 'password', 'required');
				$this->form_validation->set_rules('code', 'code', 'required|numeric|callback__check_login');

				if ($this->form_validation->run())
				{
					$this->session->set_userdata(array('G1Kpmvg9j0fZJ447NiOT' => TRUE));
					
					redirect(base_url());
					       		
				}
				else
				{
					
				}
			}
				$this->load->view('admin/login/index', $this->data);

		}
	}

	function _check_login()
	{
		$this->load->library('form_validation');
		$this->load->library('encrypt');

		$this->form_validation->set_message('_check_login', 'Try again!');
		$input = array($this->input->post('username'), $this->input->post('code'));
		$secret = array($this->encrypt->decode($this->config->item('username')), date('dmy'));
		
		if ($input === $secret AND password_verify($this->input->post('password'), $this->config->item('password')))
		{
			return TRUE;
		}
		return FALSE;
	}
}