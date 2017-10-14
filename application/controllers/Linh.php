<?php

/**
* 
*/
class Linh extends MY_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->library('encrypt');
		$this->load->model('category_model');
	}

	public function index()
	{
		// $input = array();
		// $input['order'] = array('id', 'ASC');

		// $list_category_menu = $this->category_model->get_list(array(array('id', 'ASC')));

		// foreach ($list_category_menu as $category) {
		// 	unset($category->parent_id);
		// 	unset($category->short_description);
		// 	unset($category->long_description);
		// 	unset($category->created_at);
		// 	unset($category->updated_at);
		// }

		// $this->data['$list_category_menu'] = $list_category_menu;

		pre($list_category_menu);
	}
}