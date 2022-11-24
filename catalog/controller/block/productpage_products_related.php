<?php
class ControllerBlockProductpageProductsRelated extends Controller {
	public function index($data) {
		return $this->load->view('block/productpage_products_related', $data);
	}	
}
