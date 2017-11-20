<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
* 
*/
class Thiet_ke extends MY_Controller
{
	
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{

		$this->data['breadcrumbs'] = 'site/thiet_ke/breadcrumbs';
		$this->data['sidebar'] = 'site/layouts/sidebar-1';
		$this->data['temp'] = 'site/thiet_ke/index';
		$this->load->view('site/layouts/index', $this->data);
	}
}