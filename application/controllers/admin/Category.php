<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('category_model');
	}

	public function index()
	{
		$input = array();
		$input['order'] = array('parent_id','ASC');
		$total = $this->category_model->get_total($input);
		$this->data['total'] = $total;

		$list = $this->category_model->get_list($input);

		foreach ($list as $row) {
			if (empty($row->parent_id))
			{
				$row->parent_name = '<span class="text-danger">Là danh mục lớn</span>';
			}
			else
			{
				$row->parent_name = $this->category_id_to_name($row->parent_id);
			}
		}

		$this->data['list'] = $list;

		$this->data['subnav'] = 'admin/category/subnav';
		$this->data['small_content_header'] = 'Tất cả danh mục sản phẩm';
		$this->data['temp'] = 'admin/category/index';
		$this->load->view('admin/layouts/index', $this->data);
	}

	public function create()
	{
		$this->load->helper('form');
		$this->load->helper('text');
		$this->load->library('form_validation');

		$input = array();
		$input['where'] = array('parent_id' => '0');
		$list = $this->category_model->get_list($input);
		$this->data['list'] = $list;

		if ($this->input->post())
		{
			$this->form_validation->set_rules('name', 'name', 'required');
			$this->form_validation->set_value('short_description', 'Mô tả ngắn', 'required');
			$this->form_validation->set_value('long_description', 'long_description', 'required');

			if ($this->form_validation->run() === TRUE)
			{
				$name = $this->input->post('name');
				$slug = $this->input->post('slug');
				if ( empty($slug) ) { $slug = strtolower(url_title(convert_accented_characters($name))); }

				$parent_id = $this->input->post('parent_id');
				$short_description = $this->input->post('short_description');
				$long_description = $this->input->post('long_description');

				$insertdata = array(
					'name' => $name,
					'slug' => $slug,
					'parent_id' => $parent_id,
					'short_description' => $short_description,
					'long_description' => $long_description,
					'created_at' => date('Y-m-d H:i:s')
				);

				if ($this->category_model->create($insertdata))
				{
					$this->session->mess('Tạo danh mục thành công.', 'success');
					redirect(base_url('admin/category/'),'refresh');
				}
				else
				{
					$this->session->mess('Tạo danh mục không thành công.', 'danger');
					redirect(base_url('admin/category/'),'refresh');
				}
			}
		}

		$this->data['subnav'] = 'admin/category/subnav';
		$this->data['small_content_header'] = 'Thêm danh mục sản phẩm mới';
		$this->data['temp'] = 'admin/category/form';
		$this->load->view('admin/layouts/index', $this->data);
	}

	public function edit($id)
	{
		$id = intval($id);
		$category = $this->category_model->get_info($id);

		if ( empty($category) )
		{
			$this->session->mess('Danh mục không tồn tại.', 'danger');
			redirect(base_url('admin/category/'),'refresh');
		}

		$this->data['category'] = $category;

		$this->load->helper('form');
		$this->load->helper('text');
		$this->load->library('form_validation');

		$input = array();		
		$input['where'] = array('parent_id' => '0');
		$list = $this->category_model->get_list($input);
		$this->data['list'] = $list;

		if ($this->input->post())
		{
			$this->form_validation->set_rules('name', 'name', 'required');
			$this->form_validation->set_value('short_description', 'Mô tả ngắn', 'required');
			$this->form_validation->set_value('long_description', 'long_description', 'required');

			if ($this->form_validation->run() === TRUE)
			{
				$name = $this->input->post('name');
				$slug = $this->input->post('slug');
				if ( empty($slug) ) { $slug = strtolower(url_title(convert_accented_characters($name))); }

				$parent_id = $this->input->post('parent_id');
				$short_description = $this->input->post('short_description');
				$long_description = $this->input->post('long_description');

				$insertdata = array(
					'name' => $name,
					'slug' => $slug,
					'parent_id' => $parent_id,
					'short_description' => $short_description,
					'long_description' => $long_description,
					'updated_at' => date('Y-m-d H:i:s')
				);

				if ($this->category_model->update($id, $insertdata))
				{
					$this->session->mess('Sửa danh mục thành công.', 'success');
					redirect(base_url('admin/category/'),'refresh');
				}
				else
				{
					$this->session->mess('Sửa danh mục không thành công.', 'danger');
					redirect(base_url('admin/category/'),'refresh');
				}
			}
		}

		$this->data['subnav'] = 'admin/category/subnav';
		$this->data['small_content_header'] = 'Sửa danh mục ' . $category->name;
		$this->data['temp'] = 'admin/category/form';
		$this->load->view('admin/layouts/index', $this->data);
	}

	public function del($id)
	{
		$id = intval($id);
		$category = $this->category_model->get_info($id);

		if ( empty($category) )
		{
			$this->session->mess('Danh mục không tồn tại.', 'danger');
			redirect(base_url('admin/category/'),'refresh');
		}

		if ($this->category_model->delete($id))
		{
			$this->session->mess('Xóa danh mục có ID = ' . $id . ' thành công.', 'success');
			redirect(base_url('admin/category/'),'refresh');
		}
		else
		{
			$this->session->mess('Xóa danh mục có ID = ' . $id . ' không thành công.', 'danger');
			redirect(base_url('admin/category/'),'refresh');
		}
	}

	protected function category_id_to_name($id)
	{
		$id = intval($id);
		$category = $this->category_model->get_info($id);
		$this->data['category'] = $category;

		if ( empty($category) ) return FALSE;

		return $category->name;
	}
}