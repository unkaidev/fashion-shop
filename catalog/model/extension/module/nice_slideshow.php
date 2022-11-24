<?php
class ModelExtensionModuleNiceSlideshow extends Model {
	public function getSlideshow($slideshow_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "nice_slideshow ns LEFT JOIN " . DB_PREFIX . "nice_slideshow_image nsi ON (ns.slideshow_id = nsi.slideshow_id) WHERE ns.slideshow_id = '" . (int)$slideshow_id . "' AND ns.status = '1' AND nsi.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY nsi.sort_order ASC");
		return $query->rows;
	}
}
