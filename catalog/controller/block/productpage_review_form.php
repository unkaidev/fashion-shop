<?php
class ControllerBlockProductpageReviewForm extends Controller {
	public function index($data) {		
		return $this->load->view('block/productpage_review_form', $data);
	}	
}
