<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class C_kelola_projek extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_kelola_projek'));
        $this->cek_login_lib->logged_in_false();
        $this->posisi       = $this->session->userdata('posisi');
        $this->nama_jabatan = $this->session->userdata('nama_jabatan');
    }

    public function index()
    {
        $this->data_induk_projek();
    }

    // halaman data_induk_projek
        public function data_induk_projek()
        {
            $data = ['menu'         => 'Kelola Projek', 
                     'page'         => 'Data Induk Projek',
                     'posisi'       => $this->posisi,
                     'nm_jabatan'   => $this->nama_jabatan
                    ];

            $this->template->load('layout/template', 'kelola_projek/V_data_induk_projek', $data);
        }

        // menampilkan list dt_in_projek 
        public function tampil_data_dt_in_projek()
        {
            $list = $this->M_kelola_projek->get_data_dt_in_projek();

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
                $tbody[]    = $o['nama_projek'];
                $tbody[]    = $o['instansi'];
                $tbody[]    = ($o['tgl_dimulai'] != null) ? date("d-M-Y", strtotime($o['tgl_dimulai'])) : '';
                $tbody[]    = ($o['tgl_berakhir'] != null) ? date("d-M-Y", strtotime($o['tgl_berakhir'])) : '';
                $tbody[]    = wordwrap($o['keterangan'], 40, '<br />', true);
                $tbody[]    = "<div align='center'>".$status."</div>";

                // <span style='cursor:pointer' class='text-warning status-projek mr-3' data-toggle='tooltip' data-placement='top' title='Ubah status list Projek' data-id='".$o['id_data_projek']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>

                if ($this->nama_jabatan == 'Manager') {
                    $tbody[]    = "<a href='#' class='mr-3 text-primary edit-dt_in_projek' data-toggle='tooltip' data-placement='top' title='Ubah' data-id='".$o['id_induk_projek']."'><i class='mdi mdi-pencil mdi-24px'></i></a><a href='#' class='text-danger hapus-dt_in_projek' data-toggle='tooltip' data-placement='top' title='Hapus' data-id='".$o['id_induk_projek']."' nama_projek='".$o['nama_projek']."'><i class='mdi mdi-delete mdi-24px'></i></a>";
                }
                
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_kelola_projek->jumlah_semua_dt_in_projek(),
                        "recordsFiltered"  => $this->M_kelola_projek->jumlah_filter_dt_in_projek(),   
                        "data"             => $data
                    ];

            echo json_encode($output);
        }

        // aksi proses simpan data dt_in_projek
        public function simpan_data_dt_in_projek()
        {
            $form_in_pro  = $this->input->post('form_dt_in_projek');

            $form = array();
            parse_str($form_in_pro, $form);

            $aksi               = $form['aksi'];
            $id_dt_in_projek    = $form['id_induk_projek'];
            $nama_projek        = $form['nama_projek'];
            $instansi           = $form['instansi'];
            $tgl_dimulai        = $form['tgl_dimulai'];
            $tgl_berakhir       = $form['tgl_berakhir'];
            $keterangan         = $form['keterangan'];
            $status             = $form['status'];
            // $role               = $form['role'];
            
            $role       = json_decode($this->input->post('data_id_role'), true);     

            if ($tgl_dimulai == '') {
                $tgl_dimulai = null;
            } else {
                $tgl_dimulai = date("Y-m-d", strtotime($tgl_dimulai));
            }
            if ($tgl_berakhir == '') {
                $tgl_berakhir = null;
            } else {
                $tgl_berakhir = date("Y-m-d", strtotime($tgl_berakhir));
            }

            $data = ['nama_projek'      => $nama_projek,
                     'instansi'         => $instansi, 
                     'tgl_dimulai'      => $tgl_dimulai, 
                     'tgl_berakhir'     => $tgl_berakhir, 
                     'keterangan'       => $keterangan, 
                     'status'           => $status, 
                     'add_time'         => date("Y-m-d H:i:s", now('Asia/Jakarta'))
                    ];

            if ($aksi == 'Tambah') {
                $this->db->insert('data_induk_projek', $data);
                $id_induk = $this->db->insert_id();

                if (!empty($role)) {
                    foreach ($role as $r) {

                        if ($this->input->post("role_$r") != '') {
                            $dt_role[] = [  'id_induk_projek'   => $id_induk,
                                            'nama_role'         => $this->input->post("role_$r")
                                         ];
                        }
                        
                    }

                    $this->db->insert_batch('role_projek', $dt_role);
                }
                
            } elseif ($aksi == 'Ubah') {
                $this->M_kelola_projek->ubah_data('data_induk_projek', $data, array('id_induk_projek' => $id_dt_in_projek));

                $this->db->delete('role_projek', array('id_induk_projek' => $id_dt_in_projek));

                if (!empty($role)) {
                    foreach ($role as $r) {

                        if ($this->input->post("role_$r") != '') {
                            $dt_role[] = [  'id_induk_projek'   => $id_dt_in_projek,
                                            'nama_role'         => $this->input->post("role_$r")
                                         ];
                        }
                        
                    }

                    $this->db->insert_batch('role_projek', $dt_role);
                }
                
            } 
            
            $aksi = $this->input->post('aksi');
            
            if ($aksi) {

                $id_dt_in_projek = $this->input->post('id_induk_projek');

                $this->M_kelola_projek->hapus_data('data_induk_projek', array('id_induk_projek' => $id_dt_in_projek));
                $this->M_kelola_projek->hapus_data('role_projek', array('id_induk_projek' => $id_dt_in_projek));
            }

            echo json_encode($aksi);
        }

        // ambil data dt_in_projek
        public function ambil_data_dt_in_projek($id_dt_in_projek)
        {
            $data = $this->M_kelola_projek->cari_data('data_induk_projek', array("id_induk_projek" => $id_dt_in_projek))->row_array();

            if ($data['tgl_dimulai'] == '') {
                $tgl_dimulai = null;
            } else {
                $tgl_dimulai = date("d-M-Y", strtotime($data['tgl_dimulai']));
            }
            if ($data['tgl_berakhir'] == '') {
                $tgl_berakhir = null;
            } else {
                $tgl_berakhir = date("d-M-Y", strtotime($data['tgl_berakhir']));
            }

            // $cr_relasi_projek = $this->M_kelola_projek->cari_data('role_projek', array("id_induk_projek" => $id_dt_in_projek))->result_array();

            // array_push($data, array('tgl_dimulai' => $tgl_dimulai, 'tgl_berakhir' => $tgl_berakhir));

            echo json_encode(['list' => $data, 'tgl_dimulai' => $tgl_dimulai, 'tgl_berakhir' => $tgl_berakhir]);
        }
    

    // halaman data_projek
        public function data_projek()
        {
            $data = ['menu'             => 'Kelola Projek', 
                     'page'             => 'Data Projek',
                     'dt_in_projek'     => $this->M_kelola_projek->get_data_order('data_induk_projek', 'nama_projek', 'asc')->result_array(),
                     'status_projek'    => $this->M_kelola_projek->get_data_order('status_projek', 'id_status_projek', 'asc')->result_array()
                    ];

            if ($this->nama_jabatan == 'Direktur') {
                $this->template->load('layout/template', 'kelola_projek/V_data_projek_dir', $data);
            } else {
                $this->template->load('layout/template', 'kelola_projek/V_data_projek', $data);
            }
        }

        // menampilkan list dt_projek 
        public function tampil_data_dt_projek()
        {
            $list = $this->M_kelola_projek->get_data_dt_projek();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                if ($o['status1'] == 1) {
                    $status = "<span class='badge badge-primary'>".$o['nama_status']."</span>";
                } else if ($o['status1'] == 2) {
                    $status = "<span class='badge badge-danger'>".$o['nama_status']."</span>";
                } else if ($o['status1'] == 3) {
                    $status = "<span class='badge badge-warning'>".$o['nama_status']."</span>";
                } else if ($o['status1'] == 4) {
                    $status = "<span class='badge badge-success text-white'>".$o['nama_status']."</span>";
                } else if ($o['status1'] == 5) {
                    $status = "<span class='badge badge-info'>".$o['nama_status']."</span>";
                } else if ($o['status1'] == 6) {
                    $status = "<span class='badge badge-warning text-white'>".$o['nama_status']."</span>";
                } else if ($o['status1'] == 7) {
                    $status = "<span class='badge badge-success text-white'>".$o['nama_status']."</span>";
                } else if ($o['status1'] == 8) {
                    $status = "<span class='badge badge-danger text-white'>".$o['nama_status']."</span>";
                } else if ($o['status1'] == 9) {
                    $status = "<span class='badge badge-dark text-white'>".$o['nama_status']."</span>";
                }

                $cr_role = $this->M_kelola_projek->cari_data('role_projek', ['id_data_projek' => $o['id_data_projek']])->result_array();

                $list_role = [];
                foreach ($cr_role as $c) {
                    array_push($list_role, $c['nama_role']);
                }

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_projek'];
                $tbody[]    = $o['nama_sub_projek'];
                $tbody[]    = "<a href='".$o['link']."' target='_blank'>".wordwrap($o['link'], 40, '<br />', true)."</a>";
                $tbody[]    = wordwrap(implode(', ', $list_role), 40, '<br />', true);
                $tbody[]    = "<div align='center'>".$status."</div>";
                $tbody[]    = "<a href='#' class='mr-3 text-primary edit-dt_projek' data-toggle='tooltip' data-placement='top' title='Ubah' data-id='".$o['id_data_projek']."'><i class='mdi mdi-pencil mdi-24px'></i></a><a href='#' class='text-danger hapus-dt_projek' data-toggle='tooltip' data-placement='top' title='Hapus' data-id='".$o['id_data_projek']."' projek='".$o['nama_projek']."'><i class='mdi mdi-delete mdi-24px'></i></a>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_kelola_projek->jumlah_semua_dt_projek(),
                        "recordsFiltered"  => $this->M_kelola_projek->jumlah_filter_dt_projek(),   
                        "data"             => $data
                    ];

            echo json_encode($output);
        }

        // aksi proses simpan data dt_projek
        public function simpan_data_dt_projek()
        {
            $form_pro  = $this->input->post('form_dt_projek');

            $form = array();
            parse_str($form_pro, $form);

            $aksi               = $form['aksi'];
            $id_dt_projek       = $form['id_dt_projek'];
            $id_dt_in_projek    = $form['id_induk_projek'];
            $nama_sub_projek    = $form['nama_sub_projek'];
            $link               = $form['link_projek'];
            $status             = $form['status2'];

            $role               = json_decode($this->input->post('data_id_role'), true);   

            $data = ['nama_sub_projek'  => $nama_sub_projek,
                     'id_induk_projek'  => $id_dt_in_projek,
                     'link'             => $link,
                     'status'           => $status, 
                     'add_time'         => date("Y-m-d H:i:s", now('Asia/Jakarta'))
                    ];

            if ($aksi == 'Tambah') {
                $this->db->insert('data_projek', $data);
                $id_dt_projek = $this->db->insert_id();                

                if (!empty($role)) {
                    foreach ($role as $r) {

                        if ($this->input->post("role_$r") != '') {
                            $dt_role[] = [  'id_data_projek'    => $id_dt_projek,
                                            'nama_role'         => $this->input->post("role_$r")
                                         ];
                        }
                        
                    }

                    $this->db->insert_batch('role_projek', $dt_role);
                }
                
            } elseif ($aksi == 'Ubah') {
                $this->M_kelola_projek->ubah_data('data_projek', $data, array('id_data_projek' => $id_dt_projek));

                $this->db->delete('role_projek', array('id_data_projek' => $id_dt_projek));

                if (!empty($role)) {
                    foreach ($role as $r) {

                        if ($this->input->post("role_$r") != '') {
                            $dt_role[] = [  'id_data_projek'    => $id_dt_projek,
                                            'nama_role'         => $this->input->post("role_$r")
                                         ];
                        }
                        
                    }

                    $this->db->insert_batch('role_projek', $dt_role);
                }
                
            }

            $aksi = $this->input->post('aksi');
            
            if ($aksi) {

                $id_dt_projek = $this->input->post('id_data_projek');

                $this->M_kelola_projek->hapus_data('data_projek', array('id_data_projek' => $id_dt_projek));
                $this->M_kelola_projek->hapus_data('role_projek', array('id_data_projek' => $id_dt_projek));
            }

            echo json_encode($aksi);
        }

        // ambil data dt_projek
        public function ambil_data_dt_projek($id_dt_projek)
        {
            $data = $this->M_kelola_projek->cari_data('data_projek', array("id_data_projek" => $id_dt_projek))->row_array();

            $cr_relasi_projek = $this->M_kelola_projek->cari_data('role_projek', array("id_data_projek" => $id_dt_projek))->result_array();

            echo json_encode(['list' => $data, 'role_projek' => $cr_relasi_projek]);
        }

    // halaman tim_projek
        public function tim_projek()
        {
            $data = ['menu'        => 'Kelola Projek', 
                    'page'         => 'Tim Projek',
                    'pegawai'      => $this->M_kelola_projek->get_data_order('m_pegawai', 'nama_pegawai', 'asc')->result_array(),
                    'posisi'       => $this->posisi
                    ];

            $this->template->load('layout/template', 'kelola_projek/V_tim_projek', $data);
        }

        // 06-04-2020
            public function tampil_tim_induk_projek()
            {
                $list = $this->M_kelola_projek->get_data_dt_projek_tim();

                $data = array();

                $no   = $this->input->post('start');

                foreach ($list as $o) {
                    $no++;
                    $tbody = array();

                    if ($this->posisi == 4) {
                        $aksi = "<a href='#' class='mr-3 text-primary lihat-projek' data-toggle='tooltip' data-placement='top' title='Penunjukan PIC' data-id='".$o['id_data_projek']."'><i class='mdi mdi-account-star mdi-24px'></i></a>";
                    } else {
                        $aksi = "<a href='#' class='text-primary lihat-projek' data-toggle='tooltip' data-placement='top' title='Lihat Tim' data-id='".$o['id_data_projek']."'><i class='mdi mdi-information-outline mdi-24px'></i></a>";
                    }

                    if ($o['status1'] == 1) {
                        $status = "<span class='badge badge-primary'>".$o['nama_status']."</span>";
                    } else if ($o['status1'] == 2) {
                        $status = "<span class='badge badge-danger'>".$o['nama_status']."</span>";
                    } else if ($o['status1'] == 3) {
                        $status = "<span class='badge badge-warning'>".$o['nama_status']."</span>";
                    } else if ($o['status1'] == 4) {
                        $status = "<span class='badge badge-success text-white'>".$o['nama_status']."</span>";
                    } else if ($o['status1'] == 5) {
                        $status = "<span class='badge badge-info'>".$o['nama_status']."</span>";
                    } else if ($o['status1'] == 6) {
                        $status = "<span class='badge badge-warning text-white'>".$o['nama_status']."</span>";
                    } else if ($o['status1'] == 7) {
                        $status = "<span class='badge badge-success text-white'>".$o['nama_status']."</span>";
                    } else if ($o['status1'] == 8) {
                        $status = "<span class='badge badge-danger text-white'>".$o['nama_status']."</span>";
                    } else if ($o['status1'] == 9) {
                        $status = "<span class='badge badge-dark text-white'>".$o['nama_status']."</span>";
                    }

                    $tbody[]    = "<div align='center'>".$no.".</div>";
                    $tbody[]    = $o['nama_sub_projek'];
                    $tbody[]    = ($o['tgl_dimulai'] != null) ? date("d-M-Y", strtotime($o['tgl_dimulai'])) : '';
                    $tbody[]    = ($o['tgl_berakhir'] != null) ? date("d-M-Y", strtotime($o['tgl_berakhir'])) : '';
                    $tbody[]    = $status;
                    $tbody[]    = "<code style='font-size:17px'>".$o['jml_tim']."</code>";
                    $tbody[]    = ($o['nama_pic'] == '') ? '-' : $o['nama_pic'];
                    $tbody[]    = $aksi;
                    $data[]     = $tbody;
                }

                $output = [ "draw"             => $_POST['draw'],
                            "recordsTotal"     => $this->M_kelola_projek->jumlah_semua_dt_projek_tim(),
                            "recordsFiltered"  => $this->M_kelola_projek->jumlah_filter_dt_projek_tim(),   
                            "data"             => $data
                        ];

                echo json_encode($output);
            }

            // menampilkan data data projek
            public function ambil_data_projek()
            {
                $id_data_projek = $this->input->post('id_data_projek');

                $data = $this->M_kelola_projek->cari_data_projek($id_data_projek)->row_array();

                $tgl_dimulai    = date("d-M-Y", strtotime($data['tgl_dimulai']));
                $tgl_berakhir   = date("d-M-Y", strtotime($data['tgl_berakhir']));

                array_push($data, array('tgl_dimulai' => $tgl_dimulai, 'tgl_berakhir' => $tgl_berakhir));

                // mengambil list karyawan yang belum punya projek
                $list = $this->M_kelola_projek->get_nama_pegawai_tim($id_data_projek)->result_array();

                $option = '';

                foreach ($list as $l) {
                    $option .= "<option value='".$l['id_pegawai']."'>".$l['nama_pegawai']."</option>";
                }

                $nm_jabatan = $this->nama_jabatan;

                array_push($data, array('list_pegawai' => $option, 'jml_pegawai' => count($list), 'nama_jabatan' => $nm_jabatan));
                
                echo json_encode($data);
                
            }

            // menampilkan data tim projek
            public function tampil_tim_projek($id_data_projek)
            {
                $list = $this->M_kelola_projek->cari_data_tim_projek($id_data_projek)->result_array();

                $no =1;
                foreach ($list as $v) {
                    $tbody = array();

                    if ($this->nama_jabatan == 'Manager') {
                        if ($v['status_pic'] == 1) {
                            $status_pic = "<span style='cursor:pointer' class='mr-3 text-success ubah-pic' data-toggle='tooltip' data-placement='top' title='Hapus PIC' status_pic='0' data-id='".$v['id_tim_projek']."'><i class='mdi mdi-account-star mdi-24px'></i></span><span style='cursor:pointer' class='text-danger hapus-data' data-toggle='tooltip' data-placement='top' title='Hapus' data-id='".$v['id_tim_projek']."'><i class='mdi mdi-delete mdi-24px'></i></span>";
                        } elseif ($v['status_pic'] == 0) {
                            $status_pic = "<span style='cursor:pointer' class='mr-3 text-danger ubah-pic' data-toggle='tooltip' data-placement='top' title='Ubah jadi PIC' status_pic='1' data-id='".$v['id_tim_projek']."'><i class='mdi mdi-account-off mdi-24px'></i></span><span style='cursor:pointer' class='text-danger hapus-data' data-toggle='tooltip' data-placement='top' title='Hapus' data-id='".$v['id_tim_projek']."'><i class='mdi mdi-delete mdi-24px'></i></span>";
                        } else {
                            $status_pic = " ";
                        }
                    } else {
                        if ($v['status_pic'] == 1) {
                            $status_pic = "<span class='badge badge-primary'>Ya</span>";
                        } else {
                            $status_pic = "<span class='badge badge-danger'>Tidak</span>";
                        }
                    }

                    $tbody[] = "<div align='center'>".$no++.".</div>";
                    $tbody[] = $v['nama_pegawai'];
                    $tbody[] = $v['nama_posisi'];
                    $tbody[] = $status_pic;
                    $data[]  = $tbody; 
                }

                if ($list) {
                    echo json_encode(array('data'=> $data));
                }else{
                    echo json_encode(array('data'=> 0));
                }
            }

            // menambahkan tim projek
            public function simpan_data_projek()
            {
                $id_data_projek = $this->input->post('id_data_projek');
                $id_pegawai     = $this->input->post('id_pegawai');
                $status_pic     = $this->input->post('status_pic');

                if ($status_pic == 1) {
                    // ubah semua ke 0
                    $this->M_kelola_projek->ubah_data('tim_projek', array('status_pic' => 0), array('id_data_projek' => $id_data_projek));
                }

                $data = ['id_data_projek'   => $id_data_projek,
                         'id_pegawai'       => $id_pegawai,
                         'status_pic'       => $status_pic,
                         'add_time'         => date("Y-m-d H:i:s", now('Asia/Jakarta'))
                        ];

                $this->M_kelola_projek->input_data('tim_projek', $data);

                // mengambil list karyawan yang belum punya projek
                $list = $this->M_kelola_projek->get_nama_pegawai_tim($id_data_projek)->result_array();

                $option = '';

                foreach ($list as $l) {
                    $option .= "<option value='".$l['id_pegawai']."'>".$l['nama_pegawai']."</option>";
                }

                echo json_encode(['status' => TRUE, 'list_pegawai' => $option, 'jml_pegawai' => count($list)]);
            }

            // hapus tim projek
            public function hapus_tim_projek()
            {
                $id_tim_projek  = $this->input->post('id_tim_projek');
                $id_data_projek = $this->input->post('id_data_projek');
                
                $this->M_kelola_projek->hapus_data('tim_projek', array('id_tim_projek' => $id_tim_projek));

                // mengambil list karyawan yang belum punya projek
                $list = $this->M_kelola_projek->get_nama_pegawai_tim($id_data_projek)->result_array();

                $option = '';

                foreach ($list as $l) {
                    $option .= "<option value='".$l['id_pegawai']."'>".$l['nama_pegawai']."</option>";
                }

                echo json_encode(['status' => TRUE, 'list_pegawai' => $option, 'jml_pegawai' => count($list)]);
            }

            // ubah pic tim projek
            public function ubah_pic_tim_projek()
            {
                $id_tim_projek  = $this->input->post('id_tim_projek');
                $status         = $this->input->post('status');
                $id_data_projek = $this->input->post('id_data_projek');

                if ($status == 1) {
                    $this->M_kelola_projek->ubah_data('tim_projek', array('status_pic' => 0), array('id_data_projek' => $id_data_projek));
                }

                // ubah data
                $this->M_kelola_projek->ubah_data('tim_projek', array('status_pic' => $status), array('id_tim_projek' => $id_tim_projek));

                echo json_encode(['status' => true]);
                
            }

}

/* End of file C_kelola_projek.php */
