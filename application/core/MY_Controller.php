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
		'temp' => 'admin/layouts/blank',
		'sidebar' => 'lien_he/sidebar-1',
		'subnav' => 'layouts/subnav',
		'small_content_header' => ''
	);

	public function __construct()
	{
		parent::__construct();

		$url = $this->uri->segment(1);
		$this->data['module'] = $url;

		switch ($url) {
			case 'admin':
				$this->_check_login();
				break;
			
			default:
				
				break;
		}

	}

	
	protected function _check_login()
	{
		$url = $this->uri->rsegment(1);

		if ( ! $this->_valid_login() && $url != 'login')
		{
			redirect(base_url('/login/'));
		}
	}

	protected function _valid_login()
	{
		$login = $this->_get_row_token();

		if ( $login )
		{
			$expired_at = $login->expired_at;
			if (time() < strtotime($expired_at)) return TRUE;
		}

		return FALSE;
	}

	protected function _get_token()
	{
		$token = $this->session->userdata('anta_session');

		if ( ! empty($token) )
		{
			return strval($token);
		}

		return FALSE;
	}

	public function _get_row_token()
	{
		$token = $this->_get_token();

		if ( ! empty($token) )
		{
			$this->load->model('login_model');

			$input = array();
			$input['where'] = array('token' => $token);
			$login = $this->login_model->get_row($input);

			return $login;
		}

		return FALSE;
	}

	
}