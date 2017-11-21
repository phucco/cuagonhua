<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
* 
*/
class Thiet_ke extends MY_Controller
{
	
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$write_js = 		
		'
			$("#selectbangmau").change(function(){
                    var bangmau = $("#selectbangmau").val();
                    var bangmau_src = "' . base_url() . 'upload/bangmau/" + bangmau;
                    var style_src = "background: url(\'" + bangmau_src + "\');";
                    $("#image-result").attr("style", style_src);
                });
                
                $("#selecthoavan").change(function(){
                    var hoavan = $("#selecthoavan").val();
                    var hoavan_src = "' . base_url() . 'upload/hoavan/" + hoavan;
                    $("#image-result").attr("src", hoavan_src);

                });
		';

		$this->data['write_js'] = $write_js;

		$this->data['breadcrumbs'] = 'site/thiet_ke/breadcrumbs';
		$this->data['sidebar'] = 'site/layouts/sidebar-1';
		$this->data['temp'] = 'site/thiet_ke/index';
		$this->load->view('site/layouts/index', $this->data);


	}
}