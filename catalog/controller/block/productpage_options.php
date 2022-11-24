<?php
class ControllerBlockProductpageOptions extends Controller {
	public function index($data) {
		return $this->load->view('block/productpage_options', $data);
	}	
}
