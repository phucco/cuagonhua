<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class Gallery extends MY_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('image_model');
	}
}