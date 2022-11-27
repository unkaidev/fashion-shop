<?php
class ControllerExtensionModuleOptionfilter extends Controller {
	public function index() {

		if (isset($this->request->get['filter_option_value_id'])) {
			$data['filter_option_value_id'] = $this->request->get['filter_option_value_id'];
			$data['filter_option_value_id'] = str_replace('%2C', ',', $this->request->get['filter_option_value_id']);
		} else {
			$data['filter_option_value_id'] = array();
		}

		$this->load->model('extension/module/optionfilter');

		$data['optionfilters'] = array();

		$optionfilters = $this->model_extension_module_optionfilter->getProductOptions();

		foreach ($optionfilters as $option) {
			$children_data = array();
			$total = 0;

				$children = $this->model_extension_module_optionfilter->getProductOptionss($option['option_id']);

				foreach($children as $child) {
					$filter_data = array('filter_option_value_id' => $child['option_value_id'], 'filter_sub_category' => true);

					$children_data[] = array(
						'option_value_id' => $child['option_value_id'],
						'name' => $child['name'] . ' (' . $this->model_extension_module_optionfilter->getTotalProductOptionss($filter_data) . ')',
						'href' => $this->url->link('product/category', 'option_value_id='.$child['option_value_id'])
					);
					$total += $this->model_extension_module_optionfilter->getTotalProductOptionss($filter_data);
				}

			$filter_data = array(
				'filter_option_id'  => $option['option_id'],
			);

			$data['optionfilters'][] = array(
				'option_id' => $option['option_id'],
				'name'        => $option['name'] . '(' . $total . ')',
				'children'    => $children_data,
				'href'        => $this->url->link('product/category', 'path=' . $option['option_id'])
			);
		}

		return $this->load->view('extension/module/optionfilter', $data);
	}
}