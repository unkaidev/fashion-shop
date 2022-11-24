<?php
class ControllerCommonMenuTop extends Controller {
	public function index() {
		$this->load->language('common/menu');
		
		$this->load->language('extension/theme/nice'); // Nice Theme

		// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		if (!$this->config->get('theme_nice_menu_top_status')) {
			return false;
		}
		
		$language_id = $this->config->get('config_language_id');

		if ($this->config->get('theme_nice_menu_top_item')) {
			$menu_items = $this->config->get('theme_nice_menu_top_item');
		} else {
			$menu_items = array();
		}

		if (count($menu_items) > 0) {
			foreach ($menu_items as $key => $value) {
				$sorted_menu_items[$key] = $value['sort_order'];
			}
			array_multisort($sorted_menu_items, SORT_ASC, $menu_items);
		}

		$data['menu_items'] = array();

		foreach ($menu_items as $item) {
			$data['menu_items'][] = array(
					'title' => html_entity_decode($item['title'][$language_id], ENT_QUOTES, 'UTF-8'),
					'href' => $item['link'][$language_id],
					'sort' => $item['sort_order'],
			);
		}
//		
//		echo "<pre>";
//		print_r($data['menu_items']);
//		echo "</pre>";		

		return $this->load->view('common/menu_top	', $data);
	}
}
