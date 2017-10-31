<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
*
*/
class Slide extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('slide_model');
	}

	public function index()
	{
		$input = array();
		$total = $this->slide_model->get_total($input);
		$this->data['total'] = $total;

		$list = $this->slide_model->get_list($input);
		$this->data['list'] = $list;

		$this->data['subnav'] = 'admin/slide/subnav';
		$this->data['small_content_header'] = 'Tất cả ảnh slide trang chủ';
		$this->data['temp'] = 'admin/slide/index';
		$this->load->view('admin/layouts/index', $this->data);
	}

	public function create()
	{
		$this->load->helper('form');
		$this->load->helper('text');
		$this->load->library('form_validation');

		if ($this->input->post())
		{
			$alt = $this->input->post('alt');

			$config = array();
			$config['upload_path'] = 'upload/slide';
			$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp';
			$this->load->library('upload', $config);

			if($this->upload->do_upload('image'))
			{
				$upload_data = $this->upload->data();

				$insertdata = array(
					'alt' => $alt,
					'file_name' => $upload_data['file_name'],
					'image_width' => $upload_data['image_width'],
					'image_height' => $upload_data['image_height'],
					'file_size' => $upload_data['file_size'],
					'file_ext' => str_replace('.', '', $upload_data['file_ext']),
					'created_at' => date('Y-m-d H:i:s')
				);

				if ($this->slide_model->create($insertdata))
				{
					$this->session->mess('Thêm ảnh slide mới thành công.', 'success');
					redirect(base_url('admin/slide/'),'refresh');
				}
				else
				{
					$this->session->mess('Thêm ảnh slide mới không thành công.', 'danger');
					redirect(base_url('admin/slide/'),'refresh');
				}
			}
			else
			{
				$upload_error = $this->upload->display_errors();
				$this->data['upload_error'] = $upload_error;
			}
		}

		$this->data['subnav'] = 'admin/slide/subnav';
		$this->data['small_content_header'] = 'Thêm ảnh slide mới';
		$this->data['temp'] = 'admin/slide/form_add';
		$this->load->view('admin/layouts/index', $this->data);
	}

	public function del($id)
	{
		$id = intval($id);
		$slide = $this->slide_model->get_info($id);

		if (empty($slide))
		{
			$this->session->mess('Ảnh slide có ID = ' . $id . ' không tồn tại.', 'warning');
			redirect(base_url('admin/slide/'));
		}

		if ($this->slide_model->delete($id))
		{
			$path_file = 'upload/slide/' . $slide->file_name;
			if (file_exists($path_file)) { unlink($path_file); }

			$this->session->mess('Xóa ảnh slide có ID = ' . $id . ' thành công.', 'success');
			redirect(base_url('admin/slide/'), 'refresh');
		}
		else
		{
			$this->session->mess('Xóa ảnh slide có ID = ' . $id . ' không thành công.', 'danger');
			redirect(base_url('admin/slide/'), 'refresh');
		}
	}
}