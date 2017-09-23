<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
*
*/
class MY_Controller extends CI_Controller
{
	public $data = array(
		'page_title' => 'Cửa gỗ nhựa',
		'extra_css' => array(),
		'extra_js' => array(),
		'write_js' => '',
		'temp' => 'errors/blank',
		'subnav' => 'layouts/subnav',
		'small_content_header' => ''
	);

	public function __construct()
	{
		parent::__construct();

		$this->_check_login();
		$this->data['module'] = $this->uri->rsegment(1);

	}

	protected function _check_login()
	{
		// $url = $this->uri->segment(1);

		// if ( ! $this->_valid_login() && $url != 'login')
		// {
		// 	redirect(base_url('/login/'));
		// }
	}

	
}