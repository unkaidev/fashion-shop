<?php
class ControllerExtensionModuleResponsiveSlideshow extends Controller {
	public function index($setting) {
		static $module = 0;

		$this->load->model('design/banner');
		$this->load->model('tool/image');

		$this->document->addStyle('catalog/view/javascript/jquery/responsive-slider/style.css');

		$data['banners'] = array();

		$results = $this->model_design_banner->getBanner($setting['banner_id']);

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title' => $result['title'],
					'link'  => $result['link'],
					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
				);
			}
		}
		
		$data['effect'] = isset($setting['effect']) ?  $setting['effect'] : '';
		$data['duration'] = isset($setting['duration']) ?  $setting['duration'] : '';
		$data['duration1'] = isset($setting['duration1']) ?  $setting['duration1'] : '';
		$data['delay'] = isset($setting['delay']) ?  $setting['delay'] : '';
		$data['delay1'] = isset($setting['delay1']) ?  $setting['delay1'] : '';
		$data['autoplay'] = isset($setting['autoplay']) ?  $setting['autoplay'] : '';
		$data['playpause'] = isset($setting['playpause']) ?  $setting['playpause'] : '';
		$data['stoponhover'] = isset($setting['stoponhover']) ?  $setting['stoponhover'] : '';
		$data['loop'] = isset($setting['loop']) ?  $setting['loop'] : '';
		$data['caption'] = isset($setting['caption']) ?  $setting['caption'] : '';
		$data['controls'] = isset($setting['controls']) ?  $setting['controls'] : '';
		$data['controlsthumb'] = isset($setting['controlsthumb']) ?  $setting['controlsthumb'] : '';
		
		if($data['autoplay'] == 1){
			$setting['autoplay'] = 'true';
		} else {
			$setting['autoplay'] = 'false';
		}
		
		if($data['playpause'] == 1){
			$setting['playpause'] = 'true';
		} else {
			$setting['playpause'] = 'false';
		}
		
		if($data['stoponhover'] == 1){
			$setting['stoponhover'] = 'true';
		} else {
			$setting['stoponhover'] = 'false';
		}
		
		if($data['loop'] == 1){
			$setting['loop'] = 'true';
		} else {
			$setting['loop'] = 'false';
		}
		
		if($data['caption'] == 1){
			$setting['caption'] = 'true';
		} else {
			$setting['caption'] = 'false';
		}
		
		if($data['controls'] == 1){
			$setting['controls'] = 'true';
		} else {
			$setting['controls'] = 'false';
		}
		
		if($data['controlsthumb'] == 1){
			$setting['controlsthumb'] = 'true';
		} else {
			$setting['controlsthumb'] = 'false';
		}
		
		$data['module'] = $module++;
		
		return $this->load->view('extension/module/responsive_slideshow', $data);

	}
}
