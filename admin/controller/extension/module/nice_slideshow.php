<?php
class ControllerExtensionModuleNiceSlideshow extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('extension/module/nice_slideshow');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('extension/module/nice_slideshow');

		$this->getList();
	}
	
	public function install() {
		$this->load->model('extension/module/nice_slideshow');		
		$this->model_extension_module_nice_slideshow->install();
		
		$this->load->model('user/user_group');
		$this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'extension/module/nice_slideshow');
		$this->model_user_user_group->addPermission($this->user->getGroupId(), 'modify', 'extension/module/nice_slideshow');
	}

	public function add() {
		$this->load->language('extension/module/nice_slideshow');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('extension/module/nice_slideshow');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_extension_module_nice_slideshow->addSlideshow($this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('extension/module/nice_slideshow', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getForm();
	}

	public function edit() {
		$this->load->language('extension/module/nice_slideshow');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('extension/module/nice_slideshow');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_extension_module_nice_slideshow->editSlideshow($this->request->get['slideshow_id'], $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('extension/module/nice_slideshow', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getForm();
	}

	public function delete() {
		$this->load->language('extension/module/nice_slideshow');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('extension/module/nice_slideshow');

		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $slideshow_id) {
				$this->model_extension_module_nice_slideshow->deleteSlideshow($slideshow_id);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('extension/module/nice_slideshow', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getList();
	}

	protected function getList() {
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'name';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = (int)$this->request->get['page'];
		} else {
			$page = 1;
		}

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);
		
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/nice_slideshow', 'user_token=' . $this->session->data['user_token'] . $url, true)
		);

		$data['add'] = $this->url->link('extension/module/nice_slideshow/add', 'user_token=' . $this->session->data['user_token'] . $url, true);
		$data['delete'] = $this->url->link('extension/module/nice_slideshow/delete', 'user_token=' . $this->session->data['user_token'] . $url, true);

		$data['slideshows'] = array();

		$filter_data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit' => $this->config->get('config_limit_admin')
		);

		$slideshow_total = $this->model_extension_module_nice_slideshow->getTotalSlideshows();

		$results = $this->model_extension_module_nice_slideshow->getSlideshows($filter_data);

		foreach ($results as $result) {
			$data['slideshows'][] = array(
				'slideshow_id' => $result['slideshow_id'],
				'name'      => $result['name'],
				'status'    => ($result['status'] ? $this->language->get('text_enabled') : $this->language->get('text_disabled')),
				'edit'      => $this->url->link('extension/module/nice_slideshow/edit', 'user_token=' . $this->session->data['user_token'] . '&slideshow_id=' . $result['slideshow_id'] . $url, true)
			);
		}

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		if (isset($this->request->post['selected'])) {
			$data['selected'] = (array)$this->request->post['selected'];
		} else {
			$data['selected'] = array();
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['sort_name'] = $this->url->link('extension/module/nice_slideshow', 'user_token=' . $this->session->data['user_token'] . '&sort=name' . $url, true);
		$data['sort_status'] = $this->url->link('extension/module/nice_slideshow', 'user_token=' . $this->session->data['user_token'] . '&sort=status' . $url, true);

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $slideshow_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('extension/module/nice_slideshow', 'user_token=' . $this->session->data['user_token'] . $url . '&page={page}', true);

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($slideshow_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($slideshow_total - $this->config->get('config_limit_admin'))) ? $slideshow_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $slideshow_total, ceil($slideshow_total / $this->config->get('config_limit_admin')));

		$data['sort'] = $sort;
		$data['order'] = $order;

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/nice_slideshow_list', $data));
	}

	protected function getForm() {
		$data['text_form'] = !isset($this->request->get['slideshow_id']) ? $this->language->get('text_add') : $this->language->get('text_edit');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}

		if (isset($this->error['slideshow_image'])) {
			$data['error_slideshow_image'] = $this->error['slideshow_image'];
		} else {
			$data['error_slideshow_image'] = array();
		}

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);
		
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/nice_slideshow', 'user_token=' . $this->session->data['user_token'] . $url, true)
		);

		if (!isset($this->request->get['slideshow_id'])) {
			$data['action'] = $this->url->link('extension/module/nice_slideshow/add', 'user_token=' . $this->session->data['user_token'] . $url, true);
		} else {
			$data['action'] = $this->url->link('extension/module/nice_slideshow/edit', 'user_token=' . $this->session->data['user_token'] . '&slideshow_id=' . $this->request->get['slideshow_id'] . $url, true);
		}

		$data['cancel'] = $this->url->link('extension/module/nice_slideshow', 'user_token=' . $this->session->data['user_token'] . $url, true);

		if (isset($this->request->get['slideshow_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$slideshow_info = $this->model_extension_module_nice_slideshow->getSlideshow($this->request->get['slideshow_id']);
		}

		$data['user_token'] = $this->session->data['user_token'];

		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} elseif (!empty($slideshow_info)) {
			$data['name'] = $slideshow_info['name'];
		} else {
			$data['name'] = '';
		}

		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($slideshow_info)) {
			$data['status'] = $slideshow_info['status'];
		} else {
			$data['status'] = true;
		}

		$this->load->model('localisation/language');

		$data['languages'] = $this->model_localisation_language->getLanguages();

		$this->load->model('tool/image');

		if (isset($this->request->post['slideshow_image'])) {
			$slideshow_images = $this->request->post['slideshow_image'];
		} elseif (isset($this->request->get['slideshow_id'])) {
			$slideshow_images = $this->model_extension_module_nice_slideshow->getSlideshowImages($this->request->get['slideshow_id']);
		} else {
			$slideshow_images = array();
		}

		$data['slideshow_images'] = array();

		foreach ($slideshow_images as $key => $value) {
			foreach ($value as $slideshow_image) {
				if (is_file(DIR_IMAGE . $slideshow_image['image'])) {
					$image = $slideshow_image['image'];
					$thumb = $slideshow_image['image'];
				} else {
					$image = '';
					$thumb = 'no_image.png';
				}

				$data['slideshow_images'][$key][] = array(
					'title'      => $slideshow_image['title'],
					'link'       => $slideshow_image['link'],
					'image'      => $image,
					'thumb'      => $this->model_tool_image->resize($thumb, 100, 100),
					'sort_order' => $slideshow_image['sort_order']
				);
			}
		}

		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/nice_slideshow_form', $data));
	}

	protected function validateForm() {
		if (!$this->user->hasPermission('modify', 'extension/module/nice_slideshow')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}

		if (isset($this->request->post['slideshow_image'])) {
			foreach ($this->request->post['slideshow_image'] as $language_id => $value) {
				foreach ($value as $slideshow_image_id => $slideshow_image) {
					if ((utf8_strlen($slideshow_image['title']) < 2) || (utf8_strlen($slideshow_image['title']) > 64)) {
						$this->error['slideshow_image'][$language_id][$slideshow_image_id] = $this->language->get('error_title');
					}
				}
			}
		}

		return !$this->error;
	}

	protected function validateDelete() {
		if (!$this->user->hasPermission('modify', 'extension/module/nice_slideshow')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}
