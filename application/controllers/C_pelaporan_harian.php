<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class C_pelaporan_harian extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->cek_login_lib->logged_in_false();
        $this->load->model(array('M_pelaporan_harian', 'M_progress_projek'));
        $this->posisi       = $this->session->userdata('posisi');
        $this->nama_jabatan = $this->session->userdata('nama_jabatan');
    }

    public function index()
    {
        $this->laporan_per_projek();
    }

    public function laporan_per_projek()
    {
        $data = ['menu'     => 'Pelaporan Harian', 
                 'page'     => 'Laporan Per Projek',
                 'posisi'   => $this->posisi
                ];

        if ($this->nama_jabatan == 'Manager' || $this->nama_jabatan == 'Direktur') {
            $this->template->load('layout/template', 'pelaporan_harian/V_laporan_per_projek', $data);
        } else {
            $this->template->load('layout/template', 'pelaporan_harian/V_laporan_per_projek_user', $data);
        }

        
    }

    // 14-04-2020
        public function tampil_persentase_projek()
        {
            $list = $this->M_progress_projek->get_data_persentase_projek();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                // cari id_posisi selain manager
                // if ($this->posisi != 4) {
                //     $this->db->where('id_posisi', $this->posisi);
                // }
                // $this->db->where('id_posisi !=', 4);
                // $hasil = $this->db->get('m_posisi')->result_array();

                // mencari id_posisi 
                $hasil = $this->M_pelaporan_harian->get_posisi($o['id_data_projek'])->result_array();

                $angka = array();
                
                foreach ($hasil as $h) {

                    $jns = strtolower($h['jenis_modul']);

                    $jns_modul = str_replace(' ','_', $jns);

                    $list2 = $this->M_progress_projek->get_data_modul_pos($h['id_posisi'], $o['id_data_projek'], $jns_modul)->result_array();

                    $tot_progres = 0;
                    foreach ($list2 as $k) {
                        $tot_progres += $k['progres_modul'];
                    }

                    array_push($angka, $tot_progres);
                }

                $jml = array_sum($angka) / count($hasil);

                if (count($angka) == 0) {
                    $jml = "0.00";
                } else {
                    $jml = number_format($jml, '2');
                }

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_sub_projek'];
                // $tbody[]    = $o['instansi'];
                $tbody[]    = "<div align='center'><code style='font-size:17px'>".$jml."%</code></div>";
                $tbody[]    = "<span style='cursor:pointer' class='text-primary lihat-modul' data-toggle='tooltip' data-placement='top' title='Lihat Modul' data-id='".$o['id_data_projek']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_progress_projek->jumlah_semua_persentase_projek(),
                        "recordsFiltered"  => $this->M_progress_projek->jumlah_filter_persentase_projek(),   
                        "data"             => $data
                    ];

            echo json_encode($output);  
        }

        public function tampil_persentase_projek_all()
        {
            $list = $this->M_progress_projek->get_data_persentase_projek_all();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                // cari id_posisi selain manager
                // if ($this->posisi != 4) {
                //     $this->db->where('id_posisi', $this->posisi);
                // }
                // $this->db->where('id_posisi !=', 4);
                // $hasil = $this->db->get('m_posisi')->result_array();

                // mencari id_posisi 
                $hasil = $this->M_pelaporan_harian->get_posisi($o['id_data_projek'])->result_array();

                $angka = array();
                
                foreach ($hasil as $h) {

                    $jns = strtolower($h['jenis_modul']);

                    $jns_modul = str_replace(' ','_', $jns);

                    $list2 = $this->M_progress_projek->get_data_modul_pos($h['id_posisi'], $o['id_data_projek'], $jns_modul)->result_array();

                    $tot_progres = 0;
                    foreach ($list2 as $k) {
                        $tot_progres += $k['progres_modul'];
                    }

                    array_push($angka, $tot_progres);
                }

                $jml = array_sum($angka) / count($hasil);

                if (count($angka) == 0) {
                    $jml = "0.00";
                } else {
                    $jml = number_format($jml, '2');
                }

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_sub_projek'];
                // $tbody[]    = $o['instansi'];
                $tbody[]    = "<div align='center'><code style='font-size:17px'>".$jml."%</code></div>";
                $tbody[]    = "<span style='cursor:pointer' class='text-primary lihat-modul' data-toggle='tooltip' data-placement='top' title='Lihat Modul' data-id='".$o['id_data_projek']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_progress_projek->jumlah_semua_persentase_projek_all(),
                        "recordsFiltered"  => $this->M_progress_projek->jumlah_filter_persentase_projek_all(),   
                        "data"             => $data
                    ];

            echo json_encode($output);  
        }

        public function tes_projek()
        {
            $list = $this->M_pelaporan_harian->get_data_progres_pegawai(2)->result_array();

            print_r($list);
        }

        // menampilkan list tim projek
        public function tampil_list_tim()
        {
            $id_data_projek = $this->input->post('id_data_projek');
            
            $list = $this->M_pelaporan_harian->get_data_progres_pegawai($id_data_projek)->result_array();

            $no =1;
            foreach ($list as $v) {
                $tbody = array();

                $angka = array();

                $jns = strtolower($v['jenis_modul']);

                $jns_modul = str_replace(' ','_', $jns);

                $cari = $this->M_progress_projek->get_data_modul_pos_peg($v['id_posisi'], $v['id_data_projek'], $jns_modul, $v['id_pegawai'])->result_array();

                $tot_progres = 0;
                foreach ($cari as $k) {
                    $tot_progres += $k['progres_modul'];
                }

                array_push($angka, $tot_progres);

                $jml = array_sum($angka);
 
                $tbody[] = "<div align='center'>".$no++.".</div>";
                $tbody[] = $v['nama_pegawai'];
                $tbody[] = $v['nama_posisi'];
                $tbody[] = "<div align='center'><code style='font-size:17px'>".$jml."%</code></div>";
                $tbody[] = "<span style='cursor:pointer' class='text-primary lihat-laporan' data-toggle='tooltip' data-placement='top' title='Lihat Laporan' nm_pegawai = '".$v['nama_pegawai']."' id_posisi = '".$v['id_posisi']."' data-id='".$v['id_tim_projek']."' id_pegawai='".$v['id_pegawai']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                $data[]  = $tbody; 
            }

            if ($list) {
                echo json_encode(array('data'=> $data));
            }else{
                echo json_encode(array('data'=> 0));
            }
            
        }

        public function ambil_data_detail_projek_user()
        {
            $id_data_projek = $this->input->post('id_data_projek');
            $id_posisi      = $this->input->post('id_posisi');
            
            $data = $this->M_progress_projek->cari_data_detail_projek($id_data_projek)->row_array();

            // $data2 = $this->M_progress_projek->cari_data('total_persentase', array('id_data_projek' => $id_data_projek))->row_array();

            $tgl_dimulai    = date("d-M-Y", strtotime($data['tgl_dimulai']));
            $tgl_berakhir   = date("d-M-Y", strtotime($data['tgl_berakhir']));

            // cari jenis modul
            $cari2 = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

            $jns = strtolower($cari2['jenis_modul']);

            $jns_modul = str_replace(' ','_', $jns);

            // mencari id_posisi 
            $hasil = $this->M_pelaporan_harian->get_posisi_2($id_data_projek)->result_array();

            $angka = array();
            
            foreach ($hasil as $h) {

                $jns = strtolower($h['jenis_modul']);

                $jns_modul2 = str_replace(' ','_', $jns);

                $list2 = $this->M_progress_projek->get_data_modul_pos($h['id_posisi'], $id_data_projek, $jns_modul2)->result_array();

                $tot_progres = 0;
                foreach ($list2 as $k) {
                    $tot_progres += $k['progres_modul'];
                }

                array_push($angka, $tot_progres);
            }

            // $jml_tot_p = array_sum($angka) / count($hasil);
            $jml_tot_p = array_sum($angka);

            if (count($angka) == 0) {
                $jml_tot_p = 0;
            } else {
                $jml_tot_p = number_format($jml_tot_p, '2');
            }

            array_push($data, array('tgl_dimulai' => $tgl_dimulai, 'tgl_berakhir' => $tgl_berakhir, 'total_persen' => "", 'tot_progres' => number_format($jml_tot_p,'2')));

            echo json_encode($data);
        }

        public function ambil_data_detail_projek_user_4()
        {
            $id_data_projek = $this->input->post('id_data_projek');
            // $id_posisi      = $this->input->post('id_posisi');
            
            $data = $this->M_progress_projek->cari_data_detail_projek($id_data_projek)->row_array();

            // $data2 = $this->M_progress_projek->cari_data('total_persentase', array('id_data_projek' => $id_data_projek))->row_array();

            $tgl_dimulai    = date("d-M-Y", strtotime($data['tgl_dimulai']));
            $tgl_berakhir   = date("d-M-Y", strtotime($data['tgl_berakhir']));
            

            // cari jenis modul
            // $cari2 = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

            // $jns = strtolower($cari2['jenis_modul']);

            // $jns_modul = str_replace(' ','_', $jns);

            // mencari id_posisi 
            $hasil = $this->M_pelaporan_harian->get_posisi($id_data_projek)->result_array();

            $angka = array();
            
            foreach ($hasil as $h) {

                $jns = strtolower($h['jenis_modul']);

                $jns_modul2 = str_replace(' ','_', $jns);

                $list2 = $this->M_progress_projek->get_data_modul_pos($h['id_posisi'], $id_data_projek, $jns_modul2)->result_array();

                $tot_progres = 0;
                foreach ($list2 as $k) {
                    $tot_progres += $k['progres_modul'];
                }

                array_push($angka, $tot_progres);
            }

            // $jml_tot_p = array_sum($angka) / count($hasil);
            $jml_tot_p = array_sum($angka) / count($hasil);

            if (count($angka) == 0) {
                $jml_tot_p = 0;
            } else {
                $jml_tot_p = number_format($jml_tot_p, '2');
            }

            array_push($data, array('tgl_dimulai' => $tgl_dimulai, 'tgl_berakhir' => $tgl_berakhir, 'total_persen' => "", 'tot_progres' => $jml_tot_p));

            echo json_encode($data);
        }

        public function ambil_data_detail_projek_user_2()
        {
            $id_data_projek = $this->input->post('id_data_projek');
            $id_posisi      = $this->input->post('id_posisi');
            
            $data = $this->M_progress_projek->cari_data_detail_projek($id_data_projek)->row_array();

            // $data2 = $this->M_progress_projek->cari_data('total_persentase', array('id_data_projek' => $id_data_projek))->row_array();

            $tgl_dimulai    = date("d-M-Y", strtotime($data['tgl_dimulai']));
            $tgl_berakhir   = date("d-M-Y", strtotime($data['tgl_berakhir']));

            // cari jenis modul
            $cari2 = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

            $jns = strtolower($cari2['jenis_modul']);

            $jns_modul = str_replace(' ','_', $jns);

            // mencari id_posisi 
            $hasil = $this->M_pelaporan_harian->get_posisi($id_data_projek)->result_array();

            $angka = array();
            
            foreach ($hasil as $h) {

                $jns = strtolower($h['jenis_modul']);

                $jns_modul2 = str_replace(' ','_', $jns);

                $list2 = $this->M_progress_projek->get_data_modul_pos($h['id_posisi'], $id_data_projek, $jns_modul2)->result_array();

                $tot_progres = 0;
                foreach ($list2 as $k) {
                    $tot_progres += $k['progres_modul'];
                }

                array_push($angka, $tot_progres);
            }

            $jml_tot_p = array_sum($angka);

            if (count($angka) == 0) {
                $jml_tot_p = 0;
            } else {
                $jml_tot_p = $jml_tot_p;
            }

            array_push($data, array('tgl_dimulai' => $tgl_dimulai, 'tgl_berakhir' => $tgl_berakhir, 'total_persen' => "", 'tot_progres' => $jml_tot_p));

            echo json_encode($data);
        }

        public function ambil_data_detail_projek_user_3()
        {
            $id_data_projek = $this->input->post('id_data_projek');
            $id_posisi      = $this->input->post('id_posisi');
            
            $data = $this->M_progress_projek->cari_data_detail_projek($id_data_projek)->row_array();

            // $data2 = $this->M_progress_projek->cari_data('total_persentase', array('id_data_projek' => $id_data_projek))->row_array();

            $tgl_dimulai    = date("d-M-Y", strtotime($data['tgl_dimulai']));
            $tgl_berakhir   = date("d-M-Y", strtotime($data['tgl_berakhir']));

            // cari jenis modul
            $cari2 = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

            $jns = strtolower($cari2['jenis_modul']);

            $jns_modul = str_replace(' ','_', $jns);

            // mencari id_posisi 
            $hasil = $this->M_pelaporan_harian->get_posisi_2($id_data_projek)->result_array();

            $angka = array();
            
            foreach ($hasil as $h) {

                $jns = strtolower($h['jenis_modul']);

                $jns_modul2 = str_replace(' ','_', $jns);

                $list2 = $this->M_progress_projek->get_data_modul_pos($h['id_posisi'], $id_data_projek, $jns_modul2)->result_array();

                $tot_progres = 0;
                foreach ($list2 as $k) {
                    $tot_progres += $k['progres_modul'];
                }

                array_push($angka, $tot_progres);
            }

            $jml_tot_p = array_sum($angka);

            if (count($angka) == 0) {
                $jml_tot_p = 0;
            } else {
                $jml_tot_p = number_format($jml_tot_p,'2');
            }

            array_push($data, array('tgl_dimulai' => $tgl_dimulai, 'tgl_berakhir' => $tgl_berakhir, 'total_persen' => "", 'tot_progres' => $jml_tot_p));

            echo json_encode($data);
        }

        // menampilkan halaman detail laporan
        public function halaman_lihat_laporan_user()
        {
            $nm_pegawai     = $this->input->post('nama_pegawai');
            $id_pegawai     = $this->input->post('id_pegawai');
            $id_posisi      = $this->input->post('id_posisi');
            $id_tim_projek  = $this->input->post('id_tim_projek');
            $id_data_projek = $this->input->post('id_data_projek');

            // cari jenis modul
            $cari = $this->M_pelaporan_harian->cari_data('m_posisi', array('id_posisi' => $id_tim_projek))->row_array();

            // cari jenis modul
            $cari2 = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

            $jns = strtolower($cari2['jenis_modul']);

            $jns_modul = str_replace(' ','_', $jns);
                
            $list = $this->M_progress_projek->get_data_modul_pos_peg($id_posisi, $id_data_projek, $jns_modul, $id_pegawai)->result_array();

            $tot_progres = 0;
            foreach ($list as $k) {
                $tot_progres += $k['progres_modul'];
            }

            $tgl_awal   = date("Y-m-d", now('Asia/Jakarta'));
            $tgl_akhir  = date("Y-m-d", now('Asia/Jakarta'));

            $modul = $this->M_pelaporan_harian->get_modul_projek_filter($tgl_awal, $tgl_akhir, $id_tim_projek, $jns_modul)->result_array();

            $data = ['menu'             => 'Pelaporan Harian', 
                     'page'             => 'Laporan Per Projek',
                     'nama_pegawai'     => $nm_pegawai,
                     'id_pegawai'       => $id_pegawai,
                     'id_tim_projek'    => $id_tim_projek,
                     'id_posisi'        => $id_posisi,
                     'jenis_modul'      => $jns_modul,
                     'id_data_projek'   => $id_data_projek,
                     'detail'           => $this->M_pelaporan_harian->get_detail_projek($id_posisi, $id_tim_projek)->row_array(),
                     'tot_progres'      => $tot_progres,
                     'modul'            => $modul
                    ];

            $this->load->view('pelaporan_harian/V_detail_laporan_pegawai_user', $data);
            
        }

        // menampilkan halaman detail laporan 
        public function halaman_lihat_laporan_user_filter()
        {
            $tgl_awal       = $this->input->post('tgl_awal');
            $tgl_akhir      = $this->input->post('tgl_akhir');
            $id_posisi      = $this->input->post('id_posisi');
            $id_tim_projek  = $this->input->post('id_tim_projek');
            $id_data_projek = $this->input->post('id_data_projek');
            $jns_modul      = $this->input->post('jenis_modul');
            $id_pegawai     = $this->input->post('id_pegawai');

            $list = $this->M_pelaporan_harian->get_data_modul_pos_tgl($tgl_awal, $tgl_akhir, $id_posisi, $id_data_projek, $jns_modul, $id_pegawai)->result_array();

            $tot_progres = 0;
            foreach ($list as $k) {
                $tot_progres += $k['progres_modul'];
            }

            if ($tgl_awal == '' && $tgl_akhir == '') {
                $modul = [];
            } else {
                $modul = $this->M_pelaporan_harian->get_modul_projek_filter($tgl_awal, $tgl_akhir, $id_tim_projek, $jns_modul)->result_array();
            }

            $data = ['menu'             => 'Pelaporan Harian', 
                     'page'             => 'Laporan Per Projek',
                     'id_tim_projek'    => $id_tim_projek,
                     'id_posisi'        => $id_posisi,
                     'jenis_modul'      => $jns_modul,
                     'tgl_awal'         => $tgl_awal,
                     'tgl_akhir'        => $tgl_akhir,
                     'tot_progres'      => $tot_progres,
                     'detail_2'         => $this->M_pelaporan_harian->get_detail_projek($id_posisi, $id_tim_projek)->row_array(),
                     'modul_2'          => $modul
                    ];

            $this->load->view('pelaporan_harian/V_detail_laporan_pegawai_user_filter', $data);
        }

    // 09-04-2020
        // menampilkan data list projek
        public function tampil_list_projek()
        {
            $list = $this->M_pelaporan_harian->get_data_list_projek();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                $hasil = $this->M_progress_projek->get_posisi($o['id_data_projek'])->result_array();

                $angka = array();
                
                foreach ($hasil as $h) {

                    $jns = strtolower($h['jenis_modul']);

                    $jns_modul = str_replace(' ','_', $jns);

                    $list2 = $this->M_progress_projek->get_data_modul_pos($h['id_posisi'], $o['id_data_projek'], $jns_modul);

                    $jml_modul = count($list2->result_array());

                    $tot_progres = 0;
                    foreach ($list2->result_array() as $k) {
                        $tot_progres += $k['progres_modul'];
                    }

                    array_push($angka, $tot_progres);
                }

                // mencari total keseluruhan tiap projek
                // $jml = array_sum($angka) / $jml_modul;
                $jml = array_sum($angka);

                if (count($angka) == 0) {
                    $jml = 0;
                } else {
                    $jml = $jml;
                }

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_sub_projek'];
                $tbody[]    = "<div align='center'><code style='font-size:17px'>".$jml."%</code></div>";
                $tbody[]    = "<span style='cursor:pointer' class='text-primary detail-projek' data-toggle='tooltip' data-placement='top' title='Detail Projek' data-id='".$o['id_data_projek']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_pelaporan_harian->jumlah_semua_list_projek(),
                        "recordsFiltered"  => $this->M_pelaporan_harian->jumlah_filter_list_projek(),   
                        "data"             => $data
                    ];

            echo json_encode($output);  
        }

    // 12-04-2020
        // tampil_tim_projek
        public function tampil_tim_projek()
        {
            $id_data_projek = $this->input->post('id_data_projek');

            $list = $this->M_pelaporan_harian->get_tim_projek($id_data_projek)->result_array();

            $no =1;
            foreach ($list as $v) {
                $tbody = array();

                $tbody[] = "<div align='center'>".$no++.".</div>";
                $tbody[] = $v['nama_pegawai'];
                $tbody[] = $v['nama_posisi'];
                $tbody[] = "<div align='center'> %</div>";
                $tbody[] = "<span style='cursor:pointer' class='text-primary lihat-laporan' data-toggle='tooltip' data-placement='top' title='Lihat Laporan' nm_pegawai='".$v['nama_pegawai']."' id_posisi='".$v['id_posisi']."' data-id='".$v['id_tim_projek']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                $data[]  = $tbody; 
            }

            if ($list) {
                echo json_encode(array('data'=> $data));
            }else{
                echo json_encode(array('data'=> 0));
            }
        }

        // detail projek
        public function detail_projek_laporan()
        {
            $id_data_projek = $this->input->post('id_data_projek');
            
            $data = $this->M_pelaporan_harian->cari_data_projek($id_data_projek)->row_array();

            $tgl_dimulai    = date("d-M-Y", strtotime($data['tgl_dimulai']));
            $tgl_berakhir   = date("d-M-Y", strtotime($data['tgl_berakhir']));

            $list = ['nama_projek'      => $data['nama_sub_projek'],
                     'id_data_projek'   => $data['id_data_projek'],
                     'instansi'         => $data['instansi'],
                     'keterangan'       => $data['keterangan'],
                     'tgl_dimulai'      => $tgl_dimulai,
                     'tgl_berakhir'     => $tgl_berakhir,
                     'progres'          => ($data['total_keseluruhan'] != null) ? $data['total_keseluruhan'] : 0 
                    ];

            echo json_encode($list);
        }

        public function halaman_lihat_laporan_pro()
        {
            $nm_pegawai     = $this->input->post('nama_pegawai');
            $id_posisi      = $this->input->post('id_posisi');
            $id_tim_projek  = $this->input->post('id_tim_projek');

            // cari jenis modul
            $cari = $this->M_pelaporan_harian->cari_data('m_posisi', array('id_posisi' => $id_tim_projek))->row_array();

            $data = ['menu'             => 'Pelaporan Harian', 
                     'page'             => 'Laporan Per Projek',
                     'nama_pegawai'     => $nm_pegawai,
                     'id_tim_projek'    => $id_tim_projek,
                     'jenis_modul'      => $cari['jenis_modul'],
                     'detail'           => $this->M_pelaporan_harian->detail_laporan($id_posisi, $id_tim_projek)->row_array(),
                     'modul'            => $this->M_pelaporan_harian->get_data_modul_laporan_peg($id_tim_projek)->result_array()
                    ];

            $this->load->view('pelaporan_harian/V_detail_laporan_pegawai_pro', $data);
        }

    public function laporan_per_pegawai()
    {
        $data = ['menu'     => 'Pelaporan Harian', 
                 'page'     => 'Laporan Per Pegawai',
                 'posisi'   => $this->M_pelaporan_harian->get_posisi_laporan()->result_array(),
                 'projek'   => $this->M_pelaporan_harian->get_nm_projek_laporan()->result_array(),
                 'id_posisi'=> $this->posisi
                ];

        if ($this->nama_jabatan == 'Staff') {
            $this->template->load('layout/template', 'pelaporan_harian/V_laporan_per_pegawai_user', $data);
        } else {
            $this->template->load('layout/template', 'pelaporan_harian/V_laporan_per_pegawai', $data);
        }

    }

    // 22-04-2020
        public function input_laporan()
        {
            $data = ['menu'    => 'Pelaporan Harian', 
                    'page'     => 'Input Laporan',
                    'posisi'   => $this->M_pelaporan_harian->get_posisi_laporan()->result_array(),
                    'projek'   => $this->M_pelaporan_harian->get_nm_projek_laporan()->result_array(),
                    'id_posisi'=> $this->posisi
                    ];

            $this->template->load('layout/template', 'pelaporan_harian/V_laporan_per_pegawai_user', $data);
            // $this->template->load('layout/template', 'pelaporan_harian/V_input_laporan', $data);
        }

    // 11-04-2020
        // menampilkan data list projek
        public function tampil_list_pegawai_laporan()
        {
            $list = $this->M_pelaporan_harian->get_data_list_pegawai_laporan();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = "<div align='center'>".nice_date($o['tanggal_laporan'], 'd-M-Y')."</div>";
                $tbody[]    = $o['nama_pegawai'];
                $tbody[]    = $o['nama_posisi'];
                $tbody[]    = $o['nama_sub_projek'];
                $tbody[]    = "<code style='font-size:17px'>".$o['progres']."%</code>";
                $tbody[]    = "<span style='cursor:pointer' class='text-primary lihat-laporan' data-toggle='tooltip' data-placement='top' title='Lihat Laporan' nm_pegawai = '".$o['nama_pegawai']."' tgl_laporan='".$o['tanggal_laporan']."' id_posisi = '".$o['id_posisi']."' data-id='".$o['id_tim_projek']."' progres='".$o['progres']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_pelaporan_harian->jumlah_semua_list_pegawai_laporan(),
                        "recordsFiltered"  => $this->M_pelaporan_harian->jumlah_filter_list_pegawai_laporan(),   
                        "data"             => $data
                    ];

            echo json_encode($output);  
        }

        // menampilkan halaman detail laporan
        public function halaman_lihat_laporan()
        {
            $nm_pegawai     = $this->input->post('nama_pegawai');
            $tgl_laporan    = $this->input->post('tgl_laporan');
            $id_posisi      = $this->input->post('id_posisi');
            $id_tim_projek  = $this->input->post('id_tim_projek');
            $progres        = $this->input->post('progres');

            // cari jenis modul
            $cari = $this->M_pelaporan_harian->cari_data('m_posisi', array('id_posisi' => $id_tim_projek))->row_array();

            $data = ['menu'             => 'Pelaporan Harian', 
                     'page'             => 'Laporan Per Pegawai',
                     'nama_pegawai'     => $nm_pegawai,
                     'tgl_laporan'      => $tgl_laporan,
                     'id_tim_projek'    => $id_tim_projek,
                     'jenis_modul'      => $cari['jenis_modul'],
                     'progres'          => $progres,
                     'detail'           => $this->M_pelaporan_harian->get_data_detail_pegawai_laporan($tgl_laporan, $id_posisi, $id_tim_projek)->row_array(),
                     'modul'            => $this->M_pelaporan_harian->get_data_modul_laporan_peg($tgl_laporan, $id_tim_projek)->result_array()
                    ];

            $this->load->view('pelaporan_harian/V_detail_laporan_pegawai', $data);
            
        }

    // 15-04-2020
        // menampilkan data persentase projek
        public function tampil_persentase_projek_lp()
        {
            $list = $this->M_progress_projek->get_data_persentase_projek();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                // mencari id_posisi 
                $hasil = $this->M_pelaporan_harian->get_posisi_2($o['id_data_projek'])->result_array();

                $angka = array();
                
                foreach ($hasil as $h) {

                    $jns = strtolower($h['jenis_modul']);

                    $jns_modul = str_replace(' ','_', $jns);

                    $list = $this->M_progress_projek->get_data_modul_pos($h['id_posisi'], $o['id_data_projek'], $jns_modul)->result_array();

                    $tot_progres = 0;
                    foreach ($list as $k) {
                        $tot_progres += $k['progres_modul'];
                    }

                    array_push($angka, $tot_progres);
                }

                if ($o['id_status_projek'] == 9) {
                    $jml = '-';
                } else {
                    $jml = array_sum($angka)."%";
                }

                if ($o['id_tim_projek']) {
                    $id_tp = $o['id_tim_projek'];
                } else {
                    $id_tp = '';
                }

                if ($o['jenis_modul']) {
                    $jns_mod = $o['jenis_modul'];
                } else {
                    $jns_mod = '';
                }

                // if (count($angka) == 0) {
                //     $jml = 0;
                // } else {
                //     $jml = $jml;
                // }

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_sub_projek'];
                // $tbody[]    = $o['instansi'];
                $tbody[]    = "<div align='center'><code style='font-size:17px'>".$jml."</code></div>";
                $tbody[]    = "<span style='cursor:pointer' class='text-primary lihat-modul' data-toggle='tooltip' data-placement='top' title='Lihat Modul' data-id='".$o['id_data_projek']."' status='".$o['id_status_projek']."' id_tim_projek='".$id_tp."' jenis_modul='".$jns_mod."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_progress_projek->jumlah_semua_persentase_projek(),
                        "recordsFiltered"  => $this->M_progress_projek->jumlah_filter_persentase_projek(),   
                        "data"             => $data
                    ];

            echo json_encode($output);  
        }
        
        // tampil data modul
        public function tampil_list_modul_pos()
        {
            $id_posisi      = $this->input->post('id_posisi');
            $id_data_projek = $this->input->post('id_data_projek');

            if ($id_posisi && $id_data_projek != '') {
                // cari jenis modul
                $cari2 = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

                $jns = strtolower($cari2['jenis_modul']);

                $jns_modul = str_replace(' ','_', $jns);
                    
                $list = $this->M_progress_projek->get_data_modul_pos($id_posisi, $id_data_projek, $jns_modul)->result_array();

                $no =1;
                foreach ($list as $v) {
                    $tbody = array();

                    if ($jns_modul == 'modul_projek') {
                        $jml  = "<code style='font-size:17px'>".$v['jml_isi_modul']."</code>";
                        
                    } else {
                        $jml    = "<i class='mdi mdi-minus-circle-outline mdi-24px'></i>";
                    }

                    $tbody[] = "<div align='center'>".$no++.".</div>";
                    $tbody[] = $v['nama_modul'];
                    $tbody[] = "<div align='center'><code style='font-size:17px'>".$v['persentase']."%</code></div>";
                    $tbody[] = "<div align='center'>".$jml."</div>"; 
                    $tbody[] = "<div align='center'><code style='font-size:17px'>".$v['tot_progres_sekarang']."%</code></div>";
                    $tbody[] = "<span style='cursor:pointer' class='text-primary lihat-laporan' data-toggle='tooltip' data-placement='top' title='Lihat Laporan' id_tim_projek='".$v['id_tim_projek']."' nm_modul='".$v['nama_modul']."' jenis_modul='".$jns_modul."' data-id='".$v['id_modul']."' progres='".$v['tot_progres_sekarang']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";;
                    $data[]  = $tbody; 
                }
            } else {
                $list = [];
            }

            if (!empty($list)) {
                echo json_encode(array('data'=> $data));
            }else{
                echo json_encode(array('data'=> 0));
            }
        }

        public function tampil_list_modul_pos_user()
        {
            $id_posisi      = $this->input->post('id_posisi');
            $id_data_projek = $this->input->post('id_data_projek');

            if ($id_posisi != '' && $id_data_projek != '') {
                // cari jenis modul
                $cari2 = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

                $jns = strtolower($cari2['jenis_modul']);

                $jns_modul = str_replace(' ','_', $jns);
                    
                $list = $this->M_progress_projek->get_data_modul_pos_user($id_posisi, $id_data_projek, $jns_modul)->result_array();

                $no =1;
                foreach ($list as $v) {
                    $tbody = array();

                    if ($jns_modul == 'modul_projek') {
                        $jml  = "<code style='font-size:17px'>".$v['jml_isi_modul']."</code>";
                        $aksi = "<span style='cursor:pointer' class='text-primary lihat-isi-modul' data-toggle='tooltip' data-placement='top' title='Lihat Isi Modul' nm_modul='".$v['nama_modul']."' data-id='".$v['id_modul']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                    } else {
                        $jml    = "<i class='mdi mdi-minus-circle-outline mdi-24px'></i>";
                        $aksi   = "<i class='mdi mdi-minus-circle-outline mdi-24px'></i>";
                    }

                    $tbody[] = "<div align='center'>".$no++.".</div>";
                    $tbody[] = $v['nama_modul'];
                    $tbody[] = "<div align='center'><code style='font-size:17px'>".$v['persentase']."%</code></div>";
                    $tbody[] = "<div align='center'>".$jml."</div>"; 
                    $tbody[] = "<div align='center'><code style='font-size:17px'>".$v['tot_progres_sekarang']."%</code></div>";
                    $tbody[] = $aksi;
                    $data[]  = $tbody; 
                }
            } else {
                $list = [];
            }

            if (!empty($list)) {
                echo json_encode(array('data'=> $data));
            }else{
                echo json_encode(array('data'=> 0, 'id_posisi' => $id_posisi, 'id_data_projek' => $id_data_projek));
            }
        }

        public function tampil_list_modul_pos_user2()
        {
            $id_posisi      = $this->input->post('id_posisi');
            $id_data_projek = $this->input->post('id_data_projek');

            if ($id_posisi != '' && $id_data_projek != '') {
                // cari jenis modul
                $cari2 = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

                $jns = strtolower($cari2['jenis_modul']);

                $jns_modul = str_replace(' ','_', $jns);
                    
                $list = $this->M_progress_projek->get_data_modul_pos_user($id_posisi, $id_data_projek, $jns_modul)->result_array();

                $no =1;
                foreach ($list as $v) {
                    $tbody = array();

                    if ($jns_modul == 'modul_projek') {
                        $jml  = "<code style='font-size:17px'>".$v['jml_isi_modul']."</code>";
                    } else {
                        $jml    = "<i class='mdi mdi-minus-circle-outline mdi-24px'></i>";
                    }

                    $tbody[] = "<div align='center'>".$no++.".</div>";
                    $tbody[] = $v['nama_modul'];
                    $tbody[] = "<div align='center'><code style='font-size:17px'>".$v['persentase']."%</code></div>";
                    $tbody[] = "<div align='center'>".$jml."</div>"; 
                    $tbody[] = "<div align='center'><code style='font-size:17px'>".$v['tot_progres_sekarang']."%</code></div>";
                    $tbody[] = "<span style='cursor:pointer' class='text-primary lihat-laporan' data-toggle='tooltip' data-placement='top' title='Buat Laporan' id_tim_projek='".$v['id_tim_projek']."' nm_modul='".$v['nama_modul']."' jenis_modul='".$jns_modul."' data-id='".$v['id_modul']."' progres='".$v['tot_progres_sekarang']."'><i class='mdi mdi-plus mdi-24px'></i></span>";
                    $data[]  = $tbody; 
                }
            } else {
                $list = [];
            }

            if (!empty($list)) {
                echo json_encode(array('data'=> $data));
            }else{
                echo json_encode(array('data'=> 0, 'id_posisi' => $id_posisi, 'id_data_projek' => $id_data_projek));
            }
        }

        // tampil data projek
        public function ambil_data_projek_laporan()
        {
            $id_data_projek = $this->input->post('id_data_projek');
            $jenis_modul    = $this->input->post('jenis_modul');
            $id_tim_projek  = $this->input->post('id_tim_projek');
            $id_modul       = $this->input->post('id_modul');

            $jns = ucwords(str_replace('_',' ', $jenis_modul));

            $cari = $this->M_pelaporan_harian->cari_data('data_projek', array('id_data_projek' => $id_data_projek))->row_array();

            $cari_j = $this->M_pelaporan_harian->cari_data_laporan($id_tim_projek, $id_modul, $jenis_modul)->row_array(1);

            // cari id modul
            $cari2 = $this->M_pelaporan_harian->cari_data_progres($id_tim_projek, $id_modul, $jns)->row_array();

            $data = ['nama_projek'      => $cari['nama_sub_projek'],
                     'jenis_modul'      => $jns,
                     'progres_terakhir' => ($cari2['progres'] == null) ? '0' : $cari2['progres'],
                     'progres_lama'     => $cari_j['progres']
                    ];
            
            echo json_encode($data);
        }

        // menampilkan list laporan
        public function tampil_list_laporan()
        {
            $list = $this->M_pelaporan_harian->get_data_list_laporan();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                // character_limiter($o['deskripsi'], 100)

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = nice_date($o['tanggal_laporan'], 'd F Y');
                $tbody[]    = "<span style='cursor:pointer' class='mr-3 text-primary detail-laporan' data-toggle='tooltip' data-placement='top' title='Isi Laporan' data-id='".$o['id_laporan']."'><i class='mdi mdi-information-outline mdi-24px'></i></span><span style='cursor:pointer' class='mr-3 text-primary edit-laporan' data-toggle='tooltip' data-placement='top' title='Ubah' data-id='".$o['id_laporan']."'><i class='mdi mdi-pencil mdi-24px'></i></span><span style='cursor:pointer' class='text-danger hapus-laporan' data-toggle='tooltip' data-placement='top' title='Hapus' data-id='".$o['id_laporan']."'><i class='mdi mdi-delete mdi-24px'></i></span>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_pelaporan_harian->jumlah_semua_list_laporan(),
                        "recordsFiltered"  => $this->M_pelaporan_harian->jumlah_filter_list_laporan(),   
                        "data"             => $data
                    ];

            echo json_encode($output);
        }

        // aksi proses simpan data laporan
        public function simpan_data_laporan()
        {
            $aksi               = $this->input->post('aksi');
            $id_laporan         = $this->input->post('id_laporan');
            $deskripsi          = $this->input->post('deskripsi');
            $tanggal_laporan    = $this->input->post('tanggal_laporan');
            $id_tim_projek      = $this->input->post('id_tim_projek');
            $id_modul           = $this->input->post('id_modul');
            $jenis_modul        = $this->input->post('jenis_modul');
            $progres            = $this->input->post('progres');

            $data = ['tanggal_laporan'  => nice_date($tanggal_laporan, 'Y-m-d'),
                     'deskripsi'        => $deskripsi,
                     'id_tim_projek'    => $id_tim_projek,
                     'id_modul'         => $id_modul,
                     'jenis_modul'      => $jenis_modul,
                     'progres'          => $progres,
                     'add_time'         => date("Y-m-d H:i:s", now('Asia/Jakarta'))
                    ];

            if ($aksi == 'Tambah') {
                $this->M_pelaporan_harian->input_data('laporan_projek', $data);
            } elseif ($aksi == 'Ubah') {
                $this->M_pelaporan_harian->ubah_data('laporan_projek', $data, array('id_laporan' => $id_laporan));
            } elseif ($aksi == 'Hapus') {
                $this->M_pelaporan_harian->hapus_data('laporan_projek', array('id_laporan' => $id_laporan));
            }

            // cari id modul
            $cari2 = $this->M_pelaporan_harian->cari_data_progres($id_tim_projek, $id_modul, $jenis_modul)->row_array();

            echo json_encode(['aksi' => $aksi, 'progres_terakhir' => $cari2['progres']]);
        }

        // ambil data laporan
        public function ambil_data_laporan()
        {
            $id_laporan     = $this->input->post('id_laporan');
            $id_tim_projek  = $this->input->post('id_tim_projek');
            $id_modul       = $this->input->post('id_modul');
            $jenis_modul    = $this->input->post('jenis_modul');
            
            $data = $this->M_pelaporan_harian->cari_data('laporan_projek', array("id_laporan" => $id_laporan))->row_array();

            $cari = $this->M_pelaporan_harian->cari_data_laporan($id_tim_projek, $id_modul, $jenis_modul)->row_array(1);

            $cari2 = $this->M_pelaporan_harian->cari_data_laporan($id_tim_projek, $id_modul, $jenis_modul)->row_array();

            if ($data['progres'] < $cari2['progres']) {
                $progres = 'disabled';
            } else {
                $progres = '';
            }

            array_push($data, ['tanggal_laporan' => nice_date($data['tanggal_laporan'], 'd F Y'), 'progres_sbl' => $cari2['progres'], 'status_prog' => $progres, 'progres_lama' => $cari['progres']]);

            echo json_encode($data);
        }

    // 02-06-2020
        // mengecek tgl laporan
        public function cek_tanggal_laporan()
        {
            $tgl = nice_date($this->input->post('tgl'), 'Y-m-d');

            // cek tanggal
            $list = $this->M_pelaporan_harian->cari_data('laporan_projek', array('tanggal_laporan' => $tgl))->num_rows();
            
            echo json_encode(['cek' => $list]);
        }
}

/* End of file C_pelaporan_harian.php */
