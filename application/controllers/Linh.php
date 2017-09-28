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
		pre($this->uri->segment(1));
		if ($this->_valid_login())
		{
			pre(1);
		}
		else
		{
			pre(0);
		}
	}
}