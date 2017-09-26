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
		$text = "namdeptrai";
		pre($this->encrypt->encode($text));
	}
}