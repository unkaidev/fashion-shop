<?php
class ModelExtensionModuleSocialLoginAccount extends Model {
    public function updatecustomer($email,$password,$data) {

        $this->db->query("UPDATE " . DB_PREFIX . "customer SET customer_group_id = '" . $this->config->get('config_customer_group_id') . "', email= '". $email ."', salt = '" . $this->db->escape($salt = substr(md5(uniqid(rand(), true)), 0, 9)) . "', password = '" . $this->db->escape(sha1($salt . sha1($salt . sha1($password)))) . "', status = '1', date_added = NOW(), telephone = '" . $data['telephone'] . "' where customer_id = '". $data['customer_id'] ."'");

        $this->db->query("DELETE FROM `" . DB_PREFIX . "address` WHERE customer_id = '". $data['customer_id'] ."'");

        $this->db->query("INSERT INTO " . DB_PREFIX . "address SET customer_id = '" . (int)$data['customer_id'] . "', firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', custom_field = '" . $this->db->escape(isset($data['custom_field']['address']) ? json_encode($data['custom_field']['address']) : '') . "'");

        $address_id = $this->db->getLastId();

        $this->db->query("UPDATE " . DB_PREFIX . "customer SET address_id = '" . (int)$address_id . "' WHERE customer_id = '" . (int)$data['customer_id'] . "'");

        return $data['customer_id'];
    }


    function checkUser($userData = array()){

        if(!empty($userData)){

            if($userData['email']){
                $prevQuery = "SELECT * FROM ".DB_PREFIX."customer WHERE email = '".$userData['email']."'";
                $prevResult = $this->db->query($prevQuery);
            }else{
                $prevQuery = "SELECT * FROM ". DB_PREFIX . "customer WHERE oauth_provider = '".$userData['oauth_provider']."' AND oauth_uid = '".$userData['oauth_uid']."'";
                $prevResult = $this->db->query($prevQuery);
            }

            if($prevResult && $prevResult->num_rows == 0){

                $query = "INSERT INTO ". DB_PREFIX . "customer SET status = '1', oauth_provider = '".$userData['oauth_provider']."', oauth_uid = '".$userData['oauth_uid']."', firstname = '".$userData['first_name']."', lastname = '".$userData['last_name']."', email = '".$userData['email']."', gender = '".$userData['gender']."', locale = '".$userData['locale']."', date_added = '".date("Y-m-d H:i:s")."', modified = '".date("Y-m-d H:i:s")."', customer_group_id =  '" . (int)$this->config->get('config_customer_group_id') . "'";

                $this->db->query($query);

            }else{
                $query = "UPDATE ".DB_PREFIX."customer SET  status = '1', firstname = '".$userData['first_name']."', lastname = '".$userData['last_name']."', email = '".$userData['email']."', gender = '".$userData['gender']."', locale = '".$userData['locale']."', date_added = '".date("Y-m-d H:i:s")."', modified = '".date("Y-m-d H:i:s")."', customer_group_id =  '" . (int)$this->config->get('config_customer_group_id') . "' WHERE oauth_provider = '".$userData['oauth_provider']."' AND oauth_uid = '".$userData['oauth_uid']."'";
                $this->db->query($query);
            }

            $result = $this->db->query($prevQuery);

            $userData = $result->row;

        }
        // Return user data
        return $userData;
    }

    function getByEmail($email)
    {
        $prevQuery = "SELECT * FROM ".DB_PREFIX."customer WHERE email = '".$email."'";

        $result = $this->db->query($prevQuery);

        return $result->row;;
    }

    function oauthId($oauthId){

        $result = $this->db->query("SELECT * FROM ".DB_PREFIX."customer WHERE oauth_uid = '".$oauthId."'");
        return $result->row;
    }
}