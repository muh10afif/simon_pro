<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pelaporan_harian extends CI_Model {

    public function __construct()
    {
        parent::__construct();
        $this->posisi       = $this->session->userdata('posisi');
        $this->nama_jabatan = $this->session->userdata('nama_jabatan');
        $this->id_pegawai   = $this->session->userdata('id_pegawai');
    }

    // 09-04-2020

        // cari data
        public function cari_data($tabel, $where)
        {
            return $this->db->get_where($tabel, $where);
        }
    
        // Menampilkan list list_projek
        public function get_data_list_projek()
        {
            $this->_get_datatables_query_list_projek();
    
            if ($this->input->post('length') != -1) {
                $this->db->limit($this->input->post('length'), $this->input->post('start'));
                
                return $this->db->get()->result_array();
            }
        }
    
        var $kolom_order_list_projek = [null, 'd.nama_sub_projek'];
        var $kolom_cari_list_projek  = ['LOWER(d.nama_sub_projek)'];
        var $order_list_projek       = ['d.nama_sub_projek' => 'asc'];
    
        public function _get_datatables_query_list_projek()
        {
            // $this->db->select('*, COALESCE((select total_keseluruhan from total_persentase where id_data_projek = data_projek.id_data_projek), 0) as progres');
            
            // $this->db->from('data_projek');
            // $this->db->where('status', 1);

            $this->db->select('*');
            $this->db->from('data_projek as d');
            $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
            $this->db->where('d.status', 1);
            $this->db->where('i.status', 1);

            $b = 0;
            
            $input_cari = strtolower($_POST['search']['value']);
            $kolom_cari = $this->kolom_cari_list_projek;
    
            foreach ($kolom_cari as $cari) {
                if ($input_cari) {
                    if ($b === 0) {
                        $this->db->group_start();
                        $this->db->like($cari, $input_cari);
                    } else {
                        $this->db->or_like($cari, $input_cari);
                    }
    
                    if ((count($kolom_cari) - 1) == $b ) {
                        $this->db->group_end();
                    }
                }
    
                $b++;
            }
    
            if (isset($_POST['order'])) {
    
                $kolom_order = $this->kolom_order_list_projek;
                $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                
            } elseif (isset($this->order_list_projek)) {
                
                $order = $this->order_list_projek;
                $this->db->order_by(key($order), $order[key($order)]);
                
            }
            
        }
    
        public function jumlah_semua_list_projek()
        {
            $this->db->select('*');
            $this->db->from('data_projek as d');
            $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
            $this->db->where('d.status', 1);
            $this->db->where('i.status', 1);
    
            return $this->db->count_all_results();
        }
    
        public function jumlah_filter_list_projek()
        {
            $this->_get_datatables_query_list_projek();
    
            return $this->db->get()->num_rows();
            
        }

    // 11-04-2020
    
        // Menampilkan list pegawai laporan
        public function get_data_list_pegawai_laporan()
        {
            $this->_get_datatables_query_list_pegawai_laporan();
    
            if ($this->input->post('length') != -1) {
                $this->db->limit($this->input->post('length'), $this->input->post('start'));
                
                return $this->db->get()->result_array();
            }
        }
    
        var $kolom_order_list_pegawai_laporan = [null, 'p.tanggal_laporan', 'g.nama_pegawai','s.nama_posisi','d.nama_sub_projek'];
        var $kolom_cari_list_pegawai_laporan  = ['CAST(p.tanggal_laporan as varchar)', 'LOWER(g.nama_pegawai)', 'LOWER(s.nama_posisi)', 'LOWER(d.nama_sub_projek)'];
        var $order_list_pegawai_laporan       = ['p.tanggal_laporan' => 'asc'];
    
        public function _get_datatables_query_list_pegawai_laporan()
        {
            // SELECT p.tanggal_laporan, g.nama_pegawai, s.nama_posisi, d.nama_sub_projek, t.id_tim_projek, s.id_posisi, g.id_pegawai
            // FROM laporan_projek as p
            // INNER JOIN tim_projek as t ON t.id_tim_projek = p.id_tim_projek
            // INNER JOIN m_pegawai as g ON g.id_pegawai = t.id_pegawai
            // INNER JOIN m_posisi as s ON s.id_posisi = g.id_posisi
            // INNER JOIN data_projek as d ON d.id_data_projek = t.id_data_projek
            // GROUP BY p.tanggal_laporan, g.nama_pegawai, s.nama_posisi, d.nama_sub_projek, t.id_tim_projek, s.id_posisi, g.id_pegawai
            $hari_ini = date('Y-m-d', now('Asia/Jakarta'));

            $this->db->select('p.tanggal_laporan, g.nama_pegawai, s.nama_posisi, d.nama_sub_projek, t.id_tim_projek, s.id_posisi, g.id_pegawai, p.jenis_modul, p.progres');
            $this->db->from('laporan_projek as p');
            $this->db->join('tim_projek as t', 't.id_tim_projek = p.id_tim_projek', 'inner');
            $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
            $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
            $this->db->join('data_projek as d', 'd.id_data_projek = t.id_data_projek', 'inner');

            $tgl_awal       = $this->input->post('tgl_awal');
            $tgl_akhir      = $this->input->post('tgl_akhir');
            $id_posisi      = $this->input->post('id_posisi');
            $id_data_projek = $this->input->post('id_data_projek');
            
            if ($tgl_awal && $tgl_akhir != '') {
                // $this->db->where("to_char(p.tanggal_laporan, 'YYYY-MM-DD') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."'");
                // $this->db->where("DATE_FORMAT(p.tanggal_laporan, '%Y-%m-%d') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."'");
                $this->db->where("to_char(p.tanggal_laporan, 'YYYY-MM-DD') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."'");
            } else {
                $this->db->where("to_char(p.tanggal_laporan, 'YYYY-MM-DD') LIKE '%$hari_ini%'");
            }
            
            if ($id_posisi != null) {
                $this->db->where('s.id_posisi', $id_posisi);
            }
            if ($id_data_projek != null) {
                $this->db->where('d.id_data_projek', $id_data_projek);
            }

            $this->db->group_by('p.tanggal_laporan')->group_by('g.nama_pegawai')->group_by('s.nama_posisi')->group_by('d.nama_sub_projek')->group_by('s.id_posisi')->group_by('t.id_tim_projek')->group_by('g.id_pegawai')->group_by('p.jenis_modul')->group_by('p.progres');

            $b = 0;
            
            $input_cari = strtolower($_POST['search']['value']);
            $kolom_cari = $this->kolom_cari_list_pegawai_laporan;
    
            foreach ($kolom_cari as $cari) {
                if ($input_cari) {
                    if ($b === 0) {
                        $this->db->group_start();
                        $this->db->like($cari, $input_cari);
                    } else {
                        $this->db->or_like($cari, $input_cari);
                    }
    
                    if ((count($kolom_cari) - 1) == $b ) {
                        $this->db->group_end();
                    }
                }
    
                $b++;
            }
    
            if (isset($_POST['order'])) {
    
                $kolom_order = $this->kolom_order_list_pegawai_laporan;
                $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                
            } elseif (isset($this->order_list_pegawai_laporan)) {
                
                $order = $this->order_list_pegawai_laporan;
                $this->db->order_by(key($order), $order[key($order)]);
                
            }
            
        }
    
        public function jumlah_semua_list_pegawai_laporan()
        {
            $hari_ini = date('Y-m-d', now('Asia/Jakarta'));

            $this->db->select('p.tanggal_laporan, g.nama_pegawai, s.nama_posisi, d.nama_sub_projek, t.id_tim_projek, s.id_posisi, g.id_pegawai, p.jenis_modul, p.progres');
            $this->db->from('laporan_projek as p');
            $this->db->join('tim_projek as t', 't.id_tim_projek = p.id_tim_projek', 'inner');
            $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
            $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
            $this->db->join('data_projek as d', 'd.id_data_projek = t.id_data_projek', 'inner');

            $tgl_awal       = $this->input->post('tgl_awal');
            $tgl_akhir      = $this->input->post('tgl_akhir');
            $id_posisi      = $this->input->post('id_posisi');
            $id_data_projek = $this->input->post('id_data_projek');
            
            if ($tgl_awal && $tgl_akhir != '') {
                // $this->db->where("to_char(p.tanggal_laporan, 'YYYY-MM-DD') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."'");
                // $this->db->where("DATE_FORMAT(p.tanggal_laporan, '%Y-%m-%d') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."'");
                $this->db->where("to_char(p.tanggal_laporan, 'YYYY-MM-DD') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."'");
            } else {
                $this->db->where("to_char(p.tanggal_laporan, 'YYYY-MM-DD') LIKE '%$hari_ini%'");
            }
            
            if ($id_posisi != null) {
                $this->db->where('s.id_posisi', $id_posisi);
            }
            if ($id_data_projek != null) {
                $this->db->where('d.id_data_projek', $id_data_projek);
            }

            $this->db->group_by('p.tanggal_laporan')->group_by('g.nama_pegawai')->group_by('s.nama_posisi')->group_by('d.nama_sub_projek')->group_by('s.id_posisi')->group_by('t.id_tim_projek')->group_by('g.id_pegawai')->group_by('p.jenis_modul')->group_by('p.progres');;
    
            return $this->db->count_all_results();
        }
    
        public function jumlah_filter_list_pegawai_laporan()
        {
            $this->_get_datatables_query_list_pegawai_laporan();
    
            return $this->db->get()->num_rows();
            
        }

        // menamppilkan nama posisi
        public function get_posisi_laporan()
        {
            $this->db->select('s.id_posisi, s.nama_posisi');
            $this->db->from('laporan_projek as p');
            $this->db->join('tim_projek as t', 't.id_tim_projek = p.id_tim_projek', 'inner');
            $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
            $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
            $this->db->join('data_projek as d', 'd.id_data_projek = t.id_data_projek', 'inner');

            $this->db->group_by('s.id_posisi');
            $this->db->group_by('s.nama_posisi');
            
            return $this->db->get();
            
        }

        // menamppilkan nama projek
        public function get_nm_projek_laporan()
        {
            $this->db->select('d.id_data_projek, d.nama_sub_projek');
            $this->db->from('laporan_projek as p');
            $this->db->join('tim_projek as t', 't.id_tim_projek = p.id_tim_projek', 'inner');
            $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
            $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
            $this->db->join('data_projek as d', 'd.id_data_projek = t.id_data_projek', 'inner');

            $this->db->group_by('d.id_data_projek');
            $this->db->group_by('d.nama_sub_projek');
            
            return $this->db->get();
            
        }

        // menampilkan detail
        public function get_data_detail_pegawai_laporan($tgl_laporan, $id_posisi, $id_tim_projek)
        {
            $this->db->select('p.tanggal_laporan, g.nama_pegawai, s.nama_posisi, d.nama_sub_projek, t.id_tim_projek, s.id_posisi, g.id_pegawai,p.jenis_modul');
            $this->db->from('laporan_projek as p');
            $this->db->join('tim_projek as t', 't.id_tim_projek = p.id_tim_projek', 'inner');
            $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
            $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
            $this->db->join('data_projek as d', 'd.id_data_projek = t.id_data_projek', 'inner');

            $this->db->where('p.tanggal_laporan', $tgl_laporan);
            $this->db->where('s.id_posisi', $id_posisi);
            $this->db->where('t.id_tim_projek', $id_tim_projek);

            $this->db->group_by('p.tanggal_laporan')->group_by('g.nama_pegawai')->group_by('s.nama_posisi')->group_by('d.nama_sub_projek')->group_by('s.id_posisi')->group_by('t.id_tim_projek')->group_by('g.id_pegawai')->group_by('p.jenis_modul');

            return $this->db->get();
        }

        // ambil data detail laporan
        public function get_data_modul_laporan_peg($tgl_laporan, $id_tim_projek)
        {
            $this->db->select('*');
            $this->db->from('laporan_projek');
            $this->db->where('tanggal_laporan', $tgl_laporan);
            $this->db->where('id_tim_projek', $id_tim_projek);
            
            return $this->db->get();
            
        }

        // ambil detail modul
        public function get_detail_modul($id_modul, $jns_modul)
        {
            $jenis_modul = str_replace(' ', '_', strtolower($jns_modul));

            return $this->db->get_where($jenis_modul, array("id_$jenis_modul" => $id_modul));
        }

        // ambil deskripsi
        public function get_detail_modul_des($tgl_laporan, $id_tim_projek, $id_modul, $jns_modul)
        {
            return $this->db->get_where('laporan_projek', array('tanggal_laporan' => $tgl_laporan, 'id_tim_projek' => $id_tim_projek, 'id_modul' => $id_modul, 'jenis_modul' => $jns_modul));
        }

    // 12-04-2020
        // menampilkan tim projek
        public function get_tim_projek($id_data_projek)
        {
            $this->db->select('t.id_tim_projek, g.nama_pegawai, s.nama_posisi, s.jenis_modul');
            $this->db->from('tim_projek as t');
            $this->db->join('data_projek as p', 'p.id_data_projek = t.id_data_projek', 'inner');
            $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
            $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
            $this->db->where('p.id_data_projek', $id_data_projek);
            
            return $this->db->get();
            
        }

        // cari data projek
        public function cari_data_projek($id_data_projek)
        {
            $this->db->select('*');
            $this->db->from('data_projek as d');
            $this->db->join('data_induk_projek as t', 't.id_induk_projek = d.id_induk_projek', 'inner');
            $this->db->join('total_persentase as p', 'p.id_data_projek = d.id_data_projek', 'left');
            $this->db->where('d.id_data_projek', $id_data_projek);

            return $this->db->get();
            
        }

        public function detail_laporan()
        {
            # code...
        }

    // 14-04-2020
        // menampilkan nama pegawai dengan progres
        public function get_data_progres_pegawai($id_data_projek)
        {
            $this->db->select('p.id_pegawai, p.nama_pegawai, dp.id_data_projek, si.id_posisi, si.nama_posisi, si.jenis_modul, t.id_tim_projek');
            $this->db->from('tim_projek as t');
            $this->db->join('m_pegawai as p', 'p.id_pegawai = t.id_pegawai', 'inner');
            $this->db->join('data_projek as dp', 'dp.id_data_projek = t.id_data_projek', 'inner');
            $this->db->join('m_posisi as si', 'si.id_posisi = p.id_posisi', 'inner');
            $this->db->where('dp.id_data_projek', $id_data_projek);
            // $this->db->where('dp.status', 1);
            // $this->db->where('si.id_posisi !=', 1);
            
            return $this->db->get();
        }

        // menampilkan detail projek
        public function get_detail_projek($id_posisi, $id_tim_projek)
        {
            $this->db->select('p.nama_pegawai, dp.id_data_projek, si.id_posisi, si.jenis_modul, dp.nama_sub_projek, si.nama_posisi');
            $this->db->from('tim_projek as t');
            $this->db->join('m_pegawai as p', 'p.id_pegawai = t.id_pegawai', 'inner');
            $this->db->join('data_projek as dp', 'dp.id_data_projek = t.id_data_projek', 'inner');
            $this->db->join('m_posisi as si', 'si.id_posisi = p.id_posisi', 'inner');
            // $this->db->where('dp.status', 1);
            $this->db->where('si.id_posisi', $id_posisi);
            $this->db->where('t.id_tim_projek', $id_tim_projek);
            
            return $this->db->get();
        }

        // menampilkan modul
        public function get_modul_projek($id_tim_projek, $jenis_modul)
        {
            $this->db->select("m.id_$jenis_modul as id_modul, lp.jenis_modul, m.nama_modul");
            $this->db->from('laporan_projek as lp');
            $this->db->join("$jenis_modul as m", "m.id_$jenis_modul = lp.id_modul", 'inner');
            $this->db->where('lp.id_tim_projek', $id_tim_projek);
            $this->db->group_by("m.id_$jenis_modul");
            $this->db->group_by('lp.jenis_modul');
            $this->db->group_by('m.nama_modul');
            
            return $this->db->get();   
        }

        public function get_modul_projek_filter($tgl_awal, $tgl_akhir, $id_tim_projek, $jenis_modul)
        {
            $this->db->select("m.id_$jenis_modul as id_modul, lp.jenis_modul, m.nama_modul");
            $this->db->from('laporan_projek as lp');
            $this->db->join("$jenis_modul as m", "m.id_$jenis_modul = lp.id_modul", 'inner');
            $this->db->where('lp.id_tim_projek', $id_tim_projek);
            // $this->db->where("DATE_FORMAT(lp.tanggal_laporan, '%Y-%m-%d') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."'");

            $this->db->where("to_char(lp.tanggal_laporan, 'YYYY-MM-DD') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."'");
            
            $this->db->group_by("m.id_$jenis_modul");
            $this->db->group_by('lp.jenis_modul');
            $this->db->group_by('m.nama_modul');
            
            return $this->db->get();   
        }

        // ambil deskripsi
        public function get_detail_modul_des_filter($tgl_awal, $tgl_akhir, $id_tim_projek, $id_modul, $jns_modul)
        {
            // $this->db->where("DATE_FORMAT(tanggal_laporan, '%Y-%m-%d') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."'");

            $this->db->where("to_char(tanggal_laporan, 'YYYY-MM-DD') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."'");

            $this->db->where('id_tim_projek', $id_tim_projek);
            $this->db->where('id_modul', $id_modul);
            $this->db->where('jenis_modul', $jns_modul);
            
            return $this->db->get('laporan_projek');
        }

        // ambil deskripsi
        public function get_detail_modul_user($id_tim_projek, $id_modul, $jns_modul)
        {
            return $this->db->get_where('laporan_projek', array('id_tim_projek' => $id_tim_projek, 'id_modul' => $id_modul, 'jenis_modul' => $jns_modul));
        }

    // 15-04-2020
        // serverside list laporan
        public function get_data_list_laporan()
        {
            $this->_get_datatables_query_list_laporan();
    
            if ($this->input->post('length') != -1) {
                $this->db->limit($this->input->post('length'), $this->input->post('start'));
                
                return $this->db->get()->result_array();
            }
        }
    
        var $kolom_order_list_laporan = [null, 'tanggal_laporan', 'deskripsi'];
        var $kolom_cari_list_laporan  = ['tanggal_laporan', 'LOWER(deskripsi)'];
        var $order_list_laporan       = ['tanggal_laporan' => 'desc'];
    
        public function _get_datatables_query_list_laporan()
        {
            $id_modul       = $this->input->post('id_modul');
            $id_tim_projek  = $this->input->post('id_tim_projek');
            $jenis_modul    = $this->input->post('jenis_modul');

            $jns = ucwords(str_replace('_',' ', $jenis_modul));

            $this->db->select('*');
            $this->db->from('laporan_projek');
            if ($id_modul != '0') {
                $this->db->where('id_modul', $id_modul);
            }
            $this->db->where('id_tim_projek', $id_tim_projek);
            $this->db->where('jenis_modul', $jns);            

            $b = 0;
            
            $input_cari = strtolower($_POST['search']['value']);
            $kolom_cari = $this->kolom_cari_list_laporan;
    
            foreach ($kolom_cari as $cari) {
                if ($input_cari) {
                    if ($b === 0) {
                        $this->db->group_start();
                        $this->db->like($cari, $input_cari);
                    } else {
                        $this->db->or_like($cari, $input_cari);
                    }
    
                    if ((count($kolom_cari) - 1) == $b ) {
                        $this->db->group_end();
                    }
                }
    
                $b++;
            }
    
            if (isset($_POST['order'])) {
    
                $kolom_order = $this->kolom_order_list_laporan;
                $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                
            } elseif (isset($this->order_list_laporan)) {
                
                $order = $this->order_list_laporan;
                $this->db->order_by(key($order), $order[key($order)]);
                
            }
            
        }
    
        public function jumlah_semua_list_laporan()
        {
            $id_modul       = $this->input->post('id_modul');
            $id_tim_projek  = $this->input->post('id_tim_projek');
            $jenis_modul    = $this->input->post('jenis_modul');

            $jns = ucwords(str_replace('_',' ', $jenis_modul));       
            
            $this->db->select('*');
            $this->db->from('laporan_projek');
            if ($id_modul != '0') {
                $this->db->where('id_modul', $id_modul);
            }
            $this->db->where('id_tim_projek', $id_tim_projek);
            $this->db->where('jenis_modul', $jns);
    
            return $this->db->count_all_results();
        }
    
        public function jumlah_filter_list_laporan()
        {
            $this->_get_datatables_query_list_laporan();
    
            return $this->db->get()->num_rows();
            
        }

        public function input_data($tabel, $data)
        {
            $this->db->insert($tabel, $data);
        }
    
        public function ubah_data($tabel, $data, $where)
        {
            return $this->db->update($tabel, $data, $where);
        }
    
        public function hapus_data($tabel, $where)
        {
            $this->db->delete($tabel, $where);
        }

    // 16-04-2020
        public function cari_data_progres($id_tim_projek, $id_modul, $jns)
        {
            $this->db->select('*');
            $this->db->from('laporan_projek');
            $this->db->where('id_tim_projek', $id_tim_projek);
            $this->db->where('id_modul', $id_modul);
            $this->db->where('jenis_modul', $jns);
            $this->db->order_by("tanggal_laporan", 'desc');
            
            return $this->db->get();
            
        }

    // 20-04-2020
        public function get_posisi($id_data_projek)
        {
            // SELECT si.id_posisi, si.jenis_modul
            // FROM tim_projek as tp
            // INNER JOIN m_pegawai as w ON w.id_pegawai = tp.id_pegawai
            // INNER JOIN m_posisi as si ON si.id_posisi = w.id_posisi
            // WHERE tp.id_data_projek = 2 and si.id_posisi != 4

            $this->db->select('si.id_posisi, si.jenis_modul');
            $this->db->from('tim_projek as tp');
            $this->db->join('m_pegawai as w', 'w.id_pegawai = tp.id_pegawai', 'inner');
            $this->db->join('m_posisi as si', 'si.id_posisi = w.id_posisi', 'inner');
            $this->db->where('tp.id_data_projek', $id_data_projek);

            // if ($this->nama_jabatan == 'Staff') {
            //     $this->db->where('si.id_posisi', $this->posisi);
            // }
            
            return $this->db->get();
            
        }

        public function get_posisi_2($id_data_projek)
        {
            // SELECT si.id_posisi, si.jenis_modul
            // FROM tim_projek as tp
            // INNER JOIN m_pegawai as w ON w.id_pegawai = tp.id_pegawai
            // INNER JOIN m_posisi as si ON si.id_posisi = w.id_posisi
            // WHERE tp.id_data_projek = 2 and si.id_posisi != 4

            $this->db->select('si.id_posisi, si.jenis_modul');
            $this->db->from('tim_projek as tp');
            $this->db->join('m_pegawai as w', 'w.id_pegawai = tp.id_pegawai', 'inner');
            $this->db->join('m_posisi as si', 'si.id_posisi = w.id_posisi', 'inner');
            $this->db->where('tp.id_data_projek', $id_data_projek);

            if ($this->nama_jabatan == 'Manager') {
                if ($this->posisi != '') {
                    $this->db->where('w.id_pegawai', $this->id_pegawai);
                }
            } elseif ($this->nama_jabatan == 'Staff') {
                $this->db->where('w.id_pegawai', $this->id_pegawai);
            }
            
            return $this->db->get();
            
        }

        public function get_data_modul_pos_tgl($tgl_awal, $tgl_akhir, $id_posisi, $id_data_projek, $jns_modul, $id_pegawai)
        {

            $this->db->where("to_char(lp.tanggal_laporan, 'YYYY-MM-DD') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."'");

            // if ($jns_modul == 'modul_tetap') {
            //     $this->db->select("m.id_$jns_modul as id_modul, m.nama_modul, m.persentase, tp.id_tim_projek, 
                
            //     COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul and DATE_FORMAT(lp.tanggal_laporan, '%Y-%m-%d') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."' ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as tot_progres_sekarang, 
                
            //     COALESCE( CAST(COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul and DATE_FORMAT(lp.tanggal_laporan, '%Y-%m-%d') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."' ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as decimal) / 100 ,0) * m.persentase as progres_modul
                
            //     ");
                
            // } else {
            //     $this->db->select("m.id_$jns_modul as id_modul, m.nama_modul, m.persentase, tp.id_tim_projek,(SELECT count(md.id_isi_modul) as jml_isi_modul FROM isi_modul_projek as md WHERE md.id_modul_projek = m.id_modul_projek) as jml_isi_modul, 

            //     COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul and DATE_FORMAT(lp.tanggal_laporan, '%Y-%m-%d') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."' ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as tot_progres_sekarang, 
                
            //     COALESCE( CAST(COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul and DATE_FORMAT(lp.tanggal_laporan, '%Y-%m-%d') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."' ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as decimal) / 100 ,0) * m.persentase as progres_modul

            //     ");
            // }
            if ($jns_modul == 'modul_tetap') {
                $this->db->select("m.id_$jns_modul as id_modul, m.nama_modul, m.persentase, tp.id_tim_projek, 
                
                COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul and to_char(lp.tanggal_laporan, 'YYYY-MM-DD') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."' ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as tot_progres_sekarang, 
                
                COALESCE( CAST(COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul and to_char(lp.tanggal_laporan, 'YYYY-MM-DD') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."' ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as decimal) / 100 ,0) * m.persentase as progres_modul
                
                ");
                
            } else {
                $this->db->select("m.id_$jns_modul as id_modul, m.nama_modul, m.persentase, tp.id_tim_projek,(SELECT count(md.id_isi_modul) as jml_isi_modul FROM isi_modul_projek as md WHERE md.id_modul_projek = m.id_modul_projek) as jml_isi_modul, 

                COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul and to_char(lp.tanggal_laporan, 'YYYY-MM-DD') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."' ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as tot_progres_sekarang, 
                
                COALESCE( CAST(COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul and to_char(lp.tanggal_laporan, 'YYYY-MM-DD') BETWEEN '".nice_date($tgl_awal, 'Y-m-d')."' AND '".nice_date($tgl_akhir, 'Y-m-d')."' ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as decimal) / 100 ,0) * m.persentase as progres_modul

                ");
            }

            $this->db->from('tim_projek as tp'); 
            $this->db->join('m_pegawai as w', 'w.id_pegawai = tp.id_pegawai', 'inner');
            $this->db->join('m_posisi as si', 'si.id_posisi = w.id_posisi', 'inner');
            $this->db->join("$jns_modul as m", 'm.id_posisi = si.id_posisi', 'inner');
            $this->db->where('tp.id_data_projek', $id_data_projek);
            if ($jns_modul == 'modul_projek') {
                $this->db->where('m.id_data_projek', $id_data_projek);
            }
            $this->db->where('w.id_pegawai', $id_pegawai);
            $this->db->where('si.id_posisi', $id_posisi);
            $this->db->group_by("m.id_$jns_modul");
            $this->db->group_by('tp.id_tim_projek');

            return $this->db->get();
            
        }

    // 20-04-2020
        public function cari_data_laporan($id_tim_projek, $id_modul, $jenis_modul)
        {
            $this->db->select('*');
            $this->db->from('laporan_projek');
            $this->db->where('id_tim_projek', $id_tim_projek);
            $this->db->where('id_modul', $id_modul);
            $this->db->where('jenis_modul', $jenis_modul);
            $this->db->order_by('tanggal_laporan', 'desc');
            
            return $this->db->get();
            
        }
}

/* End of file M_pelaporan_harian.php */
