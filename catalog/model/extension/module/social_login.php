<?php
class ModelExtensionModuleSocialLogin extends Model {

    public function GetStatus() {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "setting WHERE store_id = '0' AND `code` = 'module_social_login'");

        $setting_data = array();

        foreach ($query->rows as $result) {
            if (!$result['serialized']) {
                $setting_data[$result['key']] = $result['value'];
            } else {
                $setting_data[$result['key']] = unserialize($result['value']);
            }
        }

        return $setting_data;
    }
}