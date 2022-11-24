<?php

ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

class ControllerExtensionThemeNice extends Controller {
	private $error = array();
	
	public function install() {
		$this->load->model('user/user_group');
		
		# Install required modules
		
		// Prevent error with modules used like: unknown fields of oc_nice_slidehow table
		$this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'extension/module/nice_slideshow');
		$this->model_user_user_group->addPermission($this->user->getGroupId(), 'modify', 'extension/module/nice_slideshow');
		
		$this->load->model('extension/module/nice_slideshow');
		$this->model_extension_module_nice_slideshow->install();
		
		// Nice MegaMenu - it is part of theme so it is necessary to install from start
		$this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'extension/module/nice_megamenu');
		$this->model_user_user_group->addPermission($this->user->getGroupId(), 'modify', 'extension/module/nice_megamenu');
		
		$this->load->model('extension/module/nice_megamenu');
		$this->model_extension_module_nice_megamenu->install();
	}

	public function index() {
		$this->load->language('extension/theme/nice');

		$this->document->setTitle(strip_tags($this->language->get('heading_title')));

		$this->load->model('setting/setting');
		
		$this->load->model('tool/image');

		$this->load->model('localisation/language');
		
		$this->document->addStyle('view/stylesheet/nice-theme.css');
		
		$this->document->addStyle('view/javascript/spectrum-2.0.8/spectrum.min.css');
		$this->document->addScript('view/javascript/spectrum-2.0.8/spectrum.min.js');		


		$languages = $this->model_localisation_language->getLanguages();
		
		$language_id = $this->config->get('config_language_id');
		
		$data['languages'] = $languages;
		
		$data['language_id'] = $language_id;
		
		$empty_array_with_languages_keys = [];
		foreach ($data['languages'] as $language) {
			$empty_arra_with_languages_keys[] = $language['language_id'] = '';
		}
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('theme_nice', $this->request->post, $this->request->get['store_id']);
			
			$this->saveCss();

			//$this->session->data['success'] = $this->language->get('text_success');

			//$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=theme', true));
			
			$data['success'] = $this->language->get('text_success');
		}
		
		$data['user_token'] = $this->session->data['user_token'];

		$data['heading_title'] = strip_tags($this->language->get('heading_title'));
		
		$data['text_heading_title'] = strip_tags($this->language->get('text_heading_title'));
		
		$data['error'] = $this->error;
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=theme', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => strip_tags($this->language->get('heading_title')),
			'href' => $this->url->link('extension/theme/nice', 'user_token=' . $this->session->data['user_token'] . '&store_id=' . $this->request->get['store_id'], true)
		);

		$data['action'] = $this->url->link('extension/theme/nice', 'user_token=' . $this->session->data['user_token'] . '&store_id=' . $this->request->get['store_id'], true);

		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=theme', true);

		
		
		### DATA
		if (isset($this->request->get['store_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$setting_info = $this->model_setting_setting->getSetting('theme_nice', $this->request->get['store_id']);
		}		

		


		/* Tab Basic Settings
		 ------------------------------------------------------------------------ */
		if (isset($this->request->post['theme_nice_directory'])) {
			$data['theme_nice_directory'] = $this->request->post['theme_nice_directory'];
		} elseif (isset($setting_info['theme_nice_directory'])) {
			$data['theme_nice_directory'] = $setting_info['theme_nice_directory'];
		} else {
			$data['theme_nice_directory'] = 'nice';
		}		

		$data['directories'] = array();

		$directories = glob(DIR_CATALOG . 'view/theme/*', GLOB_ONLYDIR);

		foreach ($directories as $directory) {
			$data['directories'][] = basename($directory);
		}
		
		if (isset($this->request->post['theme_nice_product_limit'])) {
			$data['theme_nice_product_limit'] = $this->request->post['theme_nice_product_limit'];
		} elseif (isset($setting_info['theme_nice_product_limit'])) {
			$data['theme_nice_product_limit'] = $setting_info['theme_nice_product_limit'];
		} else {
			$data['theme_nice_product_limit'] = 15;
		}		
		
		if (isset($this->request->post['theme_nice_status'])) {
			$data['theme_nice_status'] = $this->request->post['theme_nice_status'];
		} elseif (isset($setting_info['theme_nice_status'])) {
			$data['theme_nice_status'] = $setting_info['theme_nice_status'];
		} else {
			$data['theme_nice_status'] = '';
		}
		
		if (isset($this->request->post['theme_nice_product_description_length'])) {
			$data['theme_nice_product_description_length'] = $this->request->post['theme_nice_product_description_length'];
		} elseif (isset($setting_info['theme_nice_product_description_length'])) {
			$data['theme_nice_product_description_length'] = $setting_info['theme_nice_product_description_length'];
		} else {
			$data['theme_nice_product_description_length'] = 100;
		}
		
		if (isset($this->request->post['theme_nice_image_category_width'])) {
			$data['theme_nice_image_category_width'] = $this->request->post['theme_nice_image_category_width'];
		} elseif (isset($setting_info['theme_nice_image_category_width'])) {
			$data['theme_nice_image_category_width'] = $setting_info['theme_nice_image_category_width'];
		} else {
			$data['theme_nice_image_category_width'] = 80;		
		}
		
		if (isset($this->request->post['theme_nice_image_category_height'])) {
			$data['theme_nice_image_category_height'] = $this->request->post['theme_nice_image_category_height'];
		} elseif (isset($setting_info['theme_nice_image_category_height'])) {
			$data['theme_nice_image_category_height'] = $setting_info['theme_nice_image_category_height'];
		} else {
			$data['theme_nice_image_category_height'] = 80;
		}
		
		if (isset($this->request->post['theme_nice_image_manufacturer_width'])) {
			$data['theme_nice_image_manufacturer_width'] = $this->request->post['theme_nice_image_manufacturer_width'];
		} elseif (isset($setting_info['theme_nice_image_manufacturer_width'])) {
			$data['theme_nice_image_manufacturer_width'] = $setting_info['theme_nice_image_manufacturer_width'];
		} else {
			$data['theme_nice_image_manufacturer_width'] = 80;		
		}
		
		if (isset($this->request->post['theme_nice_image_manufacturer_height'])) {
			$data['theme_nice_image_manufacturer_height'] = $this->request->post['theme_nice_image_manufacturer_height'];
		} elseif (isset($setting_info['theme_nice_image_manufacturer_height'])) {
			$data['theme_nice_image_manufacturer_height'] = $setting_info['theme_nice_image_manufacturer_height'];
		} else {
			$data['theme_nice_image_manufacturer_height'] = 80;
		}
		
		if (isset($this->request->post['theme_nice_image_thumb_width'])) {
			$data['theme_nice_image_thumb_width'] = $this->request->post['theme_nice_image_thumb_width'];
		} elseif (isset($setting_info['theme_nice_image_thumb_width'])) {
			$data['theme_nice_image_thumb_width'] = $setting_info['theme_nice_image_thumb_width'];
		} else {
			$data['theme_nice_image_thumb_width'] = 228;
		}
		
		if (isset($this->request->post['theme_nice_image_thumb_height'])) {
			$data['theme_nice_image_thumb_height'] = $this->request->post['theme_nice_image_thumb_height'];
		} elseif (isset($setting_info['theme_nice_image_thumb_height'])) {
			$data['theme_nice_image_thumb_height'] = $setting_info['theme_nice_image_thumb_height'];
		} else {
			$data['theme_nice_image_thumb_height'] = 228;		
		}
		
		if (isset($this->request->post['theme_nice_image_popup_width'])) {
			$data['theme_nice_image_popup_width'] = $this->request->post['theme_nice_image_popup_width'];
		} elseif (isset($setting_info['theme_nice_image_popup_width'])) {
			$data['theme_nice_image_popup_width'] = $setting_info['theme_nice_image_popup_width'];
		} else {
			$data['theme_nice_image_popup_width'] = 500;
		}
		
		if (isset($this->request->post['theme_nice_image_popup_height'])) {
			$data['theme_nice_image_popup_height'] = $this->request->post['theme_nice_image_popup_height'];
		} elseif (isset($setting_info['theme_nice_image_popup_height'])) {
			$data['theme_nice_image_popup_height'] = $setting_info['theme_nice_image_popup_height'];
		} else {
			$data['theme_nice_image_popup_height'] = 500;
		}
		
		if (isset($this->request->post['theme_nice_image_product_width'])) {
			$data['theme_nice_image_product_width'] = $this->request->post['theme_nice_image_product_width'];
		} elseif (isset($setting_info['theme_nice_image_product_width'])) {
			$data['theme_nice_image_product_width'] = $setting_info['theme_nice_image_product_width'];
		} else {
			$data['theme_nice_image_product_width'] = 228;
		}
		
		if (isset($this->request->post['theme_nice_image_product_height'])) {
			$data['theme_nice_image_product_height'] = $this->request->post['theme_nice_image_product_height'];
		} elseif (isset($setting_info['theme_nice_image_product_height'])) {
			$data['theme_nice_image_product_height'] = $setting_info['theme_nice_image_product_height'];
		} else {
			$data['theme_nice_image_product_height'] = 228;
		}
		
		if (isset($this->request->post['theme_nice_image_additional_width'])) {
			$data['theme_nice_image_additional_width'] = $this->request->post['theme_nice_image_additional_width'];
		} elseif (isset($setting_info['theme_nice_image_additional_width'])) {
			$data['theme_nice_image_additional_width'] = $setting_info['theme_nice_image_additional_width'];
		} else {
			$data['theme_nice_image_additional_width'] = 74;
		}
		
		if (isset($this->request->post['theme_nice_image_additional_height'])) {
			$data['theme_nice_image_additional_height'] = $this->request->post['theme_nice_image_additional_height'];
		} elseif (isset($setting_info['theme_nice_image_additional_height'])) {
			$data['theme_nice_image_additional_height'] = $setting_info['theme_nice_image_additional_height'];
		} else {
			$data['theme_nice_image_additional_height'] = 74;
		}
		
		if (isset($this->request->post['theme_nice_image_related_width'])) {
			$data['theme_nice_image_related_width'] = $this->request->post['theme_nice_image_related_width'];
		} elseif (isset($setting_info['theme_nice_image_related_width'])) {
			$data['theme_nice_image_related_width'] = $setting_info['theme_nice_image_related_width'];
		} else {
			$data['theme_nice_image_related_width'] = 80;
		}
		
		if (isset($this->request->post['theme_nice_image_related_height'])) {
			$data['theme_nice_image_related_height'] = $this->request->post['theme_nice_image_related_height'];
		} elseif (isset($setting_info['theme_nice_image_related_height'])) {
			$data['theme_nice_image_related_height'] = $setting_info['theme_nice_image_related_height'];
		} else {
			$data['theme_nice_image_related_height'] = 80;
		}
		
		if (isset($this->request->post['theme_nice_image_compare_width'])) {
			$data['theme_nice_image_compare_width'] = $this->request->post['theme_nice_image_compare_width'];
		} elseif (isset($setting_info['theme_nice_image_compare_width'])) {
			$data['theme_nice_image_compare_width'] = $setting_info['theme_nice_image_compare_width'];
		} else {
			$data['theme_nice_image_compare_width'] = 90;
		}
		
		if (isset($this->request->post['theme_nice_image_compare_height'])) {
			$data['theme_nice_image_compare_height'] = $this->request->post['theme_nice_image_compare_height'];
		} elseif (isset($setting_info['theme_nice_image_compare_height'])) {
			$data['theme_nice_image_compare_height'] = $setting_info['theme_nice_image_compare_height'];
		} else {
			$data['theme_nice_image_compare_height'] = 90;
		}
		
		if (isset($this->request->post['theme_nice_image_wishlist_width'])) {
			$data['theme_nice_image_wishlist_width'] = $this->request->post['theme_nice_image_wishlist_width'];
		} elseif (isset($setting_info['theme_nice_image_wishlist_width'])) {
			$data['theme_nice_image_wishlist_width'] = $setting_info['theme_nice_image_wishlist_width'];
		} else {
			$data['theme_nice_image_wishlist_width'] = 47;
		}
		
		if (isset($this->request->post['theme_nice_image_wishlist_height'])) {
			$data['theme_nice_image_wishlist_height'] = $this->request->post['theme_nice_image_wishlist_height'];
		} elseif (isset($setting_info['theme_nice_image_wishlist_height'])) {
			$data['theme_nice_image_wishlist_height'] = $setting_info['theme_nice_image_wishlist_height'];
		} else {
			$data['theme_nice_image_wishlist_height'] = 47;
		}
		
		if (isset($this->request->post['theme_nice_image_cart_width'])) {
			$data['theme_nice_image_cart_width'] = $this->request->post['theme_nice_image_cart_width'];
		} elseif (isset($setting_info['theme_nice_image_cart_width'])) {
			$data['theme_nice_image_cart_width'] = $setting_info['theme_nice_image_cart_width'];
		} else {
			$data['theme_nice_image_cart_width'] = 47;
		}
		
		if (isset($this->request->post['theme_nice_image_cart_height'])) {
			$data['theme_nice_image_cart_height'] = $this->request->post['theme_nice_image_cart_height'];
		} elseif (isset($setting_info['theme_nice_image_cart_height'])) {
			$data['theme_nice_image_cart_height'] = $setting_info['theme_nice_image_cart_height'];
		} else {
			$data['theme_nice_image_cart_height'] = 47;
		}
		
		if (isset($this->request->post['theme_nice_image_location_width'])) {
			$data['theme_nice_image_location_width'] = $this->request->post['theme_nice_image_location_width'];
		} elseif (isset($setting_info['theme_nice_image_location_width'])) {
			$data['theme_nice_image_location_width'] = $setting_info['theme_nice_image_location_width'];
		} else {
			$data['theme_nice_image_location_width'] = 268;
		}
		
		if (isset($this->request->post['theme_nice_image_location_height'])) {
			$data['theme_nice_image_location_height'] = $this->request->post['theme_nice_image_location_height'];
		} elseif (isset($setting_info['theme_nice_image_location_height'])) {
			$data['theme_nice_image_location_height'] = $setting_info['theme_nice_image_location_height'];
		} else {
			$data['theme_nice_image_location_height'] = 50;
		}
		

		
		
		/* Tab Colors
		 ------------------------------------------------------------------------ */
		if (isset($this->request->post['theme_nice_color_primary__lighter_3'])) {
			$data['theme_nice_color_primary__lighter_3'] = $this->request->post['theme_nice_color_primary__lighter_3'];
		} elseif (isset($setting_info['theme_nice_color_primary__lighter_3'])) {
			$data['theme_nice_color_primary__lighter_3'] = $setting_info['theme_nice_color_primary__lighter_3'];
		} else {
			$data['theme_nice_color_primary__lighter_3'] = '#9798c6';
		}
		
		if (isset($this->request->post['theme_nice_color_primary__lighter_2'])) {
			$data['theme_nice_color_primary__lighter_2'] = $this->request->post['theme_nice_color_primary__lighter_2'];
		} elseif (isset($setting_info['theme_nice_color_primary__lighter_2'])) {
			$data['theme_nice_color_primary__lighter_2'] = $setting_info['theme_nice_color_primary__lighter_2'];
		} else {
			$data['theme_nice_color_primary__lighter_2'] = '#8788bd';
		}
		
		if (isset($this->request->post['theme_nice_color_primary__lighter_1'])) {
			$data['theme_nice_color_primary__lighter_1'] = $this->request->post['theme_nice_color_primary__lighter_1'];
		} elseif (isset($setting_info['theme_nice_color_primary__lighter_1'])) {
			$data['theme_nice_color_primary__lighter_1'] = $setting_info['theme_nice_color_primary__lighter_1'];
		} else {
			$data['theme_nice_color_primary__lighter_1'] = '#7677b4';
		}
		
		if (isset($this->request->post['theme_nice_color_primary'])) {
			$data['theme_nice_color_primary'] = $this->request->post['theme_nice_color_primary'];
		} elseif (isset($setting_info['theme_nice_color_primary'])) {
			$data['theme_nice_color_primary'] = $setting_info['theme_nice_color_primary'];
		} else {
			$data['theme_nice_color_primary'] = '#6667ab';
		}
		
		if (isset($this->request->post['theme_nice_color_primary__darker_1'])) {
			$data['theme_nice_color_primary__darker_1'] = $this->request->post['theme_nice_color_primary__darker_1'];
		} elseif (isset($setting_info['theme_nice_color_primary__darker_1'])) {
			$data['theme_nice_color_primary__darker_1'] = $setting_info['theme_nice_color_primary__darker_1'];
		} else {
			$data['theme_nice_color_primary__darker_1'] = '#5859a0';
		}
		
		if (isset($this->request->post['theme_nice_color_primary__darker_2'])) {
			$data['theme_nice_color_primary__darker_2'] = $this->request->post['theme_nice_color_primary__darker_2'];
		} elseif (isset($setting_info['theme_nice_color_primary__darker_2'])) {
			$data['theme_nice_color_primary__darker_2'] = $setting_info['theme_nice_color_primary__darker_2'];
		} else {
			$data['theme_nice_color_primary__darker_2'] = '#4f508f';
		}
		
		if (isset($this->request->post['theme_nice_color_primary__darker_3'])) {
			$data['theme_nice_color_primary__darker_3'] = $this->request->post['theme_nice_color_primary__darker_3'];
		} elseif (isset($setting_info['theme_nice_color_primary__darker_3'])) {
			$data['theme_nice_color_primary__darker_3'] = $setting_info['theme_nice_color_primary__darker_3'];
		} else {
			$data['theme_nice_color_primary__darker_3'] = '#5859a0';
		}
		
		if (isset($this->request->post['theme_nice_color_accent__lighter_3'])) {
			$data['theme_nice_color_accent__lighter_3'] = $this->request->post['theme_nice_color_accent__lighter_3'];
		} elseif (isset($setting_info['theme_nice_color_accent__lighter_3'])) {
			$data['theme_nice_color_accent__lighter_3'] = $setting_info['theme_nice_color_accent__lighter_3'];
		} else {
			$data['theme_nice_color_accent__lighter_3'] = '#9798c6';
		}
		
		if (isset($this->request->post['theme_nice_color_accent__lighter_2'])) {
			$data['theme_nice_color_accent__lighter_2'] = $this->request->post['theme_nice_color_accent__lighter_2'];
		} elseif (isset($setting_info['theme_nice_color_accent__lighter_2'])) {
			$data['theme_nice_color_accent__lighter_2'] = $setting_info['theme_nice_color_accent__lighter_2'];
		} else {
			$data['theme_nice_color_accent__lighter_2'] = '#8788bd';
		}
		
		if (isset($this->request->post['theme_nice_color_accent__lighter_1'])) {
			$data['theme_nice_color_accent__lighter_1'] = $this->request->post['theme_nice_color_accent__lighter_1'];
		} elseif (isset($setting_info['theme_nice_color_accent__lighter_1'])) {
			$data['theme_nice_color_accent__lighter_1'] = $setting_info['theme_nice_color_accent__lighter_1'];
		} else {
			$data['theme_nice_color_accent__lighter_1'] = '#7677b4';
		}
		
		if (isset($this->request->post['theme_nice_color_accent'])) {
			$data['theme_nice_color_accent'] = $this->request->post['theme_nice_color_accent'];
		} elseif (isset($setting_info['theme_nice_color_accent'])) {
			$data['theme_nice_color_accent'] = $setting_info['theme_nice_color_accent'];
		} else {
			$data['theme_nice_color_accent'] = '#ea435d';
		}
		
		if (isset($this->request->post['theme_nice_color_accent__darker_1'])) {
			$data['theme_nice_color_accent__darker_1'] = $this->request->post['theme_nice_color_accent__darker_1'];
		} elseif (isset($setting_info['theme_nice_color_accent__darker_1'])) {
			$data['theme_nice_color_accent__darker_1'] = $setting_info['theme_nice_color_accent__darker_1'];
		} else {
			$data['theme_nice_color_accent__darker_1'] = '#5859a0';
		}
		
		if (isset($this->request->post['theme_nice_color_accent__darker_2'])) {
			$data['theme_nice_color_accent__darker_2'] = $this->request->post['theme_nice_color_accent__darker_2'];
		} elseif (isset($setting_info['theme_nice_color_accent__darker_2'])) {
			$data['theme_nice_color_accent__darker_2'] = $setting_info['theme_nice_color_accent__darker_2'];
		} else {
			$data['theme_nice_color_accent__darker_2'] = '#4f508f';
		}
		
		if (isset($this->request->post['theme_nice_color_accent__darker_3'])) {
			$data['theme_nice_color_accent__darker_3'] = $this->request->post['theme_nice_color_accent__darker_3'];
		} elseif (isset($setting_info['theme_nice_color_accent__darker_3'])) {
			$data['theme_nice_color_accent__darker_3'] = $setting_info['theme_nice_color_accent__darker_3'];
		} else {
			$data['theme_nice_color_accent__darker_3'] = '#5859a0';
		}
		
		if (isset($this->request->post['theme_nice_color_footer_bg'])) {
			$data['theme_nice_color_footer_bg'] = $this->request->post['theme_nice_color_footer_bg'];
		} elseif (isset($setting_info['theme_nice_color_footer_bg'])) {
			$data['theme_nice_color_footer_bg'] = $setting_info['theme_nice_color_footer_bg'];
		} else {
			$data['theme_nice_color_footer_bg'] = '#525a5d';
		}
		
		
		
		
		/* Tab Menu Top
		 ------------------------------------------------------------------------ */
		if (isset($this->request->post['theme_nice_menu_top_status'])) {
			$data['theme_nice_menu_top_status'] = $this->request->post['theme_nice_menu_top_status'];
		} elseif (isset($setting_info['theme_nice_menu_top_status'])) {
			$data['theme_nice_menu_top_status'] = $setting_info['theme_nice_menu_top_status'];
		} else {
			$data['theme_nice_menu_top_status'] = false;
		}
		
		if (isset($this->request->post['theme_nice_menu_top_item'])) {
			$results = $this->request->post['theme_nice_menu_top_item'];
		} elseif (isset($setting_info['theme_nice_menu_top_item'])) {
			$results = $setting_info['theme_nice_menu_top_item'];
		} else {
			$results = array();
		}

		$data['theme_nice_menu_top_items'] = array();
		
		foreach ($results as $result) {
			$data['theme_nice_menu_top_items'][] = array(
				'title' => $result['title'],
				'link'  => $result['link'],
				'sort_order'  => $result['sort_order']
			);	
		}

			
			
		/* Tab Page Home
		 ------------------------------------------------------------------------ */
		$this->load->model('extension/module/nice_slideshow');
		$data['slideshows'] = $this->model_extension_module_nice_slideshow->getSlideshows();
		$data['nice_slideshow_url'] = $this->url->link('extension/module/nice_slideshow', 'user_token=' . $this->session->data['user_token'], true);
		$data['see_nice_slideshows'] = sprintf($this->language->get('text_nice_slideshow_anchor'), $data['nice_slideshow_url']);
		
		if (isset($this->request->post['theme_nice_home_slideshow_status'])) {
			$data['theme_nice_home_slideshow_status'] = $this->request->post['theme_nice_home_slideshow_status'];
		} elseif (isset($setting_info['theme_nice_home_slideshow_status'])) {
			$data['theme_nice_home_slideshow_status'] = $setting_info['theme_nice_home_slideshow_status'];
		} else {
			$data['theme_nice_home_slideshow_status'] = false;
		}
		
		if (isset($this->request->post['theme_nice_home_slideshow_id'])) {
			$data['theme_nice_home_slideshow_id'] = $this->request->post['theme_nice_home_slideshow_id'];
		} elseif (isset($setting_info['theme_nice_home_slideshow_id'])) {
			$data['theme_nice_home_slideshow_id'] = $setting_info['theme_nice_home_slideshow_id'];
		} else {
			$data['theme_nice_home_slideshow_id'] = 0;
		}
		
		if (isset($this->request->post['theme_nice_home_slideshow_width'])) {
			$data['theme_nice_home_slideshow_width'] = $this->request->post['theme_nice_home_slideshow_width'];
		} elseif (isset($setting_info['theme_nice_home_slideshow_width'])) {
			$data['theme_nice_home_slideshow_width'] = $setting_info['theme_nice_home_slideshow_width'];
		} else {
			$data['theme_nice_home_slideshow_width'] = 1370;
		}
		
		if (isset($this->request->post['theme_nice_home_slideshow_height'])) {
			$data['theme_nice_home_slideshow_height'] = $this->request->post['theme_nice_home_slideshow_height'];
		} elseif (isset($setting_info['theme_nice_home_slideshow_height'])) {
			$data['theme_nice_home_slideshow_height'] = $setting_info['theme_nice_home_slideshow_height'];
		} else {
			$data['theme_nice_home_slideshow_height'] = 570;
		}
		
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		
		if (isset($this->request->post['theme_nice_home_banner_near_slideshow_status'])) {
			$data['theme_nice_home_banner_near_slideshow_status'] = $this->request->post['theme_nice_home_banner_near_slideshow_status'];
		} elseif (isset($setting_info['theme_nice_home_banner_near_slideshow_status'])) {
			$data['theme_nice_home_banner_near_slideshow_status'] = $setting_info['theme_nice_home_banner_near_slideshow_status'];
		} else {
			$data['theme_nice_home_banner_near_slideshow_status'] = false;
		}

		if (isset($this->request->post['theme_nice_home_banner_1_link'])) {
			$data['theme_nice_home_banner_1_link'] = $this->request->post['theme_nice_home_banner_1_link'];
		} elseif (isset($setting_info['theme_nice_home_banner_1_link'])) {
			$data['theme_nice_home_banner_1_link'] = $setting_info['theme_nice_home_banner_1_link'];
		} else {
			$data['theme_nice_home_banner_1_link'] = $empty_array_with_languages_keys;
		}
		
		if (isset($this->request->post['theme_nice_home_banner_2_link'])) {
			$data['theme_nice_home_banner_2_link'] = $this->request->post['theme_nice_home_banner_2_link'];
		} elseif (isset($setting_info['theme_nice_home_banner_2_link'])) {
			$data['theme_nice_home_banner_2_link'] = $setting_info['theme_nice_home_banner_2_link'];
		} else {
			$data['theme_nice_home_banner_2_link'] = $empty_array_with_languages_keys;
		}
		
		foreach ($data['languages'] as $language) {
			if (isset($this->request->post['theme_nice_home_banner_1'][$language['language_id']]) && is_file(DIR_IMAGE . $this->request->post['theme_nice_home_banner_1'][$language['language_id']])) {
				$data['theme_nice_home_banner_1'][$language['language_id']]	= $this->request->post['theme_nice_home_banner_1'][$language['language_id']];
				$data['thumb_home_banners_1'][$language['language_id']] = $this->model_tool_image->resize($this->request->post['theme_nice_home_banner_1'][$language['language_id']], 100, 100);
			} elseif (!empty($setting_info) && is_file(DIR_IMAGE . $setting_info['theme_nice_home_banner_1'][$language['language_id']])) {
				$data['theme_nice_home_banner_1'][$language['language_id']] = $setting_info['theme_nice_home_banner_1'][$language['language_id']];
				$data['thumb_home_banners_1'][$language['language_id']] = $this->model_tool_image->resize($setting_info['theme_nice_home_banner_1'][$language['language_id']], 100, 100);
			} else {
				$data['theme_nice_home_banner_1'][$language['language_id']]	 = '';
				$data['thumb_home_banners_1'][$language['language_id']] = $this->model_tool_image->resize('no_image.png', 100, 100);
			}		

			if (isset($this->request->post['theme_nice_home_banner_2'][$language['language_id']]) && is_file(DIR_IMAGE . $this->request->post['theme_nice_home_banner_2'][$language['language_id']])) {
				$data['theme_nice_home_banner_2'][$language['language_id']]	= $this->request->post['theme_nice_home_banner_2'][$language['language_id']];
				$data['thumb_home_banners_2'][$language['language_id']] = $this->model_tool_image->resize($this->request->post['theme_nice_home_banner_2'][$language['language_id']], 100, 100);
			} elseif (!empty($setting_info) && is_file(DIR_IMAGE . $setting_info['theme_nice_home_banner_2'][$language['language_id']])) {
				$data['theme_nice_home_banner_2'][$language['language_id']] = $setting_info['theme_nice_home_banner_2'][$language['language_id']];
				$data['thumb_home_banners_2'][$language['language_id']] = $this->model_tool_image->resize($setting_info['theme_nice_home_banner_2'][$language['language_id']], 100, 100);
			} else {
				$data['theme_nice_home_banner_2'][$language['language_id']]	 = '';
				$data['thumb_home_banners_2'][$language['language_id']] = $this->model_tool_image->resize('no_image.png', 100, 100);
			}
		}
		
		
		
		
		/* Tab Page Product
		 ------------------------------------------------------------------------ */
		if (isset($this->request->post['theme_nice_page_product_shortdescritipon_length'])) {
			$data['theme_nice_page_product_shortdescritipon_length'] = $this->request->post['theme_nice_page_product_shortdescritipon_length'];
		} elseif (isset($setting_info['theme_nice_page_product_shortdescritipon_length'])) {
			$data['theme_nice_page_product_shortdescritipon_length'] = $setting_info['theme_nice_page_product_shortdescritipon_length'];
		} else {
			$data['theme_nice_page_product_shortdescritipon_length'] = 255;		
		}
		
		
		
		
		/* Product List
		 ------------------------------------------------------------------------ */
		if (isset($this->request->post['theme_nice_productlist_image_margins'])) {
			$data['theme_nice_productlist_image_margins'] = $this->request->post['theme_nice_productlist_image_margins'];
		} elseif (isset($setting_info['theme_nice_productlist_image_margins'])) {
			$data['theme_nice_productlist_image_margins'] = $setting_info['theme_nice_productlist_image_margins'];
		} else {
			$data['theme_nice_productlist_image_margins'] = false;
		}
		
		if (isset($this->request->post['theme_nice_productlist_description'])) {
			$data['theme_nice_productlist_description'] = $this->request->post['theme_nice_productlist_description'];
		} elseif (isset($setting_info['theme_nice_productlist_description'])) {
			$data['theme_nice_productlist_description'] = $setting_info['theme_nice_productlist_description'];
		} else {
			$data['theme_nice_productlist_description'] = false;
		}
		
		if (isset($this->request->post['theme_nice_productlist_description_on_mobile'])) {
			$data['theme_nice_productlist_description_on_mobile'] = $this->request->post['theme_nice_productlist_description_on_mobile'];
		} elseif (isset($setting_info['theme_nice_productlist_description_on_mobile'])) {
			$data['theme_nice_productlist_description_on_mobile'] = $setting_info['theme_nice_productlist_description_on_mobile'];
		} else {
			$data['theme_nice_productlist_description_on_mobile'] = false;
		}
		
		if (isset($this->request->post['theme_nice_productlist_name_font_weight'])) {
			$data['theme_nice_productlist_name_font_weight'] = $this->request->post['theme_nice_productlist_name_font_weight'];
		} elseif (isset($setting_info['theme_nice_productlist_name_font_weight'])) {
			$data['theme_nice_productlist_name_font_weight'] = $setting_info['theme_nice_productlist_name_font_weight'];
		} else {
			$data['theme_nice_productlist_name_font_weight'] = 'bold';
		}
		
		if (isset($this->request->post['theme_nice_productlist_price_font_weight'])) {
			$data['theme_nice_productlist_price_font_weight'] = $this->request->post['theme_nice_productlist_price_font_weight'];
		} elseif (isset($setting_info['theme_nice_productlist_price_font_weight'])) {
			$data['theme_nice_productlist_price_font_weight'] = $setting_info['theme_nice_productlist_price_font_weight'];
		} else {
			$data['theme_nice_productlist_price_font_weight'] = 'regular';
		}
		
		if (isset($this->request->post['theme_nice_productlist_grid_hover_effect'])) {
			$data['theme_nice_productlist_grid_hover_effect'] = $this->request->post['theme_nice_productlist_grid_hover_effect'];
		} elseif (isset($setting_info['theme_nice_productlist_grid_hover_effect'])) {
			$data['theme_nice_productlist_grid_hover_effect'] = $setting_info['theme_nice_productlist_grid_hover_effect'];
		} else {
			$data['theme_nice_productlist_grid_hover_effect'] = false;
		}
		
		if (isset($this->request->post['theme_nice_productlist_cols_on_mobile'])) {
			$data['theme_nice_productlist_cols_on_mobile'] = $this->request->post['theme_nice_productlist_cols_on_mobile'];
		} elseif (isset($setting_info['theme_nice_productlist_cols_on_mobile'])) {
			$data['theme_nice_productlist_cols_on_mobile'] = $setting_info['theme_nice_productlist_cols_on_mobile'];
		} else {
			$data['theme_nice_productlist_cols_on_mobile'] = 2;
		}
		
		
		
		/* Tab Footer
		 ------------------------------------------------------------------------ */
		if (isset($this->request->post['theme_nice_pay_icons_toggle'])) {
			$data['theme_nice_pay_icons_toggle'] = $this->request->post['theme_nice_pay_icons_toggle'];
		} elseif (isset($setting_info['theme_nice_pay_icons_toggle'])) {
			$data['theme_nice_pay_icons_toggle'] = $setting_info['theme_nice_pay_icons_toggle'];
		} else {
			$data['theme_nice_pay_icons_toggle'] = false;
		}
		
		if (isset($this->request->post['theme_nice_pay_icons_banner_id'])) {
			$data['theme_nice_pay_icons_banner_id'] = $this->request->post['theme_nice_pay_icons_banner_id'];
		} elseif (isset($setting_info['theme_nice_pay_icons_banner_id'])) {
			$data['theme_nice_pay_icons_banner_id'] = $setting_info['theme_nice_pay_icons_banner_id'];
		} else {
			$data['theme_nice_pay_icons_banner_id'] = -1;
		}
			
		$this->load->model('design/banner');
		$data['banners'] = $this->model_design_banner->getBanners();

		
		
		
		/* Parts
		 ------------------------------------------------------------------------ */
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/theme/nice', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/theme/nice')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->request->post['theme_nice_product_limit']) {
			$this->error['product_limit'] = $this->language->get('error_limit');
		}

		if (!$this->request->post['theme_nice_product_description_length']) {
			$this->error['product_description_length'] = $this->language->get('error_limit');
		}

		if (!$this->request->post['theme_nice_image_category_width'] || !$this->request->post['theme_nice_image_category_height']) {
			$this->error['image_category'] = $this->language->get('error_image_category');
		}
		
		if (!$this->request->post['theme_nice_image_manufacturer_width'] || !$this->request->post['theme_nice_image_manufacturer_height']) {
			$this->error['image_manufacturer'] = $this->language->get('error_image_manufacturer');
		}

		if (!$this->request->post['theme_nice_image_thumb_width'] || !$this->request->post['theme_nice_image_thumb_height']) {
			$this->error['image_thumb'] = $this->language->get('error_image_thumb');
		}

		if (!$this->request->post['theme_nice_image_popup_width'] || !$this->request->post['theme_nice_image_popup_height']) {
			$this->error['image_popup'] = $this->language->get('error_image_popup');
		}

		if (!$this->request->post['theme_nice_image_product_width'] || !$this->request->post['theme_nice_image_product_height']) {
			$this->error['image_product'] = $this->language->get('error_image_product');
		}

		if (!$this->request->post['theme_nice_image_additional_width'] || !$this->request->post['theme_nice_image_additional_height']) {
			$this->error['image_additional'] = $this->language->get('error_image_additional');
		}

		if (!$this->request->post['theme_nice_image_related_width'] || !$this->request->post['theme_nice_image_related_height']) {
			$this->error['image_related'] = $this->language->get('error_image_related');
		}

		if (!$this->request->post['theme_nice_image_compare_width'] || !$this->request->post['theme_nice_image_compare_height']) {
			$this->error['image_compare'] = $this->language->get('error_image_compare');
		}

		if (!$this->request->post['theme_nice_image_wishlist_width'] || !$this->request->post['theme_nice_image_wishlist_height']) {
			$this->error['image_wishlist'] = $this->language->get('error_image_wishlist');
		}

		if (!$this->request->post['theme_nice_image_cart_width'] || !$this->request->post['theme_nice_image_cart_height']) {
			$this->error['image_cart'] = $this->language->get('error_image_cart');
		}

		if (!$this->request->post['theme_nice_image_location_width'] || !$this->request->post['theme_nice_image_location_height']) {
			$this->error['image_location'] = $this->language->get('error_image_location');
		}
		
		
		// Tab Page Home
		if (!$this->request->post['theme_nice_home_slideshow_id'] && $this->request->post['theme_nice_home_slideshow_status']) {
			$this->error['home_slideshow_id'] = $this->language->get('error_home_slideshow_id');
		}
		
		
		// Tab Page Product
		if (!$this->request->post['theme_nice_page_product_shortdescritipon_length']) {
			$this->error['page_product_shortdescritipon_length'] = $this->language->get('error_page_product_shortdescritipon_length_empty');
		}
		
		if ($this->request->post['theme_nice_page_product_shortdescritipon_length'] < 155) {
			$this->error['page_product_shortdescritipon_length'] = $this->language->get('error_page_product_shortdescritipon_length_minimum');
		}

		if ($this->error && !isset($this->error['warning'])) {
			$this->error['warning'] = $this->language->get('error_warning');
		}

		return !$this->error;
	}
	
	public function saveCss() {
		$css_colors_billet_file = DIR_SYSTEM . 'library/nice/colors.css';
		
		$css_colors_billet = file_get_contents($css_colors_billet_file);
		
		$search = [
			'%color-primary--darker-3%',
			'%color-primary--darker-2%',
			'%color-primary--darker-1%',
			'%color-primary%',
			'%color-primary--lighter-1%',
			'%color-primary--lighter-2%',
			'%color-primary--lighter-3%',
			
			'%color-accent--darker-3%',
			'%color-accent--darker-2%',
			'%color-accent--darker-1%',
			'%color-accent%',
			'%color-accent--lighter-1%',
			'%color-accent--lighter-2%',
			'%color-accent--lighter-3%',
			
			'%color-footer-bg%',
		];
		
		$replace = [
			$this->request->post['theme_nice_color_primary__darker_3'],
			$this->request->post['theme_nice_color_primary__darker_2'],
			$this->request->post['theme_nice_color_primary__darker_1'],
			$this->request->post['theme_nice_color_primary'],
			$this->request->post['theme_nice_color_primary__lighter_1'],
			$this->request->post['theme_nice_color_primary__lighter_2'],
			$this->request->post['theme_nice_color_primary__lighter_3'],
			
			$this->request->post['theme_nice_color_accent__darker_3'],
			$this->request->post['theme_nice_color_accent__darker_2'],
			$this->request->post['theme_nice_color_accent__darker_1'],
			$this->request->post['theme_nice_color_accent'],
			$this->request->post['theme_nice_color_accent__lighter_1'],
			$this->request->post['theme_nice_color_accent__lighter_2'],
			$this->request->post['theme_nice_color_accent__lighter_3'],
			
			$this->request->post['theme_nice_color_footer_bg'],
			
		];
		
		$css_colors_result = str_replace($search, $replace, $css_colors_billet);
		
//		echo $css_colors_result;
		
		
		$css_file = DIR_CATALOG . 'view/theme/' . $this->request->post['theme_nice_directory'] . '/stylesheet/stylesheet.css';
		
//		echo "\$css_file = $css_file<br>";
		
		$css = file_get_contents($css_file);
		
		$pattern = "/\/\*\s*Nice\s*Colors\s*\.\s*Begin(.*?)\s*Nice\s*Colors\s*\.\s*End\s*\*\//s";
		
		$css = preg_replace($pattern, $css_colors_result, $css);
		
		file_put_contents($css_file, $css, LOCK_EX);
		
	}
	
	public function getColorTonesByAjax() {
		require_once  DIR_SYSTEM . 'library/nice/scssphp-1.10.3/scss.inc.php';
		
		$scss = new \CustomizedScssPhp\ScssPhp\Compiler();
		
		$json = [];
		
		if (null === $this->request->get) {
			$json['error'] = 'No GET';
			goto getColorTonesByAjaxEnd;
		}
			
		if (empty($this->request->get['color'])) {
			$json['error'] = 'No GET color';
			goto getColorTonesByAjaxEnd;
		}

		$color = $this->request->get['color'];
		
		// todo...
		// validation?
		
		$css_colors_result = $scss->compile("
			\$color: $color;
			darker-1: darken($color, 3%);
			darker-2: darken($color, 6%);
			darker-3: darken($color, 9%);
			lighter-1: lighten($color, 3%);
			lighter-2: lighten($color, 6%);
			lighter-3: lighten($color, 9%);
		");
		
		$css_colors_result = rtrim($css_colors_result, "\n");
		
		$a_colors_lines = explode("\n", $css_colors_result);
		
		$json['tones'] = [];
		
		foreach ($a_colors_lines as $line) {
			$line = rtrim($line, ";\n");
			
			$a_line = explode(": ", $line);
			
			$json['tones'][$a_line[0]] = $a_line[1];
		}		
		
		getColorTonesByAjaxEnd:
			
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));		
	}
}
