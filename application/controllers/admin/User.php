<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('user_model');
	}

	public function edit()
	{
		$this->data['subnav'] = 'admin/user/subnav';
		$this->data['temp'] = 'admin/user/form';
		$this->load->view('admin/layouts/index', $this->data);
	}
}