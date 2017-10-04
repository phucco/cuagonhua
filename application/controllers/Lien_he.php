<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
*
*/
class Lien_he extends MY_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model('form_model');
	}

	public function index()
	{
		$this->load->helper('form');
		$this->load->library('form_validation');

		if ($this->input->post())
		{
			$this->form_validation->set_rules('name', 'name', 'required');
			$this->form_validation->set_rules('email', 'email', 'required|valid_email');
			$this->form_validation->set_rules('message', 'message', 'required');

			if ($this->form_validation->run() === TRUE)
			{
				$name = $this->input->post('name');
				$company = $this->input->post('company');
				$phone = $this->input->post('phone');
				$address = $this->input->post('address');
				$email = $this->input->post('email');
				$title = $this->input->post('title');
				$message = $this->input->post('message');

				$insertdata = array(
					'name' => $name,
					'company' => $company,
					'phone' => $phone,
					'email' => $email,
					'address' => $address,
					'title' => $title,
					'message' => $message,
					'created_at' => date('Y-m-d H:i:s')
				);

				if ($this->form_model->create($insertdata))
				{
					$this->session->set_flashdata('message_response', 'Gửi yêu cầu thành công. Chúng tôi sẽ liên hệ trong thời gian sớm nhất!');
				}
				else
				{
					$this->session->set_flashdata('message_response', 'Gửi yêu cầu không thành công. Vui lòng thử lại.');
				}

				$flashdata = $this->session->flashdata('message_response');
				$this->data['flashdata'] = $flashdata;
			}

		}

		$this->data['sidebar'] = 'site/lien_he/sidebar-1';
		$this->data['temp'] = 'site/lien_he/form';
		$this->load->view('site/layouts/index', $this->data);
	}
}