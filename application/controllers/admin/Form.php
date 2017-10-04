<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Form extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('form_model');
	}

	public function index()
	{
		$input = array();
		$total = $this->form_model->get_total($input);
		$this->data['total'] = $total;

		$list = $this->form_model->get_list($input);
		$this->data['list'] = $list;

		$this->data['subnav'] = 'admin/form/subnav';
		$this->data['small_content_header'] = 'Tất cả yêu cầu liên hệ';
		$this->data['temp'] = 'admin/form/index';
		$this->load->view('admin/layouts/index', $this->data);
	}

	public function show($id)
	{
		$id = intval($id);
		$form = $this->form_model->get_info($id);

		if ( empty($form) )
		{
			$this->session->mess('Yêu cầu liên hệ không tồn tại.', 'danger');
			redirect(base_url('admin/form/'),'refresh');
		}

		$this->data['form'] = $form;

		$this->data['subnav'] = 'admin/form/subnav';
		$this->data['small_content_header'] = 'Xem yêu cầu liên hệ ID = ' . $id;
		$this->data['temp'] = 'admin/form/show';
		$this->load->view('admin/layouts/index', $this->data);
	}

	public function del($id)
	{

	}
}