<?php
class ControllerExtensionModuleSocialLogin extends Controller {
    public function __construct($registry) {
        parent::__construct($registry);
        $this->registry->set('fblog', new fblog($registry));
        $this->registry->set('gmlog', new gmlog($registry));
    }

    public function index() {

        $this->load->language('extension/module/social_login');
        $this->load->Model('extension/module/social_login');

        $get_status = $this->model_extension_module_social_login->GetStatus();

        if(isset($get_status['module_social_login_status'])){
            $social_status = $get_status['module_social_login_status'];
        }else{
            $social_status = 0;
        }

        if(isset($get_status['module_social_login_facebook_status'])){
            $social_fb_status = $get_status['module_social_login_facebook_status'];
        }else{
            $social_fb_status = 0;
        }


        if(isset($get_status['module_social_login_google_status'])){
            $social_google_status = $get_status['module_social_login_google_status'];
        }else{
            $social_google_status = 0;
        }

        if($social_status && $social_fb_status && $social_google_status){

            $data['text_facebook'] = $this->language->get('text_social_login');
            $data['text_google'] = $this->language->get('text_google');

            $social_login = $this->fblog->FbLogin();

            $google_login = $this->gmlog->gmLogin();

            $gClient = $google_login['gClient'];

            if($social_login){
                $helper = $social_login['helper'];
                $redirectURL = $social_login['redirect'];
                $fbPermissions = $social_login['fbPermissions'];
            }else{
                $helper = '';
                $redirectURL = '';
                $fbPermissions = '';
            }

            if($helper){
                $data['loginurl'] = $helper->getLoginUrl($redirectURL, $fbPermissions);
            }else{
                $data['loginurl'] = '';
            }

            $data['authUrl'] = $gClient->createAuthUrl();

        }elseif($social_status && $social_fb_status){
            $data['text_facebook'] = $this->language->get('text_social_login');

            $social_login = $this->fblog->FbLogin();

            if($social_login){
                $helper = $social_login['helper'];
                $redirectURL = $social_login['redirect'];
                $fbPermissions = $social_login['fbPermissions'];
            }else{
                $helper = '';
                $redirectURL = '';
                $fbPermissions = '';
            }

            if($helper){
                $data['loginurl'] = $helper->getLoginUrl($redirectURL, $fbPermissions);
            }else{
                $data['loginurl'] = '';
            }

        }elseif($social_status && $social_google_status){

            $data['text_google'] = $this->language->get('text_google');

            $google_login = $this->gmlog->gmLogin();

            $gClient = $google_login['gClient'];

            $data['authUrl'] = $gClient->createAuthUrl();

        }else{
            $data[] = array();
        }

        if($this->config->get('module_social_login_google_image')){
            $data['image_google'] = $this->model_tool_image->resize($this->config->get('module_social_login_google_image'), 150, 75);
        }else{
            $data['image_google'] = 'catalog/view/theme/default/image/google.png';
        }

        if($this->config->get('module_social_login_facebook_image')){
            $data['image_facebook'] = $this->model_tool_image->resize($this->config->get('module_social_login_facebook_image'), 150, 75);
        }else{
            $data['image_facebook'] = 'catalog/view/theme/default/image/fb.png';
        }

        return $this->load->view('extension/module/social_login', $data);
    }
}