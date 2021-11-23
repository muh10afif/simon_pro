<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Masuk extends CI_Controller {

    public function index()
    {
        $this->cek_login_lib->logged_in_true();

        $this->load->view('V_login');
    }

}

/* End of file Masuk.php */
