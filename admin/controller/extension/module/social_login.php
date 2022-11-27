<?php

class ControllerExtensionModuleSocialLogin extends Controller {

    private $error = array();

    public function index() {

        $this->load->language('extension/module/social_login');
        $this->document->setTitle($this->language->get('heading_title'));
        $this->load->model('setting/setting');
        $this->load->model('extension/module/social_login');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->model_extension_module_social_login->addSocialLogins();
            $this->model_setting_setting->editSetting('module_social_login', $this->request->post);
            $this->session->data['success'] = $this->language->get('text_success');
            $this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true));
        }

        $data['heading_title'] = $this->language->get('heading_title');
        $data['entry_status'] = $this->language->get('entry_status');

        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['text_facebook'] = $this->language->get('text_facebook');
        $data['text_app_id'] = $this->language->get('text_app_id');
        $data['text_app_secret'] = $this->language->get('text_app_secret');
        $data['text_app_redirect'] = $this->language->get('text_app_redirect');
        $data['text_client_id'] = $this->language->get('text_client_id');
        $data['text_client_secret'] = $this->language->get('text_client_secret');
        $data['text_google'] = $this->language->get('text_google');
        $data['text_image'] = $this->language->get('text_image');

        $data['text_social_login'] = $this->language->get('text_social_login');

        $data['tab_general'] = $this->language->get('tab_general');
        $data['tab_social'] = $this->language->get('tab_social');


        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home', 'user_token=' . $this->session->data['user_token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'user_token=' . $this->session->data['user_token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('extension/module/social_login', 'user_token=' . $this->session->data['user_token'], 'SSL')

        );

        $data['action'] = $this->url->link('extension/module/social_login', 'user_token=' . $this->session->data['user_token'], 'SSL');
        $data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true);
        $data['token'] = $this->session->data['user_token'];

        if (isset($this->request->post['module_social_login_status'])) {
            $data['module_social_login_status'] = $this->request->post['module_social_login_status'];
        } else {
            $data['module_social_login_status'] = $this->config->get('module_social_login_status');
        }

        if (isset($this->request->post['module_social_login_facebook_status'])) {
            $data['module_social_login_facebook_status'] = $this->request->post['module_social_login_facebook_status'];
        } else {
            $data['module_social_login_facebook_status'] = $this->config->get('module_social_login_facebook_status');
        }

        if (isset($this->request->post['module_social_login_google_status'])) {
            $data['module_social_login_google_status'] = $this->request->post['module_social_login_google_status'];
        } else {
            $data['module_social_login_google_status'] = $this->config->get('module_social_login_google_status');
        }

        if (isset($this->request->post['module_social_login_facebook_app_id'])) {
            $data['module_social_login_facebook_app_id'] = $this->request->post['module_social_login_facebook_app_id'];
        } else {
            $data['module_social_login_facebook_app_id'] = $this->config->get('module_social_login_facebook_app_id');
        }

        if (isset($this->request->post['module_social_login_facebook_secret'])) {
            $data['module_social_login_facebook_secret'] = $this->request->post['module_social_login_facebook_secret'];
        } else {
            $data['module_social_login_facebook_secret'] = $this->config->get('module_social_login_facebook_secret');
        }


        $data['module_social_login_facebook_callback'] = HTTPS_CATALOG . 'index.php?route=extension/module/social_login/account/fb';

        if (isset($this->request->post['module_social_login_google_client_id'])) {
            $data['module_social_login_google_client_id'] = $this->request->post['module_social_login_google_client_id'];
        } else {
            $data['module_social_login_google_client_id'] = $this->config->get('module_social_login_google_client_id');
        }

        if (isset($this->request->post['module_social_login_google_secret'])) {
            $data['module_social_login_google_secret'] = $this->request->post['module_social_login_google_secret'];
        } else {
            $data['module_social_login_google_secret'] = $this->config->get('module_social_login_google_secret');
        }

        // Image google
        if (isset($this->request->post['module_social_login_google_image'])) {
            $data['module_social_login_google_image'] = $this->request->post['module_social_login_google_image'];
        }  else {
            $data['module_social_login_google_image'] = $this->config->get('module_social_login_google_image');
        }

        // Image facebook
        if (isset($this->request->post['module_social_login_facebook_image'])) {
            $data['module_social_login_facebook_image'] = $this->request->post['module_social_login_facebook_image'];
        }  else {
            $data['module_social_login_facebook_image'] = $this->config->get('module_social_login_facebook_image');
        }

        $this->load->model('tool/image');

        if (isset($this->request->post['module_social_login_google_image']) && is_file(DIR_IMAGE . $this->request->post['module_social_login_google_image'])) {
            $data['thumb_google'] = $this->model_tool_image->resize($this->request->post['module_social_login_google_image'], 100, 100);
        } elseif (!empty($this->config->get('module_social_login_google_image')) && is_file(DIR_IMAGE . $this->config->get('module_social_login_google_image'))) {
            $data['thumb_google'] = $this->model_tool_image->resize($this->config->get('module_social_login_google_image'), 100, 100);
        } else {
            $data['thumb_google'] = $this->model_tool_image->resize('no_image.png', 100, 100);
        }

        if (isset($this->request->post['module_social_login_facebook_image']) && is_file(DIR_IMAGE . $this->request->post['module_social_login_facebook_image'])) {
            $data['thumb_facebook'] = $this->model_tool_image->resize($this->request->post['module_social_login_facebook_image'], 100, 100);
        } elseif (!empty($this->config->get('module_social_login_facebook_image')) && is_file(DIR_IMAGE . $this->config->get('module_social_login_facebook_image'))) {
            $data['thumb_facebook'] = $this->model_tool_image->resize($this->config->get('module_social_login_facebook_image'), 100, 100);
        } else {
            $data['thumb_facebook'] = $this->model_tool_image->resize('no_image.png', 100, 100);
        }

        $data['module_social_login_google_callback'] = HTTPS_CATALOG . 'index.php?route=extension/module/social_login/account/google';

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('extension/module/social_login', $data));

    }

    protected function validate() {
        if (!$this->user->hasPermission('modify', 'extension/module/social_login')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }
}