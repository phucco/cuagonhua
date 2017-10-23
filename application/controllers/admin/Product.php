<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
*
*/
class Product extends MY_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('product_model');
		$this->load->model('category_model');
	}

	public function index()
	{
		$input = array();
		$input['order'] = array('order_num', 'ASC');
		$total = $this->product_model->get_total($input);
		$this->data['total'] = $total;

		$list = $this->product_model->get_list($input);

		foreach ($list as $row) {
			$row->category_name = $this->category_id_to_name($row->category_id);
		}

		$this->data['list'] = $list;

		$write_js = '
			$(".order-num-col").click(function(){
				$(this).children().show();
				var id = $(this).attr("id").replace("order-num-col-", "");

				$("input[name=\'order_num_" + id + "\']").change(function(){

					var order_num = $(this).val();

					$.get({
						url: "' . base_url('admin/product/order/?id=') . '" + id + "&order_num=" + order_num,
						success: function(){
							$("#order-num-col-" + id).text(order_num);
							$("#order-form-" + id).remove();
						}
					});
				});
			});
			$("input[type=checkbox]").click(function(){
				var id = $(this).attr("id").replace("stock-checkbox-", "");
				if ($(this).is(":checked")) {
					$.get({
						url: "' . base_url('admin/product/stock/?id=') . '" + id,
					});
				} else {
					$.get({
						url: "' . base_url('admin/product/unstock/?id=') . '" + id,
					});
				}
			});
		';

		$this->data['write_js'] = htmlspecialchars($write_js);

		$this->data['subnav'] = 'admin/product/subnav';
		$this->data['small_content_header'] = 'Tất cả sản phẩm';
		$this->data['temp'] = 'admin/product/index';
		$this->load->view('admin/layouts/index', $this->data);
	}

	public function create()
	{
		$this->load->helper('form');
		$this->load->helper('text');
		$this->load->library('form_validation');

		$input = array();
		$list = $this->category_model->get_list($input);
		$this->data['list'] = $list;

		if ($this->input->post())
		{
			$this->form_validation->set_rules('name', 'name', 'required');
			$this->form_validation->set_rules('category_id', 'category_id', 'required');
			$this->form_validation->set_value('short_description', 'Mô tả ngắn', 'required');
			$this->form_validation->set_value('long_description', 'long_description', 'required');

			if ($this->form_validation->run() === TRUE)
			{
				$name = $this->input->post('name');
				$slug = $this->input->post('slug');
				if ( empty($slug) ) { $slug = strtolower(url_title(convert_accented_characters($name))); }

				$category_id = $this->input->post('category_id');
				$short_description = $this->input->post('short_description');
				$long_description = $this->input->post('long_description');
				$stock = $this->input->post('stock');

				$config = array();
				$config['upload_path'] = 'upload/product';
				$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp';
				$this->load->library('upload', $config);

				if($this->upload->do_upload('image'))
				{
					$upload_data = $this->upload->data();

					$insertdata = array(
						'name' => $name,
						'slug' => $slug,
						'image' => $upload_data['file_name'],
						'category_id' => $category_id,
						'short_description' => $short_description,
						'long_description' => $long_description,
						'stock' => $stock,
						'created_at' => date('Y-m-d H:i:s')
					);

					if ($this->product_model->create($insertdata))
					{
						$this->session->mess('Tạo sản phẩm thành công.', 'success');
						redirect(base_url('admin/product/'),'refresh');
					}
					else
					{
						$this->session->mess('Tạo sản phẩm không thành công.', 'danger');
						redirect(base_url('admin/product/'),'refresh');
					}
				}
				else
				{
					$insertdata = array(
						'name' => $name,
						'slug' => $slug,
						'category_id' => $category_id,
						'short_description' => $short_description,
						'long_description' => $long_description,
						'stock' => $stock,
						'created_at' => date('Y-m-d H:i:s')
					);

					if ($this->product_model->create($insertdata))
					{
						$this->session->mess('Tạo sản phẩm thành công.', 'success');
						redirect(base_url('admin/product/'),'refresh');
					}
					else
					{
						$this->session->mess('Tạo sản phẩm không thành công.', 'danger');
						redirect(base_url('admin/product/'),'refresh');
					}
				}
			}
		}

		$this->data['subnav'] = 'admin/product/subnav';
		$this->data['small_content_header'] = 'Thêm sản phẩm mới';
		$this->data['temp'] = 'admin/product/form';
		$this->load->view('admin/layouts/index', $this->data);
	}

	public function edit($id)
	{
		$id = intval($id);
		$product = $this->product_model->get_info($id);

		if ( empty($product) )
		{
			$this->session->mess('Sản phẩm không tồn tại.', 'danger');
			redirect(base_url('admin/product/'),'refresh');
		}

		$this->data['product'] = $product;

		$this->load->helper('form');
		$this->load->helper('text');
		$this->load->library('form_validation');

		$input = array();
		$list = $this->category_model->get_list($input);
		$this->data['list'] = $list;

		if ($this->input->post())
		{
			$this->form_validation->set_rules('name', 'name', 'required');
			$this->form_validation->set_rules('category_id', 'category_id', 'required');
			$this->form_validation->set_value('short_description', 'Mô tả ngắn', 'required');
			$this->form_validation->set_value('long_description', 'long_description', 'required');

			if ($this->form_validation->run() === TRUE)
			{
				$name = $this->input->post('name');
				$slug = $this->input->post('slug');
				if ( empty($slug) ) { $slug = strtolower(url_title(convert_accented_characters($name))); }

				$category_id = $this->input->post('category_id');
				$short_description = $this->input->post('short_description');
				$long_description = $this->input->post('long_description');

				$config = array();
				$config['upload_path'] = 'upload/product';
				$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp';
				$this->load->library('upload', $config);

				if($this->upload->do_upload('image'))
				{
					$upload_data = $this->upload->data();

					$insertdata = array(
						'name' => $name,
						'slug' => $slug,
						'image' => $upload_data['file_name'],
						'category_id' => $category_id,
						'short_description' => $short_description,
						'long_description' => $long_description,
						'updated_at' => date('Y-m-d H:i:s')
					);

					if ($this->product_model->update($id, $insertdata))
					{
						$this->session->mess('Sửa sản phẩm có ID = ' . $id . ' thành công.', 'success');
						redirect(base_url('admin/product/'),'refresh');
					}
					else
					{
						$this->session->mess('Sửa sản phẩm có ID = ' . $id . ' không thành công.', 'danger');
						redirect(base_url('admin/product/'),'refresh');
					}
				}
				else
				{
					$insertdata = array(
						'name' => $name,
						'slug' => $slug,
						'category_id' => $category_id,
						'short_description' => $short_description,
						'long_description' => $long_description,
						'updated_at' => date('Y-m-d H:i:s')
					);

					if ($this->product_model->update($id, $insertdata))
					{
						$this->session->mess('Sửa sản phẩm có ID = ' . $id . ' thành công.', 'success');
						redirect(base_url('admin/product/'),'refresh');
					}
					else
					{
						$this->session->mess('Sửa sản phẩm có ID = ' . $id . ' không thành công.', 'danger');
						redirect(base_url('admin/product/'),'refresh');
					}
				}
			}
		}

		$this->data['subnav'] = 'admin/product/subnav';
		$this->data['small_content_header'] = 'Cập nhật sản phẩm có ID = ' . $id;
		$this->data['temp'] = 'admin/product/form';
		$this->load->view('admin/layouts/index', $this->data);
	}

	public function del($id)
	{
		$id = intval($id);
		$product = $this->product_model->get_info($id);

		if ( empty($product) )
		{
			$this->session->mess('Sản phẩm không tồn tại.', 'danger');
			redirect(base_url('admin/product/'),'refresh');
		}

		if ($this->product_model->delete($id))
		{
			$this->session->mess('Xóa sản phẩm có ID = ' . $id . ' thành công.', 'success');
			redirect(base_url('admin/product/'),'refresh');
		}
		else
		{
			$this->session->mess('Xóa sản phẩm có ID = ' . $id . ' không thành công.', 'danger');
			redirect(base_url('admin/product/'),'refresh');
		}
	}

	public function order()
	{
		$id = $this->input->get('id');
		$id = intval($id);
		$order_num = $this->input->get('order_num');

		$insertdata = array(
			'order_num' => $order_num,
			'updated_at' => date('Y-m-d H:i:s')
			);

		$this->product_model->update($id, $insertdata);
	}

	public function unstock()
	{
		$id = $this->input->get('id');
		$id = intval($id);

		$product = $this->product_model->get_info($id);

		if ( empty($product) ) return FALSE;

		if ( $product->stock == '0' ) return FALSE;

		$insertdata = array(
			'stock' => '0',
			'updated_at' => date('Y-m-d H:i:s')
		);

		$this->product_model->update($id, $insertdata);
	}

	public function stock()
	{
		$id = $this->input->get('id');
		$id = intval($id);

		$product = $this->product_model->get_info($id);

		if ( empty($product) ) return FALSE;

		if ( $product->stock == '1' ) return FALSE;

		$insertdata = array(
			'stock' => '1',
			'updated_at' => date('Y-m-d H:i:s')
		);

		$this->product_model->update($id, $insertdata);
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