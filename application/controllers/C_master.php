<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class C_master extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_master'));
        $this->cek_login_lib->logged_in_false();
    }
    

    public function index()
    {
        $this->jabatan();
    }

    // halaman jabatan
        public function jabatan()
        {
            $data = ['menu' => 'Master', 
                    'page' => 'Master Jabatan'
                    ];

            $this->template->load('layout/template', 'master/V_jabatan', $data);
        }

    // 05-04-2020
        
        // menampilkan list jabatan 
        public function tampil_data_jabatan()
        {
            $list = $this->M_master->get_data_jabatan();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_jabatan'];
                $tbody[]    = "<a href='#' class='mr-3 text-primary edit-jabatan' data-toggle='tooltip' data-placement='top' title='Ubah' data-id='".$o['id_jabatan']."'><i class='mdi mdi-pencil mdi-24px'></i></a><a href='#' class='text-danger hapus-jabatan' data-toggle='tooltip' data-placement='top' title='Hapus' data-id='".$o['id_jabatan']."' jabatan='".$o['nama_jabatan']."'><i class='mdi mdi-delete mdi-24px'></i></a>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_master->jumlah_semua_jabatan(),
                        "recordsFiltered"  => $this->M_master->jumlah_filter_jabatan(),   
                        "data"             => $data
                    ];

            echo json_encode($output);
        }

        // aksi proses simpan data jabatan
        public function simpan_data_jabatan()
        {
            $aksi           = $this->input->post('aksi');
            $id_jabatan     = $this->input->post('id_jabatan');
            $jabatan        = $this->input->post('nama_jabatan');

            $data = ['nama_jabatan' => $jabatan,
                     'add_time'     => date("Y-m-d H:i:s", now('Asia/Jakarta'))
                    ];

            if ($aksi == 'Tambah') {
                $this->M_master->input_data('m_jabatan', $data);
            } elseif ($aksi == 'Ubah') {
                $this->M_master->ubah_data('m_jabatan', $data, array('id_jabatan' => $id_jabatan));
            } elseif ($aksi == 'Hapus') {
                $this->M_master->hapus_data('m_jabatan', array('id_jabatan' => $id_jabatan));
            }

            echo json_encode($aksi);
        }

        // ambil data jabatan
        public function ambil_data_jabatan($id_jabatan)
        {
            $data = $this->M_master->cari_data('m_jabatan', array("id_jabatan" => $id_jabatan))->row_array();

            echo json_encode($data);
        }

    // halaman posisi
        public function posisi()
        {
            $data = ['menu' => 'Master', 
                    'page' => 'Master Posisi'
                    ];

            $this->template->load('layout/template', 'master/V_posisi', $data);
        }

    // 05-04-2020
        
        // menampilkan list posisi 
        public function tampil_data_posisi()
        {
            $list = $this->M_master->get_data_posisi();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_posisi'];
                $tbody[]    = $o['jenis_modul'];
                $tbody[]    = "<a href='#' class='mr-3 text-primary edit-posisi' data-toggle='tooltip' data-placement='top' title='Ubah' data-id='".$o['id_posisi']."'><i class='mdi mdi-pencil mdi-24px'></i></a><a href='#' class='text-danger hapus-posisi' data-toggle='tooltip' data-placement='top' title='Hapus' data-id='".$o['id_posisi']."' posisi='".$o['nama_posisi']."'><i class='mdi mdi-delete mdi-24px'></i></a>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_master->jumlah_semua_posisi(),
                        "recordsFiltered"  => $this->M_master->jumlah_filter_posisi(),   
                        "data"             => $data
                    ];

            echo json_encode($output);
        }

        // aksi proses simpan data posisi
        public function simpan_data_posisi()
        {
            $aksi           = $this->input->post('aksi');
            $id_posisi      = $this->input->post('id_posisi');
            $posisi         = $this->input->post('nama_posisi');
            $jenis_modul    = $this->input->post('jenis_modul');

            $data = ['nama_posisi' => $posisi,
                     'jenis_modul' => $jenis_modul,
                     'add_time'    => date("Y-m-d H:i:s", now('Asia/Jakarta'))
                    ];

            if ($aksi == 'Tambah') {
                $this->M_master->input_data('m_posisi', $data);
            } elseif ($aksi == 'Ubah') {
                $this->M_master->ubah_data('m_posisi', $data, array('id_posisi' => $id_posisi));
            } elseif ($aksi == 'Hapus') {
                $this->M_master->hapus_data('m_posisi', array('id_posisi' => $id_posisi));
            }

            echo json_encode($aksi);
        }

        // ambil data posisi
        public function ambil_data_posisi($id_posisi)
        {
            $data = $this->M_master->cari_data('m_posisi', array("id_posisi" => $id_posisi))->row_array();

            echo json_encode($data);
        }

    // halaman pegawai
        public function pegawai()
        {
            $data = ['menu'     => 'Master', 
                    'page'      => 'Master Pegawai',
                    'posisi'    => $this->M_master->get_posisi()->result_array(),
                    'jabatan'   => $this->M_master->get_data_order('m_jabatan','nama_jabatan','asc')->result_array()
                    ];

            $this->template->load('layout/template', 'master/V_pegawai', $data);
        }

        // menampilkan list pegawai 
        public function tampil_data_pegawai()
        {
            $list = $this->M_master->get_data_pegawai();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_pegawai'];
                $tbody[]    = $o['kontak'];
                $tbody[]    = $o['email'];
                $tbody[]    = $o['nama_posisi'];
                $tbody[]    = $o['nama_jabatan'];
                $tbody[]    = "<a href='#' class='mr-3 text-primary edit-pegawai' data-toggle='tooltip' data-placement='top' title='Ubah' data-id='".$o['id_pegawai']."'><i class='mdi mdi-pencil mdi-24px'></i></a><a href='#' class='text-danger hapus-pegawai' data-toggle='tooltip' data-placement='top' title='Hapus' data-id='".$o['id_pegawai']."' pegawai='".$o['nama_pegawai']."'><i class='mdi mdi-delete mdi-24px'></i></a>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_master->jumlah_semua_pegawai(),
                        "recordsFiltered"  => $this->M_master->jumlah_filter_pegawai(),   
                        "data"             => $data
                    ];

            echo json_encode($output);
        }

        // aksi proses simpan data pegawai
        public function simpan_data_pegawai()
        {
            $aksi       = $this->input->post('aksi');
            $id_pegawai = $this->input->post('id_pegawai');
            $pegawai    = $this->input->post('nama_pegawai');
            $nik        = $this->input->post('nik');
            $kontak     = $this->input->post('kontak');
            $email      = $this->input->post('email');
            $id_posisi  = $this->input->post('id_posisi');
            $id_jabatan = $this->input->post('id_jabatan');
            $alamat     = $this->input->post('alamat');

            $data = ['nama_pegawai' => $pegawai,
                     'nik'          => $nik,
                     'kontak'       => $kontak,
                     'email'        => $email,
                     'id_posisi'    => $id_posisi,
                     'id_jabatan'   => $id_jabatan,
                     'alamat'       => $alamat,
                     'add_time'     => date("Y-m-d H:i:s", now('Asia/Jakarta'))
                    ];

            if ($aksi == 'Tambah') {
                $this->M_master->input_data('m_pegawai', $data);
            } elseif ($aksi == 'Ubah') {
                $this->M_master->ubah_data('m_pegawai', $data, array('id_pegawai' => $id_pegawai));
            } elseif ($aksi == 'Hapus') {
                $this->M_master->hapus_data('m_pegawai', array('id_pegawai' => $id_pegawai));
            }

            echo json_encode($aksi);
        }

        // ambil data pegawai
        public function ambil_data_pegawai($id_pegawai)
        {
            $data = $this->M_master->cari_data('m_pegawai', array("id_pegawai" => $id_pegawai))->row_array();

            echo json_encode($data);
        }

    // halaman user
        public function user()
        {
            $data = ['menu'         => 'Master', 
                     'page'         => 'Master User',
                    //  'pegawai'      => $this->M_master->get_data_order('m_pegawai', 'nama_pegawai', 'asc')->result_array(),
                     'pegawai'   => $this->M_master->get_pegawai_user()->result_array()
                    ];

            $this->template->load('layout/template', 'master/V_user', $data);
        }

        // menampilkan list user 
        public function tampil_data_user()
        {
            $list = $this->M_master->get_data_user();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                if ($o['status'] == 1) {
                    $status = "<span class='badge badge-primary'>Aktif</span>";
                } else {
                    $status = "<span class='badge badge-danger'>Tidak</span>";
                }

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_pegawai'];
                $tbody[]    = $o['username'];
                $tbody[]    = "<div align='center'>".$status."</div>";
                $tbody[]    = "<a href='#' class='mr-3 text-primary edit-user' data-toggle='tooltip' data-placement='top' title='Ubah' data-id='".$o['id_user']."'><i class='mdi mdi-pencil mdi-24px'></i></a><a href='#' class='text-danger hapus-user' data-toggle='tooltip' data-placement='top' title='Hapus' data-id='".$o['id_user']."' user='".$o['username']."'><i class='mdi mdi-delete mdi-24px'></i></a>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_master->jumlah_semua_user(),
                        "recordsFiltered"  => $this->M_master->jumlah_filter_user(),   
                        "data"             => $data
                    ];

            echo json_encode($output);
        }

        // aksi proses simpan data user
        public function simpan_data_user()
        {
            $aksi           = $this->input->post('aksi');
            $id_user        = $this->input->post('id_user');
            $id_pegawai     = $this->input->post('id_pegawai');
            $username       = $this->input->post('username');
            $password       = $this->input->post('password');
            $password_lama  = $this->input->post('password_lama');
            $status         = $this->input->post('status');
            $id_pegawai_t   = $this->input->post('id_pegawai_t');

            if ($aksi == 'Tambah') {
                $id_pegawai = $id_pegawai;
            } else {
                $id_pegawai = $id_pegawai_t;
            }
            

            $data = ['username'     => $username,
                     'password'     => ($password == '') ? $password_lama : password_hash($password, PASSWORD_DEFAULT),
                     'id_pegawai'   => $id_pegawai,
                     'status'       => $status,
                     'add_time'     => date("Y-m-d H:i:s", now('Asia/Jakarta'))
                    ];

            if ($aksi == 'Tambah') {
                $this->M_master->input_data('m_user', $data);
            } elseif ($aksi == 'Ubah') {
                $this->M_master->ubah_data('m_user', $data, array('id_user' => $id_user));
            } elseif ($aksi == 'Hapus') {
                $this->M_master->hapus_data('m_user', array('id_user' => $id_user));
            }

            // menampilkan option list pegawai
            $list = $this->M_master->get_pegawai_user()->result_array();

            $option = '';

            foreach ($list as $l) {
                $option .= "<option value='".$l['id_pegawai']."'>".$l['nama_pegawai']."</option>";
            }

            echo json_encode(['status'  => TRUE, 'aksi' => $aksi, 'list_pegawai' => $option]);
        }

        // ambil data user
        public function ambil_data_user($id_user)
        {
            $data = $this->M_master->cari_data_user($id_user)->row_array();

            echo json_encode($data);
        }

    
    // 16-11-2021
    // halaman role
    public function role()
    {
        $data = ['menu' => 'Master', 
                'page' => 'Master Role'
                ];

        $this->template->load('layout/template', 'master/V_role', $data);
    }
    
    // menampilkan list role 
    public function tampil_data_role()
    {
        $list = $this->M_master->get_data_role();

        $data = array();

        $no   = $this->input->post('start');

        foreach ($list as $o) {
            $no++;
            $tbody = array();

            $tbody[]    = "<div align='center'>".$no.".</div>";
            $tbody[]    = $o['nama_role'];
            $tbody[]    = "<a href='#' class='mr-3 text-primary edit-role' data-toggle='tooltip' data-placement='top' title='Ubah' data-id='".$o['id_role']."'><i class='mdi mdi-pencil mdi-24px'></i></a><a href='#' class='text-danger hapus-role' data-toggle='tooltip' data-placement='top' title='Hapus' data-id='".$o['id_role']."' role='".$o['nama_role']."'><i class='mdi mdi-delete mdi-24px'></i></a>";
            $data[]     = $tbody;
        }

        $output = [ "draw"             => $_POST['draw'],
                    "recordsTotal"     => $this->M_master->jumlah_semua_role(),
                    "recordsFiltered"  => $this->M_master->jumlah_filter_role(),   
                    "data"             => $data
                ];

        echo json_encode($output);
    }

    // aksi proses simpan data role
    public function simpan_data_role()
    {
        $aksi           = $this->input->post('aksi');
        $id_role     = $this->input->post('id_role');
        $role        = $this->input->post('nama_role');

        $data = ['nama_role' => $role,
                    'add_time'     => date("Y-m-d H:i:s", now('Asia/Jakarta'))
                ];

        if ($aksi == 'Tambah') {
            $this->M_master->input_data('m_role', $data);
        } elseif ($aksi == 'Ubah') {
            $this->M_master->ubah_data('m_role', $data, array('id_role' => $id_role));
        } elseif ($aksi == 'Hapus') {
            $this->M_master->hapus_data('m_role', array('id_role' => $id_role));
        }

        echo json_encode($aksi);
    }

    // ambil data role
    public function ambil_data_role($id_role)
    {
        $data = $this->M_master->cari_data('m_role', array("id_role" => $id_role))->row_array();

        echo json_encode($data);
    }

}

/* End of file C_master.php */
