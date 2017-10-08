<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class Homepage extends MY_Controller
{
	
	function __construct()
	{
		parent::__construct();

	}

	public function index()
	{
		//$this->data['temp'] = 'site/lien_he/form';
		$this->load->view('site/homepage/index', $this->data);
	}
}