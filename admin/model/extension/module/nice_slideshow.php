<?php
class ModelExtensionModuleNiceSlideshow extends Model {
	public function install() {
		$this->db->query("CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "nice_slideshow` (
			`slideshow_id` int(11) NOT NULL AUTO_INCREMENT,
			`name` varchar(64) NOT NULL,
			`status` tinyint(1) NOT NULL,
			PRIMARY KEY (`slideshow_id`)
		) ENGINE=MyISAM DEFAULT CHARSET=utf8;");
		
		$this->db->query("CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "nice_slideshow_image` (
			`slideshow_image_id` int(11) NOT NULL AUTO_INCREMENT,
			`slideshow_id` int(11) NOT NULL,
			`language_id` int(11) NOT NULL,
			`title` varchar(64) NOT NULL,
			`link` varchar(255) NOT NULL,
			`image` varchar(255) NOT NULL,
			`sort_order` int(3) NOT NULL DEFAULT 0,
			PRIMARY KEY (`slideshow_image_id`, `slideshow_id`, `language_id`)
		) ENGINE=MyISAM DEFAULT CHARSET=utf8;");
	}
	
	public function addSlideshow($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "nice_slideshow SET name = '" . $this->db->escape($data['name']) . "', status = '" . (int)$data['status'] . "'");

		$slideshow_id = $this->db->getLastId();

		if (isset($data['slideshow_image'])) {
			foreach ($data['slideshow_image'] as $language_id => $value) {
				foreach ($value as $slideshow_image) {
					$this->db->query("INSERT INTO " . DB_PREFIX . "nice_slideshow_image SET slideshow_id = '" . (int)$slideshow_id . "', language_id = '" . (int)$language_id . "', title = '" .  $this->db->escape($slideshow_image['title']) . "', link = '" .  $this->db->escape($slideshow_image['link']) . "', image = '" .  $this->db->escape($slideshow_image['image']) . "', sort_order = '" .  (int)$slideshow_image['sort_order'] . "'");
				}
			}
		}

		return $slideshow_id;
	}

	public function editSlideshow($slideshow_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "nice_slideshow SET name = '" . $this->db->escape($data['name']) . "', status = '" . (int)$data['status'] . "' WHERE slideshow_id = '" . (int)$slideshow_id . "'");

		$this->db->query("DELETE FROM " . DB_PREFIX . "nice_slideshow_image WHERE slideshow_id = '" . (int)$slideshow_id . "'");

		if (isset($data['slideshow_image'])) {
			foreach ($data['slideshow_image'] as $language_id => $value) {
				foreach ($value as $slideshow_image) {
					$this->db->query("INSERT INTO " . DB_PREFIX . "nice_slideshow_image SET slideshow_id = '" . (int)$slideshow_id . "', language_id = '" . (int)$language_id . "', title = '" .  $this->db->escape($slideshow_image['title']) . "', link = '" .  $this->db->escape($slideshow_image['link']) . "', image = '" .  $this->db->escape($slideshow_image['image']) . "', sort_order = '" . (int)$slideshow_image['sort_order'] . "'");
				}
			}
		}
	}

	public function deleteSlideshow($slideshow_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "nice_slideshow WHERE slideshow_id = '" . (int)$slideshow_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "nice_slideshow_image WHERE slideshow_id = '" . (int)$slideshow_id . "'");
	}

	public function getSlideshow($slideshow_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "nice_slideshow WHERE slideshow_id = '" . (int)$slideshow_id . "'");

		return $query->row;
	}

	public function getSlideshows($data = array()) {
		$sql = "SELECT * FROM " . DB_PREFIX . "nice_slideshow";

		$sort_data = array(
			'name',
			'status'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY name";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getSlideshowImages($slideshow_id) {
		$slideshow_image_data = array();

		$slideshow_image_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "nice_slideshow_image WHERE slideshow_id = '" . (int)$slideshow_id . "' ORDER BY sort_order ASC");

		foreach ($slideshow_image_query->rows as $slideshow_image) {
			$slideshow_image_data[$slideshow_image['language_id']][] = array(
				'title'      => $slideshow_image['title'],
				'link'       => $slideshow_image['link'],
				'image'      => $slideshow_image['image'],
				'sort_order' => $slideshow_image['sort_order']
			);
		}

		return $slideshow_image_data;
	}

	public function getTotalSlideshows() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "nice_slideshow");

		return $query->row['total'];
	}
}
