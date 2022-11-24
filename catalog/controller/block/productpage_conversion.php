<?php
class ControllerBlockProductpageConversion extends Controller {
	public function index($data) {		
		$data['block_options'] = $this->load->controller('block/productpage_options', $data);
		
		return $this->load->view('block/productpage_conversion', $data);
	}	
}
