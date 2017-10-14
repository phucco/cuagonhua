<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class Gallery extends MY_Controller
{	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('image_model');
	}

	public function index()
	{
		$input = array();
		$list = $this->image_model->get_list($input);

		$this->data['list'] = $list;

		$this->data['breadcrumbs'] = 'site/gallery/breadcrumbs';
		$this->data['temp'] = 'site/gallery/index';
		$this->load->view('site/layouts/index', $this->data);
	}
}