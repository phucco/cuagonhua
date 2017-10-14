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
		$input = array();
		$input['where'] = array('parent_id' => '0');

		$list_category = $this->category_model->get_list($input);

		foreach ($list_category as $category) {			
				$input['where'] = array('parent_id' => $category->id);
				$category->list_sub_category = $this->category_model->get_list($input);

				$input = array();
				$input['where'] = array('category_id' => $category->id);
				$category->list_product = $this->product_model->get_list($input);			
		}

		$this->data['list_category'] = $list_category;

		$this->data['breadcrumbs'] = 'site/product/breadcrumbs-0';
		$this->data['sidebar'] = 'site/layouts/sidebar-1';
		$this->data['temp'] = 'site/product/index';
		$this->load->view('site/layouts/index', $this->data);
	}

	public function danh_muc($slug)
	{
		$category_id = $this->get_category_id_from_slug($slug);

		if ( empty($category_id) ) redirect(base_url());
		

		$category = $this->category_model->get_info($category_id);

		if ( empty($category) ) redirect(base_url());
		$this->data['category'] = $category;

		$input = array();
		$input['where'] = array('category_id' => $category_id);
		$list = $this->product_model->get_list($input);

		//if ( empty($list) ) redirect(base_url());

		$this->data['list'] = $list;

		// $this->data['extra_css'] = array('assets/css/pgwslideshow.min.css', 'assets/css/pgwslideshow_light.min.css');
		// $this->data['extra_js'] = array('assets/js/pgwslideshow.min.js');

		$this->data['breadcrumbs'] = 'site/product/breadcrumbs-1';
		$this->data['sidebar'] = 'site/layouts/sidebar-1';
		$this->data['temp'] = 'site/product/category';
		$this->load->view('site/layouts/index', $this->data);
	}

	public function show($slug)
	{
		$product = $this->get_product_from_slug($slug);

		if ( empty($product) ) redirect(base_url());

		$product->category = $this->get_category_from_id($product->category_id);

		$this->data['product'] = $product;

		$this->data['breadcrumbs'] = 'site/product/breadcrumbs-2';
		$this->data['sidebar'] = 'site/layouts/sidebar-1';
		$this->data['temp'] = 'site/product/show';
		$this->load->view('site/layouts/index', $this->data);
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

	protected function get_category_id_from_slug($slug)
	{
		$slug = strval($slug);
		if ( empty($slug) ) return FALSE;

		$input = array();
		$input['where'] = array('slug' => $slug);
		$category = $this->category_model->get_row($input);

		if ( empty($category) ) 
		{
			$input['where'] = array();
			$input['like'] = array('slug', $slug);
			$category = $this->category_model->get_row($input);
		}

		if ( empty($category) ) return FALSE;

		return $category->id;
	}

	protected function get_category_name_from_id($id)
	{
		$id = intval($id);
		if ( empty($id) ) return FALSE;

		$category = $this->category_model->get_info($id);

		if ( empty($category) ) return FALSE;

		return $category->name;
	}

	protected function get_category_from_id($id)
	{
		$id = intval($id);
		if ( empty($id) ) return FALSE;

		$category = $this->category_model->get_info($id);

		if ( empty($category) ) return FALSE;

		return $category;
	}
}