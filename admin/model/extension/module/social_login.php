<?php
class ModelExtensionModuleSocialLogin extends Model {
	public function addSocialLogins() {
		
		$query = $this->db->query("DESC ".DB_PREFIX."customer oauth_provider");

		if (!$query->num_rows) { 
			$this->db->query("ALTER TABLE `" . DB_PREFIX . "customer` ADD `oauth_provider` enum('','facebook','google','twitter')  NULL, ADD `oauth_uid` varchar(128) NOT NULL, ADD `gender` varchar(10) NOT NULL, ADD `locale` varchar(10) NOT NULL, ADD `picture` varchar(255) NOT NULL, ADD `link` varchar(255) NOT NULL, ADD `modified` datetime NOT NULL");
		
		}

	}
}
