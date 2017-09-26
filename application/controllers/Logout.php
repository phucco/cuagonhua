<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class Logout extends MY_Controller
{
	function __construct()
	{
		parent::__construct();
	}
	public function index()
	{
		$this->session->unset_userdata('G1Kpmvg9j0fZJ447NiOT');
		redirect(base_url('login/'),'refresh');
	}
}