<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function admin_assets($url = '')
{
	if (strpos($url, '/') == 0)
	{
	 	return base_url('/admin/' . substr($url, 1));
	}
	else
	{
		return base_url('/admin/' . $url);
	}
}

function site_assets($url = '')
{
	
}
