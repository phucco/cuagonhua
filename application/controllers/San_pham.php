<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class San_pham extends MY_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('product_model');
	}

	public function index()
	{
		$this->data['sidebar'] = 'site/lien_he/sidebar-1';
		// $this->data['temp'] = 'site/lien_he/form';
		$this->load->view('site/layouts/index', $this->data);
	}

	public function danh_muc($slug)
	{

	}

	public function show($slug)
	{
		pre($this->get_product_from_slug($slug));

	}

	protected function get_product_from_slug($slug)
	{
		$slug = strval($slug);
		if ( empty($slug) ) return FALSE;

		$input = array();
		$input['where'] = array('slug' => $slug);
		$product = $this->product_model->get_row($input);

		if ( empty($product) ) 
		{
			$input['where'] = array();
			$input['like'] = array('slug', $slug);
			$product = $this->product_model->get_row($input);
		}

		if ( empty($product) ) return FALSE;

		return $product;
	}
}