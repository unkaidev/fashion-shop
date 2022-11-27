<?php
class ControllerExtensionModuleSocialLoginAccountGoogle extends Controller {
    private $error = array();

    public function __construct($registry) {
        parent::__construct($registry);
        $this->registry->set('gmlog', new gmlog($registry));
    }

    public function index() {

        $social_login = $this->gmlog->gmLogin();

        $gClient  = $social_login['gClient'];
        $google_oauthV2 = $social_login['google_oauthV2'];

        $this->load->language('extension/module/social_login/account/social');
        $this->load->model('extension/module/social_login/account');

        if(isset($this->request->get['code'])){
            $gClient->authenticate($this->request->get['code']);
            $this->session->data['google_token'] = $gClient->getAccessToken();
        }


        if (isset($this->session->data['google_token'])) {
            $gClient->setAccessToken($this->session->data['google_token']);
        }

        if ($gClient->getAccessToken()) {
            //Get user profile data from google
            $gpUserProfile = $google_oauthV2->userinfo->get();

            //Insert or update user data to the database
            $gpUserData = array(
                'oauth_provider'=> 'google',
                'oauth_uid'     => $gpUserProfile['id'],
                'first_name'    => $gpUserProfile['given_name'],
                'last_name'     => $gpUserProfile['family_name'],
                'email'         => $gpUserProfile['email'],
                'gender'        => '',
                'locale'        => $gpUserProfile['locale'],
                'picture'       => $gpUserProfile['picture'],
                'link'          => ''
            );

            $userData = $this->model_extension_module_social_login_account->checkUser($gpUserData);

            //Storing user data into session
            $this->session->data['userData'] = $userData;
            $data['userData'] = $userData;

        }


        if(isset($userData['email'])){
            $this->customer->login($userData['email'],'',$override = true);
            $this->response->redirect($this->url->link('account/account'));
        }else{

            if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
                $userData = $this->session->data['userData'];

                if(isset($this->request->post['email']) && $this->request->post['email']) {
                    $email = $this->request->post['email'];
                } else if(isset($userData['email']) && $userData['email']) {
                    $email = $userData['email'];
                } else {
                    $email = '';
                }

                if(isset($this->request->post['telephone']) && $this->request->post['telephone']) {
                    $userData['telephone'] = $this->request->post['telephone'];
                }else if(isset($userData['telephone']) && $userData['telephone']) {
                    $userData['telephone'] = $userData['telephone'];
                } else {
                    $userData['telephone'] = '';
                }

                if(isset($this->request->post['password']) && $this->request->post['password']) {
                    $password = $this->request->post['password'];
                }else{
                    $password = '';
                }

                $this->model_extension_module_social_login_account->updatecustomer($email,$password,$userData);
                $this->customer->login($email, $password);
                $this->response->redirect($this->url->link('account/account'));

            }

        }

        if(isset($userData['email'])){
            $data['email'] = $userData['email'];
        } else if (isset($this->request->post['email'])) {
            $data['email'] = $this->request->post['email'];
        } else {
            $data['email'] = '';
        }

        if (isset($this->request->post['telephone'])) {
            $data['telephone'] = $this->request->post['telephone'];
        } else {
            $data['telephone'] = '';
        }

        if (isset($this->request->post['password'])) {
            $data['password'] = $this->request->post['password'];
        } else {
            $data['password'] = '';
        }

        $data['action'] = $this->url->link('extension/module/social_login/account/google', '', true);

        $data['entry_email'] = $this->language->get('entry_email');
        $data['entry_mobile'] = $this->language->get('entry_mobile');
        $data['entry_password'] = $this->language->get('entry_password');
        $data['button_continue'] = $this->language->get('button_continue');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->error['email'])) {
            $data['error_email'] = $this->error['email'];
        } else {
            $data['error_email'] = '';
        }

        if (isset($this->error['telephone'])) {
            $data['error_telephone'] = $this->error['telephone'];
        } else {
            $data['error_telephone'] = '';
        }

        if (isset($this->error['password'])) {
            $data['error_password'] = $this->error['password'];
        } else {
            $data['error_password'] = '';
        }

        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        $this->response->setOutput($this->load->view('extension/module/social_login/fb', $data));
    }

    private function validate() {

        if(isset($this->request->post['email'])) {
            if ((utf8_strlen($this->request->post['email']) > 96) || !filter_var($this->request->post['email'], FILTER_VALIDATE_EMAIL)) {
                $this->error['email'] = $this->language->get('error_email');
            }
        }

        if(isset($this->request->post['telephone'])) {
            if ((utf8_strlen($this->request->post['telephone']) < 3) || (utf8_strlen($this->request->post['telephone']) > 32)) {
                $this->error['telephone'] = $this->language->get('error_telephone');
            }
        }

        if ((utf8_strlen($this->request->post['password']) < 4) || (utf8_strlen($this->request->post['password']) > 20)) {
            $this->error['password'] = $this->language->get('error_password');
        }

        return !$this->error;

    }
}
