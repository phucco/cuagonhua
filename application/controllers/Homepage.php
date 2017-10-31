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
		$this->load->model('slide_model');
	}

	public function index()
	{
		$list_slide = $this->slide_model->get_list();
		$this->data['list_slide'] = $list_slide;

		$this->load->view('site/homepage/index', $this->data);
	}
}