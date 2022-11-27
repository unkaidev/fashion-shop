<?php
class ControllerExtensionModuleResponsiveSlideshow extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('extension/module/responsive_slideshow');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/module');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if (!isset($this->request->get['module_id'])) {
				$this->model_setting_module->addModule('responsive_slideshow', $this->request->post);
			} else {
				$this->model_setting_module->editModule($this->request->get['module_id'], $this->request->post);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true));
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');

		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_banner'] = $this->language->get('entry_banner');
		$data['entry_width'] = $this->language->get('entry_width');
		$data['entry_height'] = $this->language->get('entry_height');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_effect'] = $this->language->get('entry_effect');
		$data['entry_duration'] = $this->language->get('entry_duration');
		$data['entry_delay'] = $this->language->get('entry_delay');
		$data['entry_autoplay'] = $this->language->get('entry_autoplay');
		$data['entry_playpause'] = $this->language->get('entry_playpause');
		$data['entry_stoponhover'] = $this->language->get('entry_stoponhover');
		$data['entry_loop'] = $this->language->get('entry_loop');
		$data['entry_caption'] = $this->language->get('entry_caption');
		$data['entry_controls'] = $this->language->get('entry_controls');
		$data['entry_controlsthumb'] = $this->language->get('entry_controlsthumb');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

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

		if (isset($this->error['width'])) {
			$data['error_width'] = $this->error['width'];
		} else {
			$data['error_width'] = '';
		}

		if (isset($this->error['height'])) {
			$data['error_height'] = $this->error['height'];
		} else {
			$data['error_height'] = '';
		}
		
		if (isset($this->error['effect'])) {
			$data['error_effect'] = $this->error['effect'];
		} else {
			$data['error_effect'] = '';
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

		if (!isset($this->request->get['module_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('extension/module/responsive_slideshow', 'user_token=' . $this->session->data['user_token'], true)
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('extension/module/responsive_slideshow', 'user_token=' . $this->session->data['user_token'] . '&module_id=' . $this->request->get['module_id'], true)
			);
		}

		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link('extension/module/responsive_slideshow', 'user_token=' . $this->session->data['user_token'], 'SSL');
		} else {
			$data['action'] = $this->url->link('extension/module/responsive_slideshow', 'user_token=' . $this->session->data['user_token'] . '&module_id=' . $this->request->get['module_id'], 'SSL');
		}

		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'], 'SSL');

		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_setting_module->getModule($this->request->get['module_id']);
		}

		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} elseif (!empty($module_info)) {
			$data['name'] = $module_info['name'];
		} else {
			$data['name'] = '';
		}

		if (isset($this->request->post['banner_id'])) {
			$data['banner_id'] = $this->request->post['banner_id'];
		} elseif (!empty($module_info)) {
			$data['banner_id'] = $module_info['banner_id'];
		} else {
			$data['banner_id'] = '';
		}

		$this->load->model('design/banner');

		$data['banners'] = $this->model_design_banner->getBanners();

		if (isset($this->request->post['width'])) {
			$data['width'] = $this->request->post['width'];
		} elseif (!empty($module_info)) {
			$data['width'] = $module_info['width'];
		} else {
			$data['width'] = '';
		}

		if (isset($this->request->post['height'])) {
			$data['height'] = $this->request->post['height'];
		} elseif (!empty($module_info)) {
			$data['height'] = $module_info['height'];
		} else {
			$data['height'] = '';
		}
		
		if (isset($this->request->post['effect'])) {
			$data['effect'] = $this->request->post['effect'];
		} elseif (!empty($module_info)) {
			$data['effect'] = $module_info['effect'];
		} else {
			$data['effect'] = '';
		}
		
		if (isset($this->request->post['duration'])) {
			$data['duration'] = $this->request->post['duration'];
		} elseif (!empty($module_info)) {
			$data['duration'] = $module_info['duration'];
		} else {
			$data['duration'] = '20';
		}
		
		if (isset($this->request->post['duration1'])) {
			$data['duration1'] = $this->request->post['duration1'];
		} elseif (!empty($module_info)) {
			$data['duration1'] = $module_info['duration1'];
		} else {
			$data['duration1'] = '100';
		}
		
		if (isset($this->request->post['delay'])) {
			$data['delay'] = $this->request->post['delay'];
		} elseif (!empty($module_info)) {
			$data['delay'] = $module_info['delay'];
		} else {
			$data['delay'] = '20';
		}
		
		if (isset($this->request->post['delay1'])) {
			$data['delay1'] = $this->request->post['delay1'];
		} elseif (!empty($module_info)) {
			$data['delay1'] = $module_info['delay1'];
		} else {
			$data['delay1'] = '100';
		}
		
		if (isset($this->request->post['autoplay'])) {
			$data['autoplay'] = $this->request->post['autoplay'];
		} elseif (!empty($module_info)) {
			$data['autoplay'] = $module_info['autoplay'];
		} else {
			$data['autoplay'] = true;
		}
			
		if (isset($this->request->post['playpause'])) {
			$data['playpause'] = $this->request->post['playpause'];
		} elseif (!empty($module_info)) {
			$data['playpause'] = $module_info['playpause'];
		} else {
			$data['playpause'] = true;
		}
		
		if (isset($this->request->post['stoponhover'])) {
			$data['stoponhover'] = $this->request->post['stoponhover'];
		} elseif (!empty($module_info)) {
			$data['stoponhover'] = $module_info['stoponhover'];
		} else {
			$data['stoponhover'] = true;
		}
		
		if (isset($this->request->post['loop'])) {
			$data['loop'] = $this->request->post['loop'];
		} elseif (!empty($module_info)) {
			$data['loop'] = $module_info['loop'];
		} else {
			$data['loop'] = false;
		}

		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($module_info)) {
			$data['status'] = $module_info['status'];
		} else {
			$data['status'] = true;
		}
		
		if (isset($this->request->post['caption'])) {
			$data['caption'] = $this->request->post['caption'];
		} elseif (!empty($module_info)) {
			$data['caption'] = $module_info['caption'];
		} else {
			$data['caption'] = true;
		}
		
		if (isset($this->request->post['controls'])) {
			$data['controls'] = $this->request->post['controls'];
		} elseif (!empty($module_info)) {
			$data['controls'] = $module_info['controls'];
		} else {
			$data['controls'] = true;
		}
		
		if (isset($this->request->post['controlsthumb'])) {
			$data['controlsthumb'] = $this->request->post['controlsthumb'];
		} elseif (!empty($module_info)) {
			$data['controlsthumb'] = $module_info['controlsthumb'];
		} else {
			$data['controlsthumb'] = true;
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/responsive_slideshow', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/responsive_slideshow')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}

		if (!$this->request->post['width']) {
			$this->error['width'] = $this->language->get('error_width');
		}

		if (!$this->request->post['height']) {
			$this->error['height'] = $this->language->get('error_height');
		}
		
		if (!$this->request->post['effect']) {
			$this->error['effect'] = $this->language->get('error_effect');
		}

		return !$this->error;
	}
}
