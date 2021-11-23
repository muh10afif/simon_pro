<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class C_kelola_modul extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_kelola_modul'));
        $this->cek_login_lib->logged_in_false();
        $this->posisi       = $this->session->userdata('posisi');
        $this->nama_jabatan = $this->session->userdata('nama_jabatan');
    }

    public function index()
    {
        $this->modul_tetap();
    }

    // halaman modul_tetap
    public function modul_tetap()
    {
        $data = ['menu' => 'Kelola Modul', 
                 'page' => 'Modul Tetap'
                ];

        if ($this->nama_jabatan == 'Direktur') {
            $this->template->load('layout/template', 'kelola_modul/V_modul_tetap_dir', $data);
        } else {
            $this->template->load('layout/template', 'kelola_modul/V_modul_tetap', $data);
        }

    }

    // 24-04-2020
        // menampilkan detail modul tetap posisi
        public function ambil_detail_modul_tetap()
        {
            $id_posisi = $this->input->post('id_posisi');

            // cari nama posisi 
            $cari = $this->M_kelola_modul->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

            $list = $this->M_kelola_modul->cari_data('modul_tetap', array('id_posisi' => $id_posisi))->result_array();

            $data = ['nama_posisi'  => $cari['nama_posisi'],
                     'id_posisi'    => $id_posisi,
                     'detail'       => $list  
                    ];

            $this->load->view('kelola_modul/V_detail_modul_tetap', $data);
            
        }

    // 06-04-2020

        // menampilkan data modul tetap
        public function tampil_modul_tetap()
        {
            $list = $this->M_kelola_modul->get_data_modul_tetap();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();
            
                if ($this->nama_jabatan == 'Manager') {
                    $dis = "<span style='cursor:pointer' class='text-primary lihat-modul' data-toggle='tooltip' data-placement='top' title='Lihat Modul' data-id='".$o['id_posisi']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                } else {
                    if ($o['jml_modul'] != 0) {
                        $dis = "<span style='cursor:pointer' class='text-primary lihat-modul' data-toggle='tooltip' data-placement='top' title='Lihat Modul' data-id='".$o['id_posisi']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                    } else {
                        $dis = "";
                    }
                }

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_posisi'];
                $tbody[]    = "<code style='font-size:17px'>".$o['jml_modul']."</code>";
                $tbody[]    = $dis;
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_kelola_modul->jumlah_semua_modul_tetap(),
                        "recordsFiltered"  => $this->M_kelola_modul->jumlah_filter_modul_tetap(),   
                        "data"             => $data
                    ];

            echo json_encode($output);  
        }

        // menampilkan data list modul tetap
        public function tampil_list_modul_tetap($id_posisi)
        {
            $list = $this->M_kelola_modul->cari_data('modul_tetap', array('id_posisi' => $id_posisi))->result_array();

            $no =1;
            foreach ($list as $v) {
                $tbody = array();

                $tbody[] = "<div align='center'>".$no++.".</div>";
                $tbody[] = $v['nama_modul'];
                $tbody[] = "<div align='center'><code style='font-size:17px'>".$v['persentase']."%</code></div>";
                $tbody[] = "<a href='#' class='mr-3 text-primary edit-modul' data-toggle='tooltip' data-placement='top' title='Ubah' data-id='".$v['id_modul_tetap']."'><i class='mdi mdi-pencil mdi-24px'></i></a><a href='#' class='text-danger hapus-modul' data-toggle='tooltip' data-placement='top' title='Hapus' data-id='".$v['id_modul_tetap']."' modul='".$v['nama_modul']."'><i class='mdi mdi-delete mdi-24px'></i></a>";
                $data[]  = $tbody; 
            }

            if ($list) {
                echo json_encode(array('data'=> $data));
            }else{
                echo json_encode(array('data'=> 0));
            }
        }

        // ambil data detail modul
        public function ambil_data_list_modul_tetap()
        {
            $id_posisi = $this->input->post('id_posisi');

            $data = $this->M_kelola_modul->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

            // cari sum persentase
            $data_2 = $this->M_kelola_modul->get_jumlah_persentase($id_posisi)->row_array();

            if ($data_2['jml_persentase'] == null) {
                $max = 100;
            } else {
                $max = 100 - $data_2['jml_persentase'];
            }

            $data = ['id_posisi'        => $data['id_posisi'], 
                     'nama_posisi'      => $data['nama_posisi'],
                     'jml_persentase'   => $max
                    ];

            echo json_encode($data);
        }

        // aksi proses simpan data modul tetap
        public function simpan_data_modul_tetap()
        {
            $aksi               = $this->input->post('aksi');
            $id_modul_tetap     = $this->input->post('id_modul_tetap');
            $id_posisi          = $this->input->post('id_posisi');
            $nama_modul         = $this->input->post('nama_modul');
            $persentase         = $this->input->post('persentase');

            $data = ['nama_modul'   => $nama_modul,
                     'persentase'   => $persentase,
                     'id_posisi'    => $id_posisi,
                     'add_time'     => date("Y-m-d H:i:s", now('Asia/Jakarta'))
                    ];

            if ($aksi == 'Tambah') {
                $this->M_kelola_modul->input_data('modul_tetap', $data);
            } elseif ($aksi == 'Ubah') {
                $this->M_kelola_modul->ubah_data('modul_tetap', $data, array('id_modul_tetap' => $id_modul_tetap));
            } elseif ($aksi == 'Hapus') {
                $this->M_kelola_modul->hapus_data('modul_tetap', array('id_modul_tetap' => $id_modul_tetap));
            }

            // cari sum persentase
            $data_2 = $this->M_kelola_modul->get_jumlah_persentase($id_posisi)->row_array();

            if ($data_2['jml_persentase'] == null) {
                $max = 100;
            } else {
                $max = 100 - $data_2['jml_persentase'];
            }

            $sts = ['aksi'              => $aksi,
                    'jml_persentase'    => $max
                    ];

            echo json_encode($sts);
        }

        // ambil data modul
        public function ambil_data_modul_tetap($id_modul_tetap)
        {
            $data = $this->M_kelola_modul->cari_data('modul_tetap', array("id_modul_tetap" => $id_modul_tetap))->row_array();

            // cari sum persentase
            $data_2 = $this->M_kelola_modul->get_jumlah_persentase($data['id_posisi'])->row_array();

            if ($data_2['jml_persentase'] == null) {
                $max = 100;
            } else {
                $max = (100 - $data_2['jml_persentase']) + $data['persentase'];
            }

            $data = ['id_modul_tetap'   => $data['id_modul_tetap'], 
                     'nama_modul'       => $data['nama_modul'],
                     'persentase'       => $data['persentase'],
                     'jml_persentase'   => $max
                    ];

            echo json_encode($data);
        }

        // ambil jml persentase
        public function ambil_jml_persentase($id_posisi)
        {
            // cari sum persentase
            $data_2 = $this->M_kelola_modul->get_jumlah_persentase($id_posisi)->row_array();

            if ($data_2['jml_persentase'] == null) {
                $max = 100;
            } else {
                $max = 100 - $data_2['jml_persentase'];
            }

            $data = ['jml_persentase'   => $max
                    ];

            echo json_encode($data);
        }

    // halaman modul_projek
    public function modul_projek()
    {
        if ($this->nama_jabatan == 'Manager') {
            $menu = 'Kelola Modul';
        } else {
            $menu = 'Kelola Projek';
        }
        $data = ['menu'     => $menu, 
                 'page'     => 'Modul Projek',
                 'posisi'   => $this->M_kelola_modul->cari_data('m_posisi', array('jenis_modul' => 'Modul Projek'))->result_array(),
                 'id_posisi'=> $this->posisi
                ];

        if ($this->nama_jabatan == 'Manager') {
            $this->template->load('layout/template', 'kelola_modul/V_modul_projek', $data);
        } else if ($this->nama_jabatan == 'Direktur') {
            $this->template->load('layout/template', 'kelola_modul/V_modul_projek_dir', $data);
        } else {
            $this->template->load('layout/template', 'kelola_modul/V_modul_projek_user', $data);
        }
        
    }

    // 06-04-2020

        // menampilkan data modul projek
        public function tampil_modul_projek()
        {
            $list = $this->M_kelola_modul->get_data_modul_projek();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                if ($this->nama_jabatan == 'Manager') {
                    $aksi = "<span style='cursor:pointer' class='text-primary lihat-modul' data-toggle='tooltip' data-placement='top' title='Lihat Modul' data-id='".$o['id_data_projek']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                } else {
                    if ($o['jml_modul'] != 0) {
                        $aksi = "<span style='cursor:pointer' class='text-primary lihat-modul' data-toggle='tooltip' data-placement='top' title='Lihat Modul' data-id='".$o['id_data_projek']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                    } else {
                        $aksi = "";
                    }
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
                $tbody[]    = $o['nama_projek'];
                $tbody[]    = $o['nama_sub_projek'];
                $tbody[]    = $status;
                $tbody[]    = ($o['tgl_dimulai'] != null) ? date("d-M-Y", strtotime($o['tgl_dimulai'])) : '';
                $tbody[]    = ($o['tgl_berakhir'] != null) ? date("d-M-Y", strtotime($o['tgl_berakhir'])) : '';
                $tbody[]    = "<code style='font-size:17px'>".$o['jml_modul']."</code>";
                $tbody[]    = $aksi;
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_kelola_modul->jumlah_semua_modul_projek(),
                        "recordsFiltered"  => $this->M_kelola_modul->jumlah_filter_modul_projek(),   
                        "data"             => $data
                    ];

            echo json_encode($output);  
        }

        // menampilkan data modul projek
        public function tampil_modul_projek_user()
        {
            $list = $this->M_kelola_modul->get_data_modul_projek();

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

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_projek'];
                $tbody[]    = $o['nama_sub_projek'];
                $tbody[]    = $status;
                $tbody[]    = "<span style='cursor:pointer' class='text-primary lihat-modul' data-toggle='tooltip' data-placement='top' title='Lihat Modul' jns_modul='".$o['jenis_modul']."' data-id='".$o['id_data_projek']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_kelola_modul->jumlah_semua_modul_projek(),
                        "recordsFiltered"  => $this->M_kelola_modul->jumlah_filter_modul_projek(),   
                        "data"             => $data
                    ];

            echo json_encode($output);  
        }

    // 26-04-2020
        public function ambil_isi_modul()
        {
            $id_modul_projek = $this->input->post('id_modul_projek');

            $list = $this->M_kelola_modul->cari_data('isi_modul_projek', array('id_modul_projek' => $id_modul_projek))->result_array();

            $cari = $this->M_kelola_modul->cari_data('modul_projek', array('id_modul_projek' => $id_modul_projek))->row_array();
            
            $data = ['nama_modul' => $cari['nama_modul'],
                     'detail'     => $list
                    ];

            $this->load->view('kelola_modul/V_isi_modul', $data);
            
        }

    // 07-04-2020

        // ambil detail projek
        public function ambil_data_detail_projek()
        {
            $id_data_projek = $this->input->post('id_data_projek');

            $data = $this->M_kelola_modul->cari_data_projek($id_data_projek)->row_array();

            $tgl_dimulai    = date("d-M-Y", strtotime($data['tgl_dimulai']));
            $tgl_berakhir   = date("d-M-Y", strtotime($data['tgl_berakhir']));

            array_push($data, array('tgl_dimulai' => $tgl_dimulai, 'tgl_berakhir' => $tgl_berakhir));

            echo json_encode($data);
        }

        // menampilkan modul
        public function tampil_list_modul()
        {
            $id_posisi      = $this->input->post('id_posisi');
            $id_data_projek = $this->input->post('id_data_projek');
            
            $list = array();

            if ($id_posisi == '' || $id_data_projek == '') {
                $cek = 0;
            } else {

                // $cari = $this->M_kelola_modul->cari_data('modul_tetap', array('id_posisi' => $id_posisi))->result_array();

                // if (!empty($cari)) {
                //     foreach ($cari as $c) {
                //         $list[] = [ 'nama_modul' => $c['nama_modul'],
                //                     'persentase' => $c['persentase'],
                //                     'id_modul'   => $c['id_modul_tetap'],
                //                     'jenis'      => 'modul_tetap'
                //                     ];
                //     }
                // }

                $cari2 = $this->M_kelola_modul->cari_data('modul_projek', array('id_data_projek' => $id_data_projek, 'id_posisi' => $id_posisi))->result_array();

                if (!empty($cari2)) {
                    foreach ($cari2 as $c) {
                        $list[] = [ 'nama_modul' => $c['nama_modul'],
                                    'persentase' => $c['persentase'],
                                    'id_modul'   => $c['id_modul_projek'],
                                    'jenis'      => 'modul_projek'
                                    ];
                    }
                }

                if (empty($cari) && empty($cari2)) {
                    $cek = 0;
                } else {
                    $cek = 1;
                }

            }

            $no =1;
            foreach ($list as $v) {
                $tbody = array();

                if ($v['jenis'] == 'modul_tetap') {
                    $hidden = 'hidden';
                } else {
                    if ($this->nama_jabatan == 'Direktur') {
                        
                        $cari = $this->M_kelola_modul->cari_data('isi_modul_projek', array('id_modul_projek' => $v['id_modul']))->num_rows();

                        if ($cari == 0) {
                            $hidden = 'hidden'; 
                        } else {
                            $hidden = ''; 
                        }

                    } else {
                        $hidden = '';
                    }
                }

                if($this->nama_jabatan == 'Manager') {
                    $aksi = "<span style='cursor:pointer' class='mr-3 text-success isi-modul' data-toggle='tooltip' data-placement='top' title='Isi Modul' jenis='".$v['jenis']."' data-id='".$v['id_modul']."' $hidden><i class='mdi mdi-plus-circle-multiple-outline mdi-24px'></i></span><span style='cursor:pointer' class='mr-3 text-primary edit-modul' data-toggle='tooltip' data-placement='top' title='Ubah' jenis='".$v['jenis']."' data-id='".$v['id_modul']."'><i class='mdi mdi-pencil mdi-24px'></i></span><span style='cursor:pointer' class='text-danger hapus-modul' data-toggle='tooltip' data-placement='top' title='Hapus' jenis='".$v['jenis']."' data-id='".$v['id_modul']."'><i class='mdi mdi-delete mdi-24px'></i></span>";
                } else if ($this->nama_jabatan == 'Direktur') {
                    $aksi = "<span style='cursor:pointer' class='text-success isi-modul' data-toggle='tooltip' data-placement='top' title='Isi Modul' jenis='".$v['jenis']."' data-id='".$v['id_modul']."' $hidden><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                } else {
                    $aksi = "<span style='cursor:pointer' class='text-success isi-modul' data-toggle='tooltip' data-placement='top' title='Isi Modul' jenis='".$v['jenis']."' data-id='".$v['id_modul']."' $hidden><i class='mdi mdi-plus-circle-multiple-outline mdi-24px'></i></span>";
                }

                $tbody[] = "<div align='center'>".$no++.".</div>";
                $tbody[] = $v['nama_modul'];
                $tbody[] = "<div align='center'><code style='font-size:17px'>".$v['persentase']."%</code></div>";
                $tbody[] = $aksi;
                $data[]  = $tbody; 
            }

            if ($cek == 1) {
                echo json_encode(array('data'=> $data));
            }else{
                echo json_encode(array('data'=> 0));
            }
        }

        // menampilkan modul
        public function tampil_list_modul2()
        {
            $id_posisi      = $this->posisi;

            $list = $this->M_kelola_modul->cari_data('modul_tetap', array('id_posisi' => $id_posisi))->result_array();

            $no =1;
            foreach ($list as $v) {
                $tbody = array();

                $tbody[] = "<div align='center'>".$no++.".</div>";
                $tbody[] = $v['nama_modul'];
                $tbody[] = "<div align='center'><code style='font-size:17px'>".$v['persentase']."%</code></div>";
                $data[]  = $tbody; 
            }

            if ($list) {
                echo json_encode(array('data'=> $data));
            }else{
                echo json_encode(array('data'=> 0));
            }
        }

        // ambil detail
        public function ambil_data_list_modul()
        {
            $id_posisi      = $this->input->post('id_posisi');
            $id_data_projek = $this->input->post('id_data_projek');

            $dt = $this->M_kelola_modul->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

            // cari sum persentase
            $data_2 = $this->M_kelola_modul->get_jumlah_persentase($id_posisi)->row_array();
            $data_3 = $this->M_kelola_modul->get_jumlah_persentase_projek($id_data_projek, $id_posisi)->row_array();

            $jml_p = $data_2['jml_persentase'] + $data_3['jml_persentase'];

            // if ($jml_p == null) {
            //     $max = 100;
            // } else {
            //     $max = 100 - $jml_p;
            // }

            if ($dt['jenis_modul'] == 'Modul Tetap') {
                $max = 100 - $data_2['jml_persentase'];
            } else {
                $max = 100 - $data_3['jml_persentase'];
            }

            $data = [   'id_posisi'        => $dt['id_posisi'], 
                        'nama_posisi'      => $dt['nama_posisi'],
                        'jml_persentase'   => $max
                    ];

            echo json_encode($data);
        }

        // aksi proses simpan data modul projek
        public function simpan_data_modul_projek()
        {
            $aksi               = $this->input->post('aksi');
            $id_modul           = $this->input->post('id_modul');
            $id_data_projek     = $this->input->post('id_data_projek');
            $id_posisi          = $this->input->post('id_posisi2');
            $nama_modul         = $this->input->post('nama_modul');
            $persentase         = $this->input->post('persentase');
            $jenis1             = $this->input->post('jenis');

            if ($jenis1 == '') {
                $jenis = 'modul_projek';
            } else {
                $jenis = $jenis1;
            }

            $data = ['nama_modul'       => $nama_modul,
                        'persentase'       => $persentase,
                        'id_posisi'        => $id_posisi,
                        'id_data_projek'   => $id_data_projek,
                        'add_time'     => date("Y-m-d H:i:s", now('Asia/Jakarta'))
                    ];

            if ($aksi == 'Tambah') {
                $this->M_kelola_modul->input_data("$jenis", $data);
            } elseif ($aksi == 'Ubah') {
                $this->M_kelola_modul->ubah_data("$jenis", $data, array("id_$jenis" => $id_modul));
            } elseif ($aksi == 'Hapus') {
                $this->M_kelola_modul->hapus_data("$jenis", array("id_$jenis" => $id_modul));
            }

            // cari sum persentase
            // $data_2 = $this->M_kelola_modul->get_jumlah_persentase($id_posisi)->row_array();
            $data_3 = $this->M_kelola_modul->get_jumlah_persentase_projek($id_data_projek, $id_posisi)->row_array();

            // $jml_p = $data_2['jml_persentase'] + $data_3['jml_persentase'];

            // if ($jml_p == null) {
            //     $max = 100;
            // } else {
            //     $max = (100 - $jml_p) + $data['persentase'];
            // }

            if ($data_3['jml_persentase'] == null) {
                $max = 100;
            } else {
                $max = 100 - $data_3['jml_persentase'];
            }

            $sts = ['aksi'              => $aksi,
                    'jml_persentase'    => $max
                    ];

            echo json_encode($sts);
        }

        // ambil data modul
        public function ambil_data_modul()
        {
            $id_modul       = $this->input->post('id_modul');
            $jenis          = $this->input->post('jenis');
            $id_posisi      = $this->input->post('id_posisi');
            $id_data_projek = $this->input->post('id_data_projek');

            $data = $this->M_kelola_modul->cari_data("$jenis", array("id_$jenis" => $id_modul))->row_array();

            // cari sum persentase
            // $data_2 = $this->M_kelola_modul->get_jumlah_persentase($id_posisi)->row_array();
            $data_3 = $this->M_kelola_modul->get_jumlah_persentase_projek($id_data_projek, $id_posisi)->row_array();

            // $jml_p = $data_2['jml_persentase'] + $data_3['jml_persentase'];

            // if ($jml_p == null) {
            //     $max = 100;
            // } else {
            //     $max = (100 - $jml_p) + $data['persentase'];
            // }

            if ($data_3['jml_persentase'] == null) {
                $max = 100;
            } else {
                $max = (100 - $data_3['jml_persentase']) + $data['persentase'];
            }

            $data = ['id_modul'         => $data["id_$jenis"], 
                        'nama_modul'       => $data['nama_modul'],
                        'persentase'       => $data['persentase'],
                        'jml_persentase'   => $max
                    ];

            echo json_encode($data);
        }

        // ambil jml persentase
        public function ambil_jml_persentase_projek()
        {
            $id_posisi      = $this->input->post('id_posisi');
            $id_data_projek = $this->input->post('id_data_projek');

            // cari sum persentase
            // $data_2 = $this->M_kelola_modul->get_jumlah_persentase($id_posisi)->row_array();
            $data_3 = $this->M_kelola_modul->get_jumlah_persentase_projek($id_data_projek, $id_posisi)->row_array();

            // $jml_p = $data_2['jml_persentase'] + $data_3['jml_persentase'];

            // if ($jml_p == null) {
            //     $max = 100;
            // } else {
            //     $max = (100 - $jml_p) + $data['persentase'];
            // }

            if ($data_3['jml_persentase'] == null) {
                $max = 100;
            } else {
                $max = 100 - $data_3['jml_persentase'];
            }

            $data = ['jml_persentase'   => $max
                    ];

            echo json_encode($data);
        }

        // menampilkan list isi modul projek
        public function tampil_list_isi_modul()
        {
            $id_modul_projek = $this->input->post('id_modul_projek');
            
            $list = $this->M_kelola_modul->cari_data('isi_modul_projek', array('id_modul_projek' => $id_modul_projek))->result_array();

            $no =1;
            foreach ($list as $v) {
                $tbody = array();

                $tbody[] = "<div align='center'>".$no++.".</div>";
                $tbody[] = $v['isi_modul'];
                $tbody[] = $v['keterangan'];
                $tbody[] = "<span style='cursor:pointer' class='mr-3 text-primary edit-isi_modul' data-toggle='tooltip' data-placement='top' title='Ubah' data-id='".$v['id_isi_modul']."'><i class='mdi mdi-pencil mdi-24px'></i></span><span style='cursor:pointer' class='text-danger hapus-isi_modul' data-toggle='tooltip' data-placement='top' title='Hapus' data-id='".$v['id_isi_modul']."'><i class='mdi mdi-delete mdi-24px'></i></span>";
                $data[]  = $tbody; 
            }

            if ($list) {
                echo json_encode(array('data'=> $data));
            }else{
                echo json_encode(array('data'=> 0));
            }
        }

        // mengambil nama modul
        public function ambil_data_nama_modul()
        {
            $id_modul_projek    = $this->input->post('id_modul_projek');
            $id_posisi          = $this->input->post('id_posisi');

            $data = $this->M_kelola_modul->cari_data('modul_projek', array('id_modul_projek' => $id_modul_projek, 'id_posisi' => $id_posisi))->row_array();
            
            echo json_encode($data);
        }

        // aksi proses simpan data isi modul projek
        public function simpan_data_isi_modul_projek()
        {
            $aksi               = $this->input->post('aksi');
            $id_isi_modul       = $this->input->post('id_isi_modul');
            $id_modul_projek    = $this->input->post('id_modul_projek');
            $isi_modul          = $this->input->post('isi_modul');
            $keterangan         = $this->input->post('keterangan');

            $data = [   'isi_modul'        => $isi_modul,
                        'keterangan'       => $keterangan,
                        'id_modul_projek'  => $id_modul_projek,
                        'add_time'         => date("Y-m-d H:i:s", now('Asia/Jakarta'))
                    ];

            if ($aksi == 'Tambah') {
                $this->M_kelola_modul->input_data("isi_modul_projek", $data);
            } elseif ($aksi == 'Ubah') {
                $this->M_kelola_modul->ubah_data("isi_modul_projek", $data, array("id_isi_modul" => $id_isi_modul));
            } elseif ($aksi == 'Hapus') {
                $this->M_kelola_modul->hapus_data("isi_modul_projek", array("id_isi_modul" => $id_isi_modul));
            }

            echo json_encode($aksi);
        }

        // ambil data modul
        public function ambil_data_isi_modul()
        {
            $id_isi_modul   = $this->input->post('id_isi_modul');

            $data = $this->M_kelola_modul->cari_data("isi_modul_projek", array("id_isi_modul" => $id_isi_modul))->row_array();

            echo json_encode($data);
        }


}

/* End of file C_kelola_modul.php */
