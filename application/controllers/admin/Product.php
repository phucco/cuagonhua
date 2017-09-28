<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class Product extends MY_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('product_model');
	}

	public function index()
	{
		$input = array();
		$total = $this->product_model->get_total($input);
		$this->data['total'] = $total;

		$list = $this->product_model->get_list($input);
		$this->data['list'] = $list;

		$this->data['subnav'] = 'admin/product/subnav';
		$this->data['small_content_header'] = 'Tất cả thông báo';
		$this->data['temp'] = 'admin/product/index';
		$this->load->view('admin/layouts/index', $this->data);
	}
}