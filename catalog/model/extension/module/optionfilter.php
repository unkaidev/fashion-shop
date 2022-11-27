<?php
class ModelExtensionModuleOptionfilter extends Model {

	public function getProductOptions() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "option o LEFT JOIN " . DB_PREFIX . "option_description od ON (od.option_id = o.option_id) WHERE od.language_id = '" . (int)$this->config->get('config_language_id') . "' AND (o.type='select' OR o.type='radio' OR o.type='checkbox' )");

		return $query->rows;
	}

	public function getProductOptionss($option_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "option o LEFT JOIN " . DB_PREFIX . "option_value_description od ON (od.option_id = o.option_id) WHERE od.language_id = '" . (int)$this->config->get('config_language_id') . "' and od.option_id = '" . (int)$option_id . "'");

		return $query->rows;
	}

	public function getTotalProductOptionss($data = array()) {
		$sql = "SELECT COUNT(DISTINCT p.product_id) AS total";

		if (!empty($data['filter_option_value_id'])) {
			$sql .= " FROM " . DB_PREFIX . "product_option_value p2c";
			$sql .= " LEFT JOIN " . DB_PREFIX . "product p ON (p2c.product_id = p.product_id)";
		} else {
			$sql .= " FROM " . DB_PREFIX . "product p";
		}

		$sql .= " LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND p.status = '1' AND p.date_available <= NOW() AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "'";

		if (!empty($data['filter_option_value_id'])) {
			$sql .= " AND p2c.option_value_id = '" . (int)$data['filter_option_value_id'] . "'";
		}

		$query = $this->db->query($sql);

		return $query->row['total'];
	}
}