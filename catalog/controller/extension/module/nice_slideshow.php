<?php
class ControllerExtensionModuleNiceSlideshow extends Controller {
	public function index($setting) {
		$this->load->model('extension/module/nice_slideshow');
		$this->load->model('tool/image');

		$this->document->addStyle('catalog/view/javascript/jquery/swiper/css/swiper.min.css');
		$this->document->addScript('catalog/view/javascript/jquery/swiper/js/swiper.jquery.min.js');
		
		$data['slideshows'] = array();

		$results = $this->model_extension_module_nice_slideshow->getSlideshow($setting['slideshow_id']);

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['slideshows'][] = array(
					'title' => $result['title'],
					'link'  => $result['link'],
					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
				);
			}
		}
		
		$data['width'] = $setting['width'];
		$data['height'] = $setting['height'];

		$data['with_banners'] = false;
		
		if ($setting['with_banners']) {
			$data['with_banners'] = true;
			$data['banners'] = $setting['banners'];
		}

		return $this->load->view('extension/module/nice_slideshow', $data);
	}
}