<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class Dashboard extends MY_Controller
{
	
	function __construct()
	{
		parent::__construct();

	}

	public function index()
	{
		$this->data['subnav'] = 'admin/layouts/subnav';
		$this->data['small_content_header'] = 'Tất cả danh mục sản phẩm';
		$this->data['temp'] = 'admin/layouts/blank';
		$this->load->view('admin/layouts/index', $this->data);
	}
}