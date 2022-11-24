<?php
class ControllerCommonBlockHomeTop extends Controller {
	public function index() {
//		$this->load->model('design/layout');
//		$this->load->model('extension/module');
		
		if (isset($this->request->get['route'])) {
			$route = (string)$this->request->get['route'];
		} else {
			$route = 'common/home';
		}
		
		$data['modules'] = array();
		
		if ($this->config->get('theme_nice_home_slideshow_status') && 'common/home' == $route) {
			$setting_info['slideshow_id'] = $this->config->get('theme_nice_home_slideshow_id');
			$setting_info['width'] = $this->config->get('theme_nice_home_slideshow_width');
			$setting_info['height'] = $this->config->get('theme_nice_home_slideshow_height');
			
			$setting_info['with_banners'] = false;
			
			if ($this->config->get('theme_nice_home_banner_near_slideshow_status')) {
				$setting_info['with_banners'] = true;

				$setting_info['banners'][1]['image'] = HTTPS_SERVER . 'image/' . $this->config->get('theme_nice_home_banner_1')[$this->config->get('config_language_id')];
				$setting_info['banners'][1]['link'] = $this->config->get('theme_nice_home_banner_1_link')[$this->config->get('config_language_id')];
				$setting_info['banners'][2]['image'] = HTTPS_SERVER . 'image/' . $this->config->get('theme_nice_home_banner_2')[$this->config->get('config_language_id')];
				$setting_info['banners'][2]['link'] = $this->config->get('theme_nice_home_banner_2_link')[$this->config->get('config_language_id')];
			}
			
			$data['modules'][] = $this->load->controller('extension/module/nice_slideshow', $setting_info);
		}

		return $this->load->view('common/block_home_top', $data);
	}
}
