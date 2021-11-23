<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class C_rekap extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->cek_login_lib->logged_in_false();
        $this->load->model(array('M_rekap', 'M_progress_projek'));
    }
    
    public function index()
    {
        $this->rekap_mingguan();
    }

    public function rekap_mingguan()
    {
        $data = ['menu'     => 'Rekap', 
                 'page'     => 'Rekap Mingguan',
                 'posisi'   => $this->M_rekap->ambil_posisi_2()->result_array()
                ];

        $this->template->load('layout/template', 'rekap/V_rekap_mingguan', $data);
    }

    // 16-04-2020

        // mencari list per minggu    
        public function bulan_minggu($bulan, $i = null)
        {
            $first_day_this_month = date('Y-m-01', strtotime($bulan));
            $last_day_this_month  = date('Y-m-t', strtotime($bulan));

            $start  = new DateTime($first_day_this_month);
            $end    = new DateTime("$last_day_this_month 23:59");

            $interval   = new DateInterval('P1D');
            $dateRange  = new DatePeriod($start, $interval, $end);

            $weekNumber = 1;

            $weeks = array();

            foreach ($dateRange as $date) {
                $weeks[$weekNumber][] = $date->format('Y-m-d');
                if ($date->format('w') == 6) {
                    $weekNumber++;
                }
            }

            $ranges = array_map(function($week) {
                return array_shift($week) . ',' . array_pop($week); },
            $weeks);

            if ($i == null) {
                return $ranges;
            } else {
                return $ranges[$i];
            }

        }

        public function coba()
        {
            $a = $this->bulan_minggu('2020-02');

            $tgl = explode(',',$a);

            echo "<pre>";
            print_r($a);
            echo "</pre>";
        }

        // menampilkan data list projek
        public function tampil_list_projek()
        {
            $bl         = $this->input->post('bulan');
            $bulan      = nice_date($bl, 'Y-m');
            $minggu_ke  = $this->input->post('minggu_ke');

            $a = $this->bulan_minggu($bulan, $minggu_ke);

            $tgl = explode(',', $a);

            $tgl_awal   = $tgl[0];
            $tgl_akhir  = $tgl[1];

            if ($minggu_ke != '' && $bl != '' && $tgl_akhir != '') {
                
                $list = $this->M_rekap->get_projek()->result_array();

                $no =1;
                foreach ($list as $v) {
                    $tbody = array(); 

                    $tbody[] = "<div align='center'>".$no++.".</div>";
                    $tbody[] = $v['nama_sub_projek'];

                    $cari_pos = $this->M_rekap->ambil_posisi_2()->result_array();

                    foreach ($cari_pos as $h) {

                        $jns = strtolower($h['jenis_modul']);

                        $jns_modul = str_replace(' ','_', $jns);

                        $list2 = $this->M_rekap->get_data_modul_pos($tgl_awal, $tgl_akhir, $h['id_posisi'], $v['id_data_projek'], $jns_modul)->result_array();

                        $angka = array();

                        $tot_progres = 0;
                        foreach ($list2 as $k) {
                            $tot_progres += $k['progres_modul'];
                        }

                        array_push($angka, $tot_progres);

                        $jml = array_sum($angka);

                        $tbody[] = "<div align='center'>".$jml." %</div>";
                    }

                    if ($v['status1'] == 1) {
                        $status = "<span class='badge badge-primary'>".$v['nama_status']."</span>";
                    } else if ($v['status1'] == 2) {
                        $status = "<span class='badge badge-danger'>".$v['nama_status']."</span>";
                    } else if ($v['status1'] == 3) {
                        $status = "<span class='badge badge-warning'>".$v['nama_status']."</span>";
                    } else if ($v['status1'] == 4) {
                        $status = "<span class='badge badge-success text-white'>".$v['nama_status']."</span>";
                    } else if ($v['status1'] == 5) {
                        $status = "<span class='badge badge-info'>".$v['nama_status']."</span>";
                    } else if ($v['status1'] == 6) {
                        $status = "<span class='badge badge-warning text-white'>".$v['nama_status']."</span>";
                    } else if ($v['status1'] == 7) {
                        $status = "<span class='badge badge-success text-white'>".$v['nama_status']."</span>";
                    } else if ($v['status1'] == 8) {
                        $status = "<span class='badge badge-danger text-white'>".$v['nama_status']."</span>";
                    } else if ($v['status1'] == 9) {
                        $status = "<span class='badge badge-dark text-white'>".$v['nama_status']."</span>";
                    }

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

        // cari banyak minggu
        public function cari_banyak_minggu()
        {
            $bl = $this->input->post('bulan');

            $bulan = nice_date($bl, 'Y-m');
            
            $a = $this->bulan_minggu($bulan);

            $jml_minggu = count($a);

            $arr = ['','Pertama','Kedua','Ketiga','Keempat','Kelima','Keenam'];

            $option = '';
            $minggu = '';

            for ($i=1; $i <=$jml_minggu; $i++) { 

                $option .= "<option value='".$i."'>".$arr[$i]."</option>";

                $minggu .= "<th width='20%'>Minggu ke ".$i."</th>";

            }

            echo json_encode(['minggu_ke' => $option, 'minggu_ke_tabel' => $minggu, 'jml_minggu' => $jml_minggu, 'bulan' => $bl]);

        }

        // ambil tanggal periode
        public function ambil_tanggal_periode()
        {
            $bulan      = nice_date($this->input->post('bulan'), 'Y-m');
            $minggu_ke  = $this->input->post('minggu_ke');

            $a = $this->bulan_minggu($bulan, $minggu_ke);
            
            $tgl = explode(',',$a);

            $tgl_awal   = nice_date($tgl[0], 'd F Y');
            $tgl_akhir  = nice_date($tgl[1], 'd F Y');

            if ($tgl[1] == '') {
                $text_tanggal = "Periode Tanggal $tgl_awal.";
            } else {
                $text_tanggal = "Periode Tanggal $tgl_awal sampai $tgl_akhir.";
            }

            echo json_encode(['text_periode' => $text_tanggal]);
        }

        // unduh excel mingguan
        public function unduh_excel_mingguan()
        {
            $bl         = $this->input->post('bulan');
            $minggu_ke  = $this->input->post('minggu_ke');

            $bulan      = nice_date($bl, 'Y-m');

            $a = $this->bulan_minggu($bulan, $minggu_ke);

            $tgl = explode(',', $a);

            $tgl_awal   = $tgl[0];
            $tgl_akhir  = $tgl[1];

            // mencari jumlah minggu
            $b = $this->bulan_minggu($bulan);
            
            $data = ['laporan'      => "Rekap Mingguan",
                     'tgl_awal'     => $tgl_awal,
                     'tgl_akhir'    => $tgl_akhir,
                     'list'         => $this->M_rekap->get_projek()->result_array(),
                     'posisi'       => $this->M_rekap->ambil_posisi()->result_array(),
                     'bulan'        => $bulan,
                     'minggu_ke'    => $minggu_ke,
                     'jml_minggu'   => count($b)
                    ];

            $this->template->load('template_excel', 'rekap/V_excel_mingguan', $data);
        }

    public function rekap_bulanan()
    {
        $data = ['menu' => 'Rekap', 
                 'page' => 'Rekap Bulanan'
                ];

        $this->template->load('layout/template', 'rekap/V_rekap_bulanan', $data);
    }

    // 16-04-2020
        // menampilkan data list projek bulanan
        public function tampil_list_projek_bulanan()
        {
            $bl     = $this->input->post('bulan');
            $bulan  = nice_date($bl, 'Y-m');

            // if ($bl != '') {
            //     $bulan  = nice_date($bl, 'Y-m');
            // } else {
            //     $bulan  = date("Y-m", now('Asia/Jakarta'));
            // }

            if ($bl != '') {

                $list = $this->M_rekap->get_projek_bulanan()->result_array();

                $no =1;
                foreach ($list as $v) {
                    $tbody = array(); 

                    $tbody[] = "<div align='center'>".$no++.".</div>";
                    $tbody[] = $v['nama_sub_projek'];
                    $tbody[] = $v['nama_pegawai'];

                    $minggu     = $this->bulan_minggu($bulan);
                    $jml_minggu = count($minggu);

                    for ($i=1; $i <=$jml_minggu; $i++) { 

                        $a = $this->bulan_minggu($bulan, $i);

                        $tgl = explode(',', $a);

                        $tgl_awal   = $tgl[0];
                        $tgl_akhir  = ($tgl[1] != '') ? $tgl[1] : $tgl[0];

                        // cari banyaknya posisi
                        $c_posisi = $this->M_rekap->cari_banyak_posisi($v['id_data_projek']);

                        $jml_arr = array();
                        
                        foreach ($c_posisi->result_array() as $p) {
                            
                            $jns = strtolower($p['jenis_modul']);

                            $jns_modul = str_replace(' ','_', $jns);
                        
                            $list2 = $this->M_rekap->get_data_modul_pos($tgl_awal, $tgl_akhir, $p['id_posisi'], $v['id_data_projek'], $jns_modul)->result_array();
                        
                            $angka = array();
                        
                            $tot_progres = 0;
                            foreach ($list2 as $k) {
                                $tot_progres += $k['progres_modul'];
                            }
                        
                            array_push($angka, $tot_progres);
                        
                            $jml = array_sum($angka);

                            array_push($jml_arr, $jml);

                        }

                        $tot_minggu = array_sum($jml_arr) / $c_posisi->num_rows();
                        
                        $tbody[] = "<div align='center'>".number_format($tot_minggu, '2')." %</div>";

                    }

                    $data[]  = $tbody; 
                }

            } else {
                $list  = [];
            }

            if (!empty($list)) {
                echo json_encode(array('data'=> $data));
            }else{
                echo json_encode(array('data'=> 0));
            }
            
        }

        // unduh excel bulanan
        public function unduh_excel_bulanan()
        {
            $bl     = $this->input->post('bulan');
            $bulan  = nice_date($bl, 'Y-m');

            $jml    = $this->bulan_minggu($bl);

            $data = ['bulan'    => $bulan,
                     'laporan'  => "Rekap Bulanan",
                     'list'     => $this->M_rekap->get_projek_bulanan()->result_array(),
                     'jml'      => count($jml)
                    ];

            $this->template->load('template_excel', 'rekap/V_excel_bulanan', $data);
        }

        public function tes()
        {
            $a = $this->M_rekap->bulan_minggu('2020-04', 1);

            print_r($a);
        }

}

/* End of file C_rekap.php */
