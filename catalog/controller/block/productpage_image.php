<?php
class ControllerBlockProductpageImage extends Controller {
	public function index($data) {
		return $this->load->view('block/productpage_image', $data);
	}	
}
