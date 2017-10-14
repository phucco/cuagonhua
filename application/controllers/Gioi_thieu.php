<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gioi_thieu extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
		# code...
	}

	public function index()
	{
		$this->data['breadcrumbs'] = 'site/gioi_thieu/breadcrumbs';
		$this->data['temp'] = 'site/gioi_thieu/index';
		$this->load->view('site/layouts/index', $this->data);
	}
}	