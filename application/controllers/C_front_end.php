<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class C_front_end extends CI_Controller {

    // 14-05-2020

        
        public function __construct()
        {
            parent::__construct();
            $this->load->model(array('M_frontend','M_progress_projek','M_pelaporan_harian'));
        }
        

        public function index()
        {
            $this->cek_login_lib->logged_in_true();
            
            $data = ['judul'    => 'home'];

            $this->template->load('layout_frontend/template', 'frontend/V_home', $data);
        }

        public function tes2()
        {
            $cari = $this->M_frontend->get_data_order('status_projek', 'id_status_projek', 'asc')->result_array();

            $data[] = ['nama_status' => ''];

            foreach ($cari as $c) {

                array_push($data, ['nama_status' => $c['nama_status']]);
            }

            echo "<pre>";
            print_r($data);
            echo "</pre>";

        }

        public function tes()
        {
            $cari = $this->M_frontend->get_total_status()->result();

            foreach ($cari as $key => $c) {

                if ($key == 0) {
                    $st = true;
                } else {
                    $st = false;
                }
                
                $data[] = ['name'       => $c->nama_status,
                           'y'          => $c->total,
                           'sliced'     => $st,
                           'selected'   => $st
                          ];

            }

            echo "<pre>";
            $array_final = json_encode($data);
            $array = preg_replace('/"([a-zA-Z_]+[a-zA-Z0-9_]*)":/','$1:',$array_final);
            echo ($array);
            echo "</pre>";
        }

        public function projek()
        {
            $cari = $this->M_frontend->get_total_status()->result();

            foreach ($cari as $c) {

                $dt[] = ['label'    => $c->nama_status,
                         'value'    => (int) $c->total
                        ];

            }

            $array_final = json_encode($dt);
            $array = preg_replace('/"([a-zA-Z_]+[a-zA-Z0-9_]*)":/','$1:',$array_final);

            $skrg = date("F Y");

            $bln_s = date("F Y", strtotime("$skrg -5 months"));

            $data = ['judul'        => 'projek',
                     'st_projek'    => $this->M_frontend->get_data_order('status_projek', 'id_status_projek', 'asc')->result_array(),
                     'detail'       => $array,
                     'bln_skrg'     => $skrg,
                     'bln_krg'      => $bln_s
                    ];

            $this->template->load('layout_frontend/template', 'frontend/V_projek', $data);
        }

        // 19-05-2020
            // menampilkan list bulan projek 
            public function tampil_list_bulan_projek()
            {
                $skrg = date("F Y");

                $bln = array();

                for ($i=5; $i >= 0; $i--) { 
                    $a = date('Y-m', strtotime("$skrg -$i months"));
                    array_push($bln, array('bln' => $a));
                }

                $dt_bln = array();

                foreach ($bln as $b) {
                    
                    $list = $this->M_frontend->cari_jml_projek_bln($b['bln'])->row_array();

                    $dt_bln[] = ['bulan'    => nice_date($b['bln'], 'F Y'),
                                 'total'    => $list['total'],
                                 'bln'      => $b['bln']
                                ];

                }

                $no =1;
                foreach ($dt_bln as $v) {
                    $tbody = array();

                    if ($v['total'] == 0) {
                        $aksi = "<i class='text-danger mdi mdi-minus-circle-outline mdi-24px'></i>";
                    } else {
                        $aksi = "<span style='cursor:pointer' class='text-primary detail' data-toggle='tooltip' data-placement='top' title='Detail' data-id='".$v['bln']."' bulan='".$v['bulan']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                    }

                    $tbody[] = "<div align='center'>".$no++.".</div>";
                    $tbody[] = $v['bulan'];
                    $tbody[] = "<div align='center'>".$v['total']."</div>";
                    $tbody[] = $aksi;
                    $data[]  = $tbody; 
                }

                if ($dt_bln) {
                    echo json_encode(array('data'=> $data));
                }else{
                    echo json_encode(array('data'=> 0));
                }
            }

        public function progres()
        {
            $list = $this->M_progress_projek->get_data_persentase_projek_all_2()->result_array();

            $data = array();

            $no   = 0;

            foreach ($list as $o) {
                $no++;
                $tbody = array();

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

                // if (count($hasil) == 0) {
                //     $jml = '0.00';
                // } else {
                //     $jml = number_format($jml, '2');
                // }

                if (count($hasil) != 0) {
                    $data[number_format($jml, '2')]   = ['label'    => $o['nama_sub_projek'],
                                                         'value'    => number_format($jml, '2')
                                                        ];
                }

                // $data[$jml]   = ['label'    => $o['nama_sub_projek'],
                //                                   'value'    => $jml
                //                                  ];
                krsort($data);
            }

            $dt = array();

            foreach ($data as $key => $value) {
                $dt[] = $value;
            }

            $array_final = json_encode(array_slice($dt,0,10));
            $array       = preg_replace('/"([a-zA-Z_]+[a-zA-Z0-9_]*)":/','$1:',$array_final);

            $data = ['judul'    => 'progres',
                     'projek'   => $array,
                     'rnd'      => $this->M_frontend->hitung_clear_project(2)->num_rows(),
                     'tech'     => $this->M_frontend->hitung_clear_project(3)->num_rows(),
                     'mkt'      => $this->M_frontend->hitung_clear_project(4)->num_rows(),
                     'opr'      => $this->M_frontend->hitung_clear_project(5)->num_rows(),
                     'rnd_p'    => $this->M_frontend->hitung_project(2)->num_rows(),
                     'tech_p'   => $this->M_frontend->hitung_project(3)->num_rows(),
                     'mkt_p'    => $this->M_frontend->hitung_project(4)->num_rows(),
                     'opr_p'    => $this->M_frontend->hitung_project(5)->num_rows()
                    ];

            $this->template->load('layout_frontend/template', 'frontend/V_progres', $data);
        }

        public function coba3()
        {
            $list = $this->M_frontend->get_jml_projek_pegawai()->result_array();

            foreach ($list as $c) {

                $dt[] = ['label'    => $c['nama_pegawai'],
                         'value'    => (int) $c['jml_projek']
                        ];

            }

            $array_final = json_encode($dt);
            $array = preg_replace('/"([a-zA-Z_]+[a-zA-Z0-9_]*)":/','$1:',$array_final);

            echo "<pre>";
            echo($array);
            echo "</pre>";
        }

        public function list_pegawai()
        {
            $list = $this->M_frontend->get_jml_projek_pegawai()->result_array();

            foreach ($list as $c) {

                $dt[] = ['label'    => $c['nama_pegawai'],
                         'value'    => (int) $c['jml_projek']
                        ];

            }

            $array_final = json_encode($dt);
            $array = preg_replace('/"([a-zA-Z_]+[a-zA-Z0-9_]*)":/','$1:',$array_final);

            $data = ['judul'    => 'list_pegawai',
                     'pegawai'  => $array
                    ];

            $this->template->load('layout_frontend/template', 'frontend/V_list_pegawai', $data);
        }

    // 19-05-2020
        public function bulan()
        {
            $bln = array();

            $skrg = date("Y-m");

            $bln_s = date("F-Y", strtotime("$skrg -6 months"));

            for ($i=5; $i >= 0; $i--) { 
                $a = date('Y-m', strtotime("$skrg -$i months"));
                array_push($bln, array('bln' => $a));
            }

            $dt_bln = array();

            foreach ($bln as $b) {
                
                $list = $this->M_frontend->cari_jml_projek_bln($b['bln'])->row_array();

                $dt_bln[] = ['bulan'    => nice_date($b['bln'], 'F Y'),
                             'total'    => $list['total'],
                             'bln'      => $b['bln']
                            ];

            }

            echo "<pre>";
            print_r($dt_bln);
            echo "</pre>";
            
            
        }

        // menampilkan data projek menurut bulan
        public function tampil_list_projek_bulan()
        {
            $list = $this->M_frontend->get_data_persentase_projek_all();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

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
                    $jml = '0.00';
                } else {
                    $jml = number_format($jml, '2');
                }

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_sub_projek'];
                $tbody[]    = $o['instansi'];
                $tbody[]    = "<div align='center'>".$jml." %</div>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_frontend->jumlah_semua_persentase_projek_all(),
                        "recordsFiltered"  => $this->M_frontend->jumlah_filter_persentase_projek_all(),   
                        "data"             => $data
                    ];

            echo json_encode($output);  
        }

    // 18-05-2020
        public function coba2()
        {
            $list = $this->M_progress_projek->get_data_persentase_projek_all();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

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

                if (count($hasil) != 0) {
                    $data[number_format($jml, '2')]   = ['label'    => $o['nama_sub_projek'],
                                                        'value'    => number_format($jml, '2')
                                                        ];
                }

                
                krsort($data);
            }

            $dt = array();

            foreach ($data as $key => $value) {
                $dt[] = $value;
            }

            $array_final = json_encode(array_slice($dt,0,10));
            $array = preg_replace('/"([a-zA-Z_]+[a-zA-Z0-9_]*)":/','$1:',$array_final);
            
            echo "<pre>";
            echo($array);
            echo "</pre>";
        }
        

    // 15-05-2020
        public function tampil_persentase_projek_all()
        {
            $list = $this->M_progress_projek->get_data_persentase_projek_all();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

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
                $tbody[]    = $o['instansi'];
                $tbody[]    = "<div align='center'>".$jml." %</div>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_progress_projek->jumlah_semua_persentase_projek_all(),
                        "recordsFiltered"  => $this->M_progress_projek->jumlah_filter_persentase_projek_all(),   
                        "data"             => $data
                    ];

            echo json_encode($output);  
        }

        public function tampil_projek_pegawai()
        {
            $list = $this->M_progress_projek->get_data_projek_pegawai();

            $data = array();

            $no   = $this->input->post('start');

            foreach ($list as $o) {
                $no++;
                $tbody = array();

                if ($o['jml_projek'] != 0) {
                    $aksi = "<span style='cursor:pointer' class='text-primary lihat-progres' data-toggle='tooltip' data-placement='top' title='Detail Projek' nm_pegawai='".$o['nama_pegawai']."' data-id='".$o['id_pegawai']."'><i class='mdi mdi-information-outline mdi-24px'></i></span>";
                } else {
                    $aksi = "<i class='text-danger mdi mdi-minus-circle-outline mdi-24px'></i>";
                }

                $tbody[]    = "<div align='center'>".$no.".</div>";
                $tbody[]    = $o['nama_pegawai'];
                $tbody[]    = "<div align='center'>".$o['jml_projek']."</div>";
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
                $tbody[]    = $o['instansi'];
                $tbody[]    = "<div align='center'>".$jml." %</div>";
                $data[]     = $tbody;
            }

            $output = [ "draw"             => $_POST['draw'],
                        "recordsTotal"     => $this->M_progress_projek->jumlah_semua_list_projek_pegawai($id_pegawai),
                        "recordsFiltered"  => $this->M_progress_projek->jumlah_filter_list_projek_pegawai($id_pegawai),   
                        "data"             => $data
                    ];

            echo json_encode($output);
        }

}

/* End of file C_front_end.php */
