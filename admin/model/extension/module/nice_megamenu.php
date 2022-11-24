<?php
class ModelExtensionModuleNiceMegamenu extends Model {
	public function install() {
		// category	
		$query = $this->db->query("SHOW COLUMNS FROM `" . DB_PREFIX . "category` WHERE Field = 'nmm_promo_status'");
		
		if (!$query->num_rows) {
			$this->db->query("ALTER TABLE `" . DB_PREFIX . "category` ADD `nmm_image` VARCHAR(255) NOT NULL AFTER `image`, ADD `nmm_promo_status` TINYINT(1) NOT NULL AFTER `status`");
		}	
		
		// category_description
		$query = $this->db->query("SHOW COLUMNS FROM `" . DB_PREFIX . "category_description` WHERE Field = 'nmm_alt'");
		
		if (!$query->num_rows) {
			$this->db->query("ALTER TABLE `" . DB_PREFIX . "category_description` ADD `nmm_alt` VARCHAR(255) NOT NULL AFTER `description`, ADD `nmm_title` VARCHAR(255) NOT NULL AFTER `nmm_alt`, ADD `nmm_text` TEXT NOT NULL AFTER `nmm_title`, ADD `nmm_link` VARCHAR(255) NOT NULL AFTER `nmm_text`, ADD `nmm_anchor` VARCHAR(255) NOT NULL AFTER `nmm_link`;");
		}
	}
}
