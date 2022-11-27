<?php

class Gmlog {

    private $config;
    private $db;
    private $accessToken;
    private $helper;
    private $data = array();

    public function __construct($registry) {
        $this->config = $registry->get('module_social_login');
        $this->request = $registry->get('request');
        $this->session = $registry->get('session');
        $this->db = $registry->get('db');
    }

    public function gmlogin(){

        require_once (DIR_SYSTEM . 'library/google/Google_Client.php');
        require_once (DIR_SYSTEM . 'library/google/contrib/Google_Oauth2Service.php');

        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "setting WHERE store_id = '0' AND `code` = 'module_social_login'");

        $this->data = array();

        if($query->rows){

            foreach ($query->rows as $result) {
                if (!$result['serialized']) {
                    $setting_data[$result['key']] = $result['value'];
                } else {
                    $setting_data[$result['key']] = unserialize($result['value']);
                }
            }

            if($setting_data['module_social_login_google_client_id'] && $setting_data['module_social_login_google_secret']){
                $clientId         =  $setting_data['module_social_login_google_client_id'];
                $clientSecret     =  $setting_data['module_social_login_google_secret'];
                $redirectURL      =  $setting_data['module_social_login_google_callback'];
            }else{
                $clientId         =  '';
                $clientSecret     =  '';
                $redirectURL      =  '';
            }



            //Call Google API
            $gClient = new Google_Client();
            $gClient->setApplicationName('gifary.upwork@gmail.com');
            $gClient->setClientId($clientId);
            $gClient->setClientSecret($clientSecret);
            $gClient->setRedirectUri($redirectURL);

            $google_oauthV2 = new Google_Oauth2Service($gClient);

            $this->data = array(
                'clientId'        =>  $clientId,
                'client_secret'    => $clientSecret,
                'redirect'        =>  $redirectURL,
                'google_oauthV2'  =>  $google_oauthV2,
                'gClient'         =>  $gClient,
            );

            return $this->data;

        }

    }

}