<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
*
*/
class Image extends MY_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('image_model');
	}

	public function index()
	{
		$input = array();
		$total = $this->image_model->get_total($input);
		$this->data['total'] = $total;

		$list = $this->image_model->get_list($input);
		$this->data['list'] = $list;

		$this->data['subnav'] = 'admin/image/subnav';
		$this->data['small_content_header'] = 'Tất cả ảnh trong thư viện';
		$this->data['temp'] = 'admin/image/index';
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
			$config['upload_path'] = 'upload/gallery';
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

				if ($this->image_model->create($insertdata))
				{
					$this->session->mess('Thêm ảnh mới thành công.', 'success');
					redirect(base_url('admin/image/'),'refresh');
				}
				else
				{
					$this->session->mess('Thêm ảnh mới không thành công.', 'danger');
					redirect(base_url('admin/image/'),'refresh');
				}
			}
			else
			{
				$upload_error = $this->upload->display_errors();
				$this->data['upload_error'] = $upload_error;
			}
		}

		$this->data['subnav'] = 'admin/image/subnav';
		$this->data['small_content_header'] = 'Thêm ảnh mới';
		$this->data['temp'] = 'admin/image/form_add';
		$this->load->view('admin/layouts/index', $this->data);
	}


	public function del($id)
	{
		$id = intval($id);
		$image = $this->image_model->get_info($id);

		if (empty($image))
		{
			$this->session->mess('Ảnh có ID = ' . $id . ' không tồn tại.', 'warning');
			redirect(base_url('admin/image/'));
		}

		if ($this->image_model->delete($id))
		{
			$path_file = 'upload/gallery/' . $image->file_name;
			if (file_exists($path_file)) { unlink($path_file); }

			$this->session->mess('Xóa ảnh có ID = ' . $id . ' thành công.', 'success');
			redirect(base_url('admin/image/'), 'refresh');
		}
		else
		{
			$this->session->mess('Xóa ảnh có ID = ' . $id . ' không thành công.', 'danger');
			redirect(base_url('admin/image/'), 'refresh');
		}
	}
}