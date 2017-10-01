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
	}

	public function index()
	{
		$this->load->helper('text');

		$slug = 'ử ử a4 ẳ ấ ở có ưeo4hqwoeifh';


				$slug = strtolower(url_title(convert_accented_characters($slug)));
				pre($slug);
	}
}