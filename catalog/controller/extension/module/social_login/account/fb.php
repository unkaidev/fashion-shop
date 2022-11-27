<?php
class ControllerExtensionModuleSocialLoginAccountFb extends Controller {
    private $error = array();

    public function __construct($registry) {
        parent::__construct($registry);
        $this->registry->set('fblog', new fblog($registry));
    }

    public function index() {
        $social_login = $this->fblog->FbLogin();

        $fb = $social_login['fb'];
        $accessToken = $social_login['access_token'];

        $this->load->language('extension/module/social_login/account/social');
        $this->load->model('extension/module/social_login/social_login');


        // Put short-lived access token in session
        $this->session->data['facebook_token']= (string) $accessToken;

        // OAuth 2.0 client handler helps to manage access tokens
        $oAuth2Client = $fb->getOAuth2Client();

        // Exchanges a short-lived access token for a long-lived one
        $longLivedAccessToken = $oAuth2Client->getLongLivedAccessToken( $this->session->data['facebook_token']);
        $this->session->data['facebook_token'] = (string) $longLivedAccessToken;

        // Set default access token to be used in script
        $fb->setDefaultAccessToken($this->session->data['facebook_token']);

        // Getting user facebook profile info
        try {

            $profileRequest = $fb->get('/me?fields=name,first_name,last_name,email,link,gender,locale,picture');

            $fbUserProfile = $profileRequest->getGraphNode()->asArray();

        } catch(FacebookResponseException $e) {
            echo 'Graph returned an error: ' . $e->getMessage();
            //session_destroy();
            // Redirect user back to app login page
            header("Location: ./");
            exit;
        } catch(FacebookSDKException $e) {
            echo 'Facebook SDK returned an error: ' . $e->getMessage();
            exit;
        }


        if($fbUserProfile){

            $oauth_uid = $this->model_extension_module_social_login_account->oauthId($fbUserProfile['id']);

            if(isset($oauth_uid['email'])){
                $email =  $oauth_uid['email'];
            }else{

                if(isset($fbUserProfile['email'])){
                    $email = $fbUserProfile['email'];
                }else{
                    $email = '';
                }

            }

            // Insert or update user data to the database
            $fbUserData = array(
                'oauth_provider'=> 'facebook',
                'oauth_uid' 	=> $fbUserProfile['id'],
                'first_name' 	=> $fbUserProfile['first_name'],
                'last_name' 	=> $fbUserProfile['last_name'],
                'email' 		=> $email,
                'gender' 		=> isset($fbUserProfile['gender']) ? $fbUserProfile['gender'] : '',
                'locale' 		=> isset($fbUserProfile['locale']) ? $fbUserProfile['locale'] : '',
                'picture' 		=> isset($fbUserProfile['picture']['url']) ? $fbUserProfile['picture']['url'] : '',
                'link' 			=> isset($fbUserProfile['link']) ? $fbUserProfile['link'] : ''
            );

            $userData = $this->model_extension_module_social_login_account->checkUser($fbUserData);

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
                } else if(isset($userData['telephone']) && $userData['telephone']) {
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

        if (isset($this->request->post['email'])) {
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

        $data['action'] = $this->url->link('extension/module/social_login/account/fb', '', true);

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

        $this->response->setOutput($this->load->view('extension/module/social_login/account/fb', $data));
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
