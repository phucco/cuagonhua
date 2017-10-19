<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('user_model');
	}

	public function index()
	{
		$id = '1';
		$this->load->helper('form');
		$this->load->library('form_validation');

		if ($this->input->post())
		{
			$this->form_validation->set_rules('old_password', 'Password', 'trim|required|min_length[6]|callback__check_old_password',
				array('required' => 'Password không được để trống.',
						'min_length' => 'Password phải chứa nhiều hơn 6 ký tự.'
				)
			);
			$this->form_validation->set_rules('password', 'password', 'trim|required|min_length[6]',
				array('required' => 'Password không được để trống.',
						'min_length' => 'Password phải chứa nhiều hơn 6 ký tự.'
				)
			);
			$this->form_validation->set_rules('repassword', 'repassword', 'trim|required|matches[password]',
				array('required' => 'Password không được để trống.',
						'matches' => 'Password không khớp.'
				)
			);

			if ($this->form_validation->run() === TRUE)
			{
				$password = $this->input->post('password');
				$password = password_hash($password, PASSWORD_BCRYPT);

				$insertdata = array(
					'password' => $password
				);

				if ($this->user_model->update($id, $insertdata))
				{
					$this->session->mess('Thay đổi password thành công.', 'success');
					redirect(base_url('/admin/'),'refresh');
				}
				else
				{
					$this->session->mess('Thay đổi password không thành công.', 'danger');
					redirect(base_url('/admin/'),'refresh');
				}
			}
		}

		$this->data['subnav'] = 'admin/user/subnav';
		$this->data['temp'] = 'admin/user/form';
		$this->load->view('admin/layouts/index', $this->data);
	}

	public function _check_old_password($old_password)
	{
		$id = '1';

		$user = $this->user_model->get_info($id);
		$this->data['user'] = $user;

		$real_old_password = $user->password;

		if (password_verify($old_password, $real_old_password))
		{
		    return TRUE;
		}

		$this->form_validation->set_message('_check_old_password', 'Password cũ không đúng.');

		return FALSE;
	}
}