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
	}

	public function index()
	{
		$this->load->helper('form');
		$this->load->library('form_validation');

		

		if ($this->session->userdata('G1Kpmvg9j0fZJ447NiOT') === TRUE)
		{
			redirect(base_url('admin/'));
		}
		else
		{
			if ($this->input->post())
			{			
				$this->form_validation->set_rules('username', 'username', 'required');
				$this->form_validation->set_rules('password', 'password', 'required');
				$this->form_validation->set_rules('code', 'code', 'required|numeric');

				if ($this->form_validation->run())
				{
					//$this->session->mess('Login successfully.', 'success');
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
}