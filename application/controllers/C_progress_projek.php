<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class C_progress_projek extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_progress_projek', 'M_pelaporan_harian'));
        $this->cek_login_lib->logged_in_false();
        $this->posisi       = $this->session->userdata('posisi');
        $this->nama_jabatan = $this->session->userdata('nama_jabatan');
    }

    public function coba2()
    {
        $this->db->select('*');
        $this->db->from('laporan_projek');
        $this->db->where('id_tim_projek', 101);
        
        
        $list = $this->db->get()->row_array();
        
        echo "<pre>";
        print_r(substr($list['deskripsi'],0,500));
        echo "</pre>";
    }

    public function index()
    {
        $this->presentase_projek();
    }

    // halaman presentase_projek
    public function presentase_projek()
    {
        $data = ['menu'         => 'Progress Projek', 
                 'page'         => 'Persentase Projek',
                 'posisi'       => $this->M_progress_projek->get_data_order('m_posisi', 'nama_posisi', 'asc')->result_array(),
                 'id_posisi'    => $this->posisi
                ];

        if ($this->nama_jabatan == 'Manager' || $this->nama_jabatan == 'Direktur') {
            $this->template->load('layout/template', 'progress_projek/V_presentase_projek', $data);
        } else {
            $this->template->load('layout/template', 'progress_projek/V_presentase_projek_user', $data);
        }
   
    }

    public function coba()
    {
        $list2 = $this->M_progress_projek->get_data_modul_pos(3, 2, 'modul_tetap')->result_array();

        print_r($list2);
    }

    public function tes_keseluruhan()
    {
        $id_data_projek = 2;

        // cari id_posisi selain manager
        $this->db->where('id_posisi !=', 4);
        $hasil = $this->db->get('m_posisi')->result_array();

        $angka = array();
        
        foreach ($hasil as $h) {

            $jns = strtolower($h['jenis_modul']);

            $jns_modul = str_replace(' ','_', $jns);

            $list = $this->M_progress_projek->get_data_modul_pos($h['id_posisi'], $id_data_projek, $jns_modul)->result_array();

            $tot_progres = 0;
            foreach ($list as $k) {
                $tot_progres += $k['progres_modul'];
            }

            array_push($angka, $tot_progres);
        }

        print_r(array_sum($angka));
        
    }

    // 07-04-2020
        // menampilkan data persentase projek
        public function tampil_persentase_projek($aksi)
        {
            $list = $this->M_progress_projek->get_data_persentase_projek();

            $id_pegawai = $this->session->userdata('id_pegawai');

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

                if ($aksi == 'user') {
                    $hasil = $this->M_progress_projek->get_posisi_peg($id_pegawai, $o['id_data_projek'])->result_array();
                } else {
                    $hasil = $this->M_progress_projek->get_posisi($o['id_data_projek'])->result_array();
                }

                $angka = array();
                
                foreach ($hasil as $h) {

                    $jns = strtolower($h['jenis_modul']);

                    $jns_modul = str_replace(' ','_', $jns);

                    if ($aksi == 'user') {
                        $list2 = $this->M_progress_projek->get_data_modul_pos_peg($h['id_posisi'], $o['id_data_projek'], $jns_modul, $id_pegawai);
                    } else {
                        $list2 = $this->M_progress_projek->get_data_modul_pos($h['id_posisi'], $o['id_data_projek'], $jns_modul);
                    }

                    $jml_modul = count($list2->result_array());

                    $tot_progres = 0;
                    foreach ($list2->result_array() as $k) {
                        $tot_progres += $k['progres_modul'];
                    }

                    array_push($angka, $tot_progres);
                }

                // mencari total keseluruhan tiap projek
                // $jml = array_sum($angka) / $jml_modul;
                if ($aksi == 'user') {
                    $jml = array_sum($angka);
                } else {
                    $jml = array_sum($angka) / count($hasil);
                }
                

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_sub_projek'];
                // $tbody[]    = $o['instansi'];
                $tbody[]    = "<div align='center'><code style='font-size:17px'>".number_format($jml, '2')."%</code></div>";
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

        // ambil data detail projek
        public function ambil_data_detail_projek()
        {
            $id_data_projek = $this->input->post('id_data_projek');
            
            $data = $this->M_progress_projek->cari_data_detail_projek($id_data_projek)->row_array();

            // $data2 = $this->M_progress_projek->cari_data('total_persentase', array('id_data_projek' => $id_data_projek))->row_array();

            $tgl_dimulai    = date("d-M-Y", strtotime($data['tgl_dimulai']));
            $tgl_berakhir   = date("d-M-Y", strtotime($data['tgl_berakhir']));

            // mencari list posisi
            $list = $this->M_progress_projek->cari_nama_posisi($id_data_projek)->result_array();

            $option = '';

            foreach ($list as $l) {
                $option .= "<option value='".$l['id_posisi']."'>".$l['nama_posisi']."</option>";
            }

            $hasil = $this->M_progress_projek->get_posisi_3($id_data_projek)->result_array();

            $angka = array();
            
            foreach ($hasil as $h) {

                $jns = strtolower($h['jenis_modul']);

                $jns_modul = str_replace(' ','_', $jns);

                $list2 = $this->M_progress_projek->get_data_modul_pos($h['id_posisi'], $id_data_projek, $jns_modul);

                $jml_modul = count($list2->result_array());

                $tot_progres = 0;
                foreach ($list2->result_array() as $k) {
                    $tot_progres += $k['progres_modul'];
                }

                array_push($angka, $tot_progres);
            }

            // mencari total keseluruhan tiap projek
            // $jml = array_sum($angka) / $jml_modul;
            $jml = array_sum($angka) / count($hasil);

            if (count($angka) == 0) {
                $jml = "0.00";
            } else {
                $jml = number_format($jml, '2');
            }

            array_push($data, array('tgl_dimulai' => $tgl_dimulai, 'tgl_berakhir' => $tgl_berakhir, 'total_persen' => $jml, 'list_posisi' => $option));

            echo json_encode($data);

        }

        //14-04-2020
        public function ambil_data_detail_projek_user()
        {
            $id_data_projek = $this->input->post('id_data_projek');
            $id_posisi      = $this->input->post('id_posisi');
            
            $data = $this->M_progress_projek->cari_data_detail_projek($id_data_projek)->row_array();

            //$data2 = $this->M_progress_projek->cari_data('total_persentase', array('id_data_projek' => $id_data_projek))->row_array();

            $tgl_dimulai    = date("d-M-Y", strtotime($data['tgl_dimulai']));
            $tgl_berakhir   = date("d-M-Y", strtotime($data['tgl_berakhir']));

            // mencari list posisi
            $list = $this->M_progress_projek->cari_nama_posisi($id_data_projek)->result_array();

            $option = '';

            foreach ($list as $l) {
                $option .= "<option value='".$l['id_posisi']."'>".$l['nama_posisi']."</option>";
            }

            // cari jenis modul
            $cari2 = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

            $jns = strtolower($cari2['jenis_modul']);

            $jns_modul = str_replace(' ','_', $jns);
                
            $list = $this->M_progress_projek->get_data_modul_pos($id_posisi, $id_data_projek, $jns_modul)->result_array();

            $tot_progres = 0;
            foreach ($list as $k) {
                $tot_progres += $k['progres_modul'];
            }

            $tt_progres = $tot_progres / count($list);

            // cari nama pegawai
            $nm = $this->M_progress_projek->cari_nama_pegawai($id_data_projek,$id_posisi)->row_array();

            $id_peg = $this->M_progress_projek->cari_data('m_pegawai', ['id_pegawai' => $this->session->userdata('id_pegawai')])->row_array();

            array_push($data, array('tgl_dimulai' => $tgl_dimulai, 'tgl_berakhir' => $tgl_berakhir, 'total_persen' => "", 'tot_progres' => number_format($tot_progres, '2'), 'nama_posisi' => $cari2['nama_posisi'], 'nama_pegawai' => $id_peg['nama_pegawai'], 'list_posisi' => $option));

            echo json_encode($data);
        }

        // Akhir 14-04-2020

        // tampil list modul
        public function tampil_list_modul()
        {
            $id_posisi      = $this->input->post('id_posisi');
            $id_data_projek = $this->input->post('id_data_projek');

            $cari = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

            $jns_modul = $cari['jenis_modul'];

            $jenis_modul = str_replace(' ', '_', strtolower($jns_modul));

            $list = $this->M_progress_projek->get_data_modul($jenis_modul, $id_data_projek, $id_posisi)->result_array();

            $no =1;
            foreach ($list as $v) {
                $tbody = array();

                if ($jenis_modul == 'modul_projek') {
                    $jml_isi_modul = $v['jml_isi_modul'];
                } else {
                    $jml_isi_modul = "<i class='mdi mdi-minus-box mdi-24px'></i>";
                }

                $cari = $this->M_progress_projek->cari_progres_modul($v['id_modul'], $jns_modul, $id_data_projek)->row_array();

                // rumus mencari total progres per modul
                $tot_pro_modul = ($cari['tot_progres'] / 100) * $cari['persentase'];
 
                $tbody[] = "<div align='center'>".$no++.".</div>";
                $tbody[] = $v['nama_modul'];
                $tbody[] = $v['persentase'];
                $tbody[] = "<div align='center'><code style='font-size:17px'>".$jml_isi_modul."</code></div>";
                $tbody[] = "<div align='center'><code style='font-size:17px'>".$tot_pro_modul."%</code></div>";
                $tbody[]    = "<span style='cursor:pointer' class='text-primary lihat-modul' data-toggle='tooltip' data-placement='top' title='Lihat Modul' jenis='".$jenis_modul."' data-id='".$v['id_modul']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                $data[]  = $tbody; 
            }

            if ($id_posisi != '') {
                echo json_encode(array('data'=> $data));
            }else{
                echo json_encode(array('data'=> 0));
            }
            
        }

        // ambil data projek
        public function ambil_data_list_modul()
        {
            $id_posisi      = $this->input->post('id_posisi');
            $id_data_projek = $this->input->post('id_data_projek');
            
            $cari = $this->M_progress_projek->cari_data_tim_projek($id_posisi, $id_data_projek)->row_array();

            echo json_encode($cari);
        }

    // halaman progress_pegawai
    public function progress_karyawan()
    {
        $data = ['menu' => 'Progress Projek', 
                 'page' => 'Progress Karyawan'
                ];

        $this->template->load('layout/template', 'progress_projek/V_progress_pegawai', $data);
    }

    // 08-04-2020
        // menampilkan list posisi 
        public function tampil_projek_pegawai()
        {
            $list = $this->M_progress_projek->get_data_projek_pegawai();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                if ($o['jml_projek'] != 0) {
                    $aksi = "<span style='cursor:pointer' class='text-primary lihat-progres' data-toggle='tooltip' data-placement='top' title='Detail Progres' nm_pegawai='".$o['nama_pegawai']."' data-id='".$o['id_pegawai']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                } else {
                    $aksi = "<span class='text-primary' data-toggle='tooltip' data-placement='top' title='Detail Progres' nm_pegawai='".$o['nama_pegawai']."' data-id='".$o['id_pegawai']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                }

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_pegawai'];
                $tbody[]    = "<div align='center'><code style='font-size:17px'>".$o['jml_projek']."</code></div>";
                $tbody[]    = $aksi;
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_progress_projek->jumlah_semua_projek_pegawai(),
                        "recordsFiltered"  => $this->M_progress_projek->jumlah_filter_projek_pegawai(),   
                        "data"             => $data
                    ];

            echo json_encode($output);
        }

        // menampilkan list projek
        public function tampil_list_projek()
        { 
            $id_pegawai = $this->input->post('id_pegawai');
            
            $list = $this->M_progress_projek->get_data_list_projek_pegawai($id_pegawai);

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                $hasil = $this->M_progress_projek->get_posisi_2($id_pegawai, $o['id_data_projek'])->result_array();

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

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_sub_projek'];
                // $tbody[]    = $o['instansi'];
                $tbody[]    = "<div align='center'><code style='font-size:17px'>".$jml."%</code></div>";
                $tbody[]    = "<span style='cursor:pointer' class='text-primary detail-modul' data-toggle='tooltip' data-placement='top' title='Detail Modul' data-id='".$o['id_data_projek']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_progress_projek->jumlah_semua_list_projek_pegawai($id_pegawai),
                        "recordsFiltered"  => $this->M_progress_projek->jumlah_filter_list_projek_pegawai($id_pegawai),   
                        "data"             => $data
                    ];

            echo json_encode($output);
        }

        // ambil data detail projek
        public function ambil_data_detail_projek_peg()
        {
            $id_data_projek = $this->input->post('id_data_projek');
            $id_pegawai     = $this->input->post('id_pegawai');
            
            $data = $this->M_progress_projek->cari_data_detail_projek($id_data_projek)->row_array();

            // $data2 = $this->M_progress_projek->cari_data('total_persentase', array('id_data_projek' => $id_data_projek))->row_array();

            // $id_tot_persentase = $data2['id_total_persentase'];

            // $data3 = $this->M_progress_projek->cari_data('total_persentase_modul', array('id_total_persentase' => $id_tot_persentase))->row_array();

            $tgl_dimulai    = date("d-M-Y", strtotime($data['tgl_dimulai']));
            $tgl_berakhir   = date("d-M-Y", strtotime($data['tgl_berakhir']));

            $data4 = $this->M_progress_projek->cari_data('m_pegawai', array('id_pegawai' => $id_pegawai))->row_array();
            $data5 = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $data4['id_posisi']))->row_array();

            $hasil = $this->M_progress_projek->get_posisi_2($id_pegawai, $id_data_projek)->result_array();

            $angka = array();
            
            foreach ($hasil as $h) {

                $jns = strtolower($h['jenis_modul']);

                $jns_modul = str_replace(' ','_', $jns);

                $list2 = $this->M_progress_projek->get_data_modul_pos($h['id_posisi'], $id_data_projek, $jns_modul);

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

            array_push($data, array('tgl_dimulai' => $tgl_dimulai, 'tgl_berakhir' => $tgl_berakhir, 'total_persen' => number_format($jml, '2'), 'nama_pegawai' => $data4['nama_pegawai'], 'nama_posisi' => $data5['nama_posisi']));

            echo json_encode($data);

        }

        public function tes()
        {
            $list = $this->M_progress_projek->get_data_modul_peg(2, 2, 'modul_projek')->result_array();

            print_r($list);

        }

        // tampil data modul
        public function tampil_list_modul_peg()
        {
            $id_pegawai     = $this->input->post('id_pegawai');
            $id_data_projek = $this->input->post('id_data_projek');

            // cari jenis modul
            $cari1 = $this->M_progress_projek->cari_data('m_pegawai', array('id_pegawai' => $id_pegawai))->row_array();
            $cari2 = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $cari1['id_posisi']))->row_array();

            $jns = strtolower($cari2['jenis_modul']);

            $jns_modul = str_replace(' ','_', $jns);
                
            $list = $this->M_progress_projek->get_data_modul_peg($id_pegawai, $id_data_projek, $jns_modul)->result_array();

            $no =1;
            foreach ($list as $v) {
                $tbody = array();

                if ($jns_modul == 'modul_projek') {
                    $jml  = "<div align='center'><code style='font-size:17px'>".$v['jml_isi_modul']."</code></div>";
                    $aksi = "<span style='cursor:pointer' class='text-primary lihat-isi-modul' data-toggle='tooltip' data-placement='top' title='Lihat Isi Modul' nm_modul='".$v['nama_modul']."' data-id='".$v['id_modul']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                } else {
                    $jml    = "<i class='mdi mdi-minus-circle-outline mdi-24px'></i>";
                    $aksi   = "<i class='mdi mdi-minus-circle-outline mdi-24px'></i>";
                }

                $tbody[] = "<div align='center'>".$no++.".</div>";
                $tbody[] = $v['nama_modul'];
                $tbody[] = "<div align='center'><code style='font-size:17px'>".$v['persentase']."%</code></div>";
                $tbody[] = $jml; 
                $tbody[] = "<div align='center'><code style='font-size:17px'>".$v['tot_progres_sekarang']."%</code></div>";
                $tbody[] = $aksi;
                $data[]  = $tbody; 
            }

            if ($list) {
                echo json_encode(array('data'=> $data));
            }else{
                echo json_encode(array('data'=> 0));
            }
        }

    // 09-04-2020
        // menampilkan isi modul projek
        public function tampil_list_isi_modul()
        {
            $id_modul_projek = $this->input->post('id_modul_projek');
            
            $list = $this->M_progress_projek->cari_data('isi_modul_projek', array('id_modul_projek' => $id_modul_projek))->result_array();

            $no =1;
            foreach ($list as $v) {
                $tbody = array();
 
                // $tbody[] = "<div align='center'>".$no++.".</div>";
                $tbody[] = $v['isi_modul'];
                $data[]  = $tbody; 
            }

            if ($list) {
                echo json_encode(array('data'=> $data));
            }else{
                echo json_encode(array('data'=> 0));
            }
        }

        public function tes_modul()
        {
            $list = $this->M_progress_projek->get_data_modul_pos(1, 2, 'modul_projek')->result_array();

            print_r($list);
        }

        // tampil data modul
        public function tampil_list_modul_pos()
        {
            $id_posisi      = $this->input->post('id_posisi');
            $id_data_projek = $this->input->post('id_data_projek');

            if ($id_posisi != '' && $id_data_projek != '') {
                // cari jenis modul
                $cari2 = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

                $jns = strtolower($cari2['jenis_modul']);

                $jns_modul = str_replace(' ','_', $jns);
                    
                $list = $this->M_progress_projek->get_data_modul_pos($id_posisi, $id_data_projek, $jns_modul)->result_array();

                $no =1;
                foreach ($list as $v) {
                    $tbody = array();

                    if ($jns_modul == 'modul_projek') {
                        $jml  = $v['jml_isi_modul'];
                        $aksi = "<span style='cursor:pointer' class='text-primary lihat-isi-modul' data-toggle='tooltip' data-placement='top' title='Lihat Isi Modul' nm_modul='".$v['nama_modul']."' data-id='".$v['id_modul']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                    } else {
                        $jml    = "<i class='mdi mdi-minus-circle-outline mdi-24px'></i>";
                        $aksi   = "<i class='mdi mdi-minus-circle-outline mdi-24px'></i>";
                    }

                    $tbody[] = "<div align='center'>".$no++.".</div>";
                    $tbody[] = $v['nama_modul'];
                    $tbody[] = "<div align='center'><code style='font-size:17px'>".$v['persentase']."%</code></div>";
                    $tbody[] = "<div align='center'><code style='font-size:17px'>".$jml."</code></div>"; 
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
                        $jml  = $v['jml_isi_modul'];
                        $aksi = "<span style='cursor:pointer' class='text-primary lihat-isi-modul' data-toggle='tooltip' data-placement='top' title='Lihat Isi Modul' nm_modul='".$v['nama_modul']."' data-id='".$v['id_modul']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                    } else {
                        $jml    = "<i class='mdi mdi-minus-circle-outline mdi-24px'></i>";
                        $aksi   = "<i class='mdi mdi-minus-circle-outline mdi-24px'></i>";
                    }

                    $tbody[] = "<div align='center'>".$no++.".</div>";
                    $tbody[] = $v['nama_modul'];
                    $tbody[] = "<div align='center'><code style='font-size:17px'>".$v['persentase']."%</code></div>";
                    $tbody[] = "<div align='center'><code style='font-size:17px'>".$jml."</code></div>"; 
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

        // ambil data detail projek
        public function ambil_data_detail_projek_pos()
        {
            $id_data_projek = $this->input->post('id_data_projek');
            $id_posisi      = $this->input->post('id_posisi');
            
            $data = $this->M_progress_projek->cari_data_detail_projek($id_data_projek)->row_array();

            // $data2 = $this->M_progress_projek->cari_data('total_persentase', array('id_data_projek' => $id_data_projek))->row_array();

            // $id_tot_persentase = $data2['id_total_persentase'];

            // $data3 = $this->M_progress_projek->cari_data('total_persentase_modul', array('id_total_persentase' => $id_tot_persentase))->row_array();

            $tgl_dimulai    = date("d-M-Y", strtotime($data['tgl_dimulai']));
            $tgl_berakhir   = date("d-M-Y", strtotime($data['tgl_berakhir']));

            // mencari nama pegawai
            // $cari = $this->M_progress_projek->cari_nama_pegawai($id_data_projek, $id_posisi)->row_array();

            $cari = $this->M_progress_projek->cari_nama_pegawai($id_data_projek, $id_posisi)->result_array();

            $nm = array();

            foreach ($cari as $c) {
                $nm[] = $c['nama_pegawai'];
            }

            $nm_p = implode(' , ', $nm);

            $data5 = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

            // cek jumlah
            $cari2 = $this->M_progress_projek->cari_data('m_posisi', array('id_posisi' => $id_posisi))->row_array();

            $jns = strtolower($cari2['jenis_modul']);

            $jns_modul = str_replace(' ','_', $jns);
                
            $list = $this->M_progress_projek->get_data_modul_pos($id_posisi, $id_data_projek, $jns_modul)->result_array();

            $tot_progres = 0;
            foreach ($list as $k) {
                $tot_progres += $k['progres_modul'];
            }

            array_push($data, array('tgl_dimulai' => $tgl_dimulai, 'tgl_berakhir' => $tgl_berakhir, 'total_persen' => number_format($tot_progres, '2'), 'nama_pegawai' => $nm_p, 'nama_posisi' => $data5['nama_posisi'], 'jml_isi' => count($list)));

            echo json_encode($data);

        }

}

/* End of file C_progress_projek.php */
