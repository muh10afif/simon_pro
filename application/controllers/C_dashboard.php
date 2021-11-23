<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class C_dashboard extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        $this->cek_login_lib->logged_in_false();
        $this->load->model(array('M_dashboard'));
        $this->posisi       = $this->session->userdata('posisi');
        $this->nama_jabatan = $this->session->userdata('nama_jabatan');
        $this->id_pegawai   = $this->session->userdata('id_pegawai');
    }
    

    public function index()
    {
        $data = ['menu'         => 'Dashboard',  
                 'page'         => 'Dashboard',
                 'induk_projek' => $this->M_dashboard->get_induk_projek()->num_rows(),
                 'data_projek'  => $this->M_dashboard->get_data_projek()->num_rows(),
                 'status'       => $this->M_dashboard->get_status()->result_array(),
                //  'on_progress'  => $this->M_dashboard->cari_data_projek('data_projek', array('t.status' => 1))->num_rows(),
                //  'postponed'    => $this->M_dashboard->cari_data_projek('data_projek', array('t.status' => 2))->num_rows(),
                //  'waiting_list' => $this->M_dashboard->cari_data_projek('data_projek', array('t.status' => 3))->num_rows(),
                //  'clear_project'=> $this->M_dashboard->cari_data_projek('data_projek', array('t.status' => 4))->num_rows()
                ];

        $this->template->load('layout/template', 'V_dashboard', $data);
    }

}

/* End of file C_dashboard.php */
