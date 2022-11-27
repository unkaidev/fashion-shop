<?php
use Facebook\Facebook;
use Facebook\Exceptions\FacebookResponseException;
use Facebook\Exceptions\FacebookSDKException;
class Fblog {

    private $config;
    private $db;
    private $accessToken;
    private $helper;
    private $data = array();

    public function __construct($registry) {


        $this->config = $registry->get('module_social_login');
        $this->social_login = $registry->get('module_social_login');
        $this->request = $registry->get('request');
        $this->session = $registry->get('session');
        $this->db = $registry->get('db');
        if (session_status() == PHP_SESSION_NONE) {
            session_start();
        }
    }

    public function FbLogin(){
        require_once (DIR_SYSTEM . 'library/facebook/autoload.php');
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

            //print_R($setting_data);exit;

            if($setting_data['module_social_login_facebook_app_id'] && $setting_data['module_social_login_facebook_secret']){
                $appId         =  $setting_data['module_social_login_facebook_app_id'];
                $appSecret     =  $setting_data['module_social_login_facebook_secret'];
                $redirectURL   =  $setting_data['module_social_login_facebook_callback'];
            }else{
                $appId         =  '';
                $appSecret     =  '';
                $redirectURL   =  '';
            }

            $fbPermissions = array('email');

            $fb = new Facebook(array(
                'app_id' => $appId,
                'app_secret' => $appSecret,
                'default_graph_version' => 'v2.10',
            ));

            // Get redirect login helper
            $helper = $fb->getRedirectLoginHelper();
            //echo'<pre>';print_R($helper->getAccessToken());exit;

            try { //echo"ddfs";exit;
                if(isset($this->session->data['facebook_token'])){ //echo"1";
                    $accessToken = $this->session->data['facebook_token'];
                }else{ //echo"2";
                    $accessToken = $helper->getAccessToken();
                }
                //print_R($accessToken);exit;
            } catch(FacebookResponseException $e) {
                $error = 'Graph returned an error: ' . $e->getMessage();
                print_r($error);
                exit;
            } catch(FacebookSDKException $e) {
                $error = 'Facebook SDK returned an error: ' . $e->getMessage();
                print_r($error);
                exit;
            }


            $this->data = array(
                'app_id'        => $appId,
                'app_secret'    => $appSecret,
                'redirect'      => $redirectURL,
                'fbPermissions' => $fbPermissions,
                'helper'        => $helper,
                'access_token'  => $accessToken,
                'error'         => isset($error) ? $error : '' ,
                'fb'            => $fb
            );

        }
        return $this->data;

    }




}