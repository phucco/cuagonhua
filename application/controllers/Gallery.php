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

		$write_js = '$(".fancybox").fancybox({
                openEffect  : "none",
                closeEffect : "none",
                closeBtn: true,
                arrows: true,
                nextClick: true
            });';

        $this->data['write_js'] = htmlspecialchars($write_js);
		$this->data['extra_css'] = array('assets/css/jquery.fancybox8cbb.css');
		$this->data['extra_js'] = array('assets/js/jquery.fancybox8cbb.js');

		$this->data['breadcrumbs'] = 'site/gallery/breadcrumbs';
		$this->data['temp'] = 'site/gallery/index';
		$this->load->view('site/layouts/index', $this->data);
	}
}