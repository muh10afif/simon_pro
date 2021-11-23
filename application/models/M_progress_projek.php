<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class M_progress_projek extends CI_Model {

    public function __construct()
    {
        parent::__construct();
        $this->posisi       = $this->session->userdata('posisi');
        $this->nama_jabatan = $this->session->userdata('nama_jabatan');
        $this->id_pegawai   = $this->session->userdata('id_pegawai');
    }

    // 07-04-2020

        public function cari_data($tabel, $where)
        {
            return $this->db->get_where($tabel, $where);
        }

        public function get_data($tabel)
        {
            return $this->db->get($tabel);
        }

        public function get_data_order($tabel, $field, $order)
        {
            $this->db->order_by($field, $order);
            
            return $this->db->get($tabel);
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

        // Menampilkan list persentase_projek
        public function get_data_persentase_projek()
        {
            $this->_get_datatables_query_persentase_projek();
    
            if ($this->input->post('length') != -1) {
                $this->db->limit($this->input->post('length'), $this->input->post('start'));
                
                return $this->db->get()->result_array();
            }
        }
    
        var $kolom_order_persentase_projek = [null, 'd.nama_sub_projek', 'i.instansi'];
        var $kolom_cari_persentase_projek  = ['LOWER(d.nama_sub_projek)', 'LOWER(i.instansi)'];
        var $order_persentase_projek       = ['d.nama_sub_projek' => 'asc'];
    
        public function _get_datatables_query_persentase_projek()
        {
            $this->db->select('*');
            $this->db->from('data_projek as d');
            $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
            $this->db->join('status_projek as p', 'p.id_status_projek = d.status', 'inner');
            
            if ($this->nama_jabatan == 'Manager' || $this->nama_jabatan == 'Direktur') {

                if ($this->posisi != '') {
                    $this->db->join('tim_projek as t', 't.id_data_projek = d.id_data_projek', 'inner');
                    $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
                    $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
                    $this->db->where('g.id_pegawai', $this->id_pegawai);
                }
                
            } else {
                $this->db->join('tim_projek as t', 't.id_data_projek = d.id_data_projek', 'inner');
                $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
                $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
                $this->db->where('g.id_pegawai', $this->id_pegawai);
            }

            $b = 0;
            
            $input_cari = strtolower($_POST['search']['value']);
            $kolom_cari = $this->kolom_cari_persentase_projek;
    
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
    
                $kolom_order = $this->kolom_order_persentase_projek;
                $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                
            } elseif (isset($this->order_persentase_projek)) {
                
                $order = $this->order_persentase_projek;
                $this->db->order_by(key($order), $order[key($order)]);
                
            }
            
        }
    
        public function jumlah_semua_persentase_projek()
        {
            $this->db->select('*');
            $this->db->from('data_projek as d');
            $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
            $this->db->join('status_projek as p', 'p.id_status_projek = d.status', 'inner');

            if ($this->nama_jabatan == 'Manager' || $this->nama_jabatan == 'Direktur') {

                if ($this->posisi != '') {
                    $this->db->join('tim_projek as t', 't.id_data_projek = d.id_data_projek', 'inner');
                    $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
                    $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
                    $this->db->where('g.id_pegawai', $this->id_pegawai);
                }
                
            } else {
                $this->db->join('tim_projek as t', 't.id_data_projek = d.id_data_projek', 'inner');
                $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
                $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
                $this->db->where('g.id_pegawai', $this->id_pegawai);
            }

            return $this->db->count_all_results();
        }
    
        public function jumlah_filter_persentase_projek()
        {
            $this->_get_datatables_query_persentase_projek();
    
            return $this->db->get()->num_rows();
            
        }

        public function get_data_persentase_projek_all_2()
        {
            $this->db->select('*');
            $this->db->from('data_projek as d');
            $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
            // $this->db->where('d.status', 1);
            $this->db->where('i.status', 1);

            return $this->db->get();
        }

        // Menampilkan list persentase_projek_all
        public function get_data_persentase_projek_all()
        {
            $this->_get_datatables_query_persentase_projek_all();

            if ($this->input->post('length') != -1) {
                $this->db->limit($this->input->post('length'), $this->input->post('start'));
                
                return $this->db->get()->result_array();
            }
        }

        var $kolom_order_persentase_projek_all = [null, 'd.nama_sub_projek', 'i.instansi'];
        var $kolom_cari_persentase_projek_all  = ['LOWER(d.nama_sub_projek)', 'LOWER(i.instansi)'];
        var $order_persentase_projek_all       = ['d.nama_sub_projek' => 'asc'];

        public function _get_datatables_query_persentase_projek_all()
        {
            $this->db->select('*');
            $this->db->from('data_projek as d');
            $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
            // $this->db->where('d.status', 1);
            $this->db->where('i.status', 1);
            
            $b = 0;
            
            $input_cari = strtolower($_POST['search']['value']);
            $kolom_cari = $this->kolom_cari_persentase_projek_all;

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

                $kolom_order = $this->kolom_order_persentase_projek_all;
                $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                
            } elseif (isset($this->order_persentase_projek_all)) {
                
                $order = $this->order_persentase_projek_all;
                $this->db->order_by(key($order), $order[key($order)]);
                
            }
            
        }

        public function jumlah_semua_persentase_projek_all()
        {
            $this->db->select('*');
            $this->db->from('data_projek as d');
            $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
            // $this->db->where('d.status', 1);
            $this->db->where('i.status', 1);

            return $this->db->count_all_results();
        }

        public function jumlah_filter_persentase_projek_all()
        {
            $this->_get_datatables_query_persentase_projek_all();

            return $this->db->get()->num_rows();
            
        }

        // ambil detail projek
        public function cari_data_detail_projek($id_data_projek)
        {
            $this->db->select('*');
            $this->db->from('data_projek as d');
            $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
            $this->db->where('d.id_data_projek', $id_data_projek);
            
            return $this->db->get();
        }

    // 08-04-2020
        // menampilkan data modul
        public function get_data_modul($tabel_modul, $id_data_projek, $id_posisi)
        {
            if ($tabel_modul == 'modul_tetap') {

                $this->db->select('t.*, t.id_modul_tetap as id_modul');
                $this->db->from('modul_tetap as t');
                $this->db->where('t.id_posisi', $id_posisi);
            
            } else {

                $this->db->select('p.*, p.id_modul_projek as id_modul, COALESCE( (select count(i.id_isi_modul) as jml_isi_modul from isi_modul_projek as i where i.id_modul_projek = p.id_modul_projek  ) ,0) as jml_isi_modul');
                $this->db->from('modul_projek as p');
                $this->db->where('p.id_data_projek', $id_data_projek);
                $this->db->where('p.id_posisi', $id_posisi);
            
            }

            return $this->db->get();
            
        }

        // cari data jumlah progress per modul
        public function cari_progres_modul($id_modul, $jenis_modul, $id_data_projek)
        {
            $this->db->select("sum(progres) as tot_progres, (select persentase from $jenis_modul where id_$jenis_modul = id_transaksi)");
            $this->db->from('persentase_projek');
            $this->db->where('id_data_projek', $id_data_projek);
            $this->db->where('id_transaksi', $id_modul);
            $this->db->where('jenis_modul', $jenis_modul);
            
            return $this->db->get();
            
        }

        // ambil data tim projek 
        public function cari_data_tim_projek($id_posisi, $id_data_projek)
        {
            $this->db->select('j.id_pegawai, p.nama_pegawai, s.nama_posisi');
            $this->db->from('tim_projek as j');
            $this->db->join('m_pegawai as p', 'p.id_pegawai = j.id_pegawai', 'inner');
            $this->db->join('m_posisi as s', 's.id_posisi = p.id_posisi', 'inner');
            $this->db->where('j.id_data_projek', $id_data_projek);
            $this->db->where('p.id_posisi', $id_posisi);
            $this->db->group_by('j.id_pegawai');
            $this->db->group_by('p.nama_pegawai');
            $this->db->group_by('s.nama_posisi');
            
            return $this->db->get(); 
        }

        // Menampilkan list pegawai projek
        public function get_data_projek_pegawai()
        {
            $this->_get_datatables_query_projek_pegawai();
    
            if ($this->input->post('length') != -1) {
                $this->db->limit($this->input->post('length'), $this->input->post('start'));
                
                return $this->db->get()->result_array();
            }
        }
    
        var $kolom_order_projek_pegawai = [null, 'p.nama_pegawai', 'jml_projek'];
        var $kolom_cari_projek_pegawai  = ['LOWER(p.nama_pegawai)'];
        var $order_projek_pegawai       = ['p.nama_pegawai' => 'asc'];
    
        public function _get_datatables_query_projek_pegawai()
        {
            $this->db->select('p.id_pegawai, (SELECT g.nama_pegawai as nama_pegawai FROM m_pegawai as g WHERE g.id_pegawai = p.id_pegawai) as nama_pegawai, (SELECT count(m.id_data_projek) as jml_projek FROM tim_projek as m WHERE m.id_pegawai = p.id_pegawai) as jml_projek');
            $this->db->from('m_pegawai as p');
            // $this->db->where('p.id_posisi !=', null);
            // $this->db->where('p.id_posisi !=', 1);
            
            $this->db->group_by('p.id_pegawai');
            
            $b = 0;
            
            $input_cari = strtolower($_POST['search']['value']);
            $kolom_cari = $this->kolom_cari_projek_pegawai;
    
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
    
                $kolom_order = $this->kolom_order_projek_pegawai;
                $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                
            } elseif (isset($this->order_projek_pegawai)) {
                
                $order = $this->order_projek_pegawai;
                $this->db->order_by(key($order), $order[key($order)]);
                
            }
            
        }
    
        public function jumlah_semua_projek_pegawai()
        {
            $this->db->select('p.id_pegawai, (SELECT g.nama_pegawai as nama_pegawai FROM m_pegawai as g WHERE g.id_pegawai = p.id_pegawai) as nama_pegawai, (SELECT count(m.id_data_projek) as jml_projek FROM tim_projek as m WHERE m.id_pegawai = p.id_pegawai) as jml_projek');
            $this->db->from('m_pegawai as p');
            // $this->db->where('p.id_posisi !=', null);
            // $this->db->where('p.id_posisi !=', 1);

            $this->db->group_by('p.id_pegawai');
    
            return $this->db->count_all_results();
        }
    
        public function jumlah_filter_projek_pegawai()
        {
            $this->_get_datatables_query_projek_pegawai();
    
            return $this->db->get()->num_rows();
            
        }

        // Menampilkan list pegawai projek
        public function get_data_list_projek_pegawai($id_pegawai)
        {
            $this->_get_datatables_query_list_projek_pegawai($id_pegawai);
    
            if ($this->input->post('length') != -1) {
                $this->db->limit($this->input->post('length'), $this->input->post('start'));
                
                return $this->db->get()->result_array();
            }
        }
    
        var $kolom_order_list_projek_pegawai = [null, 'j.nama_sub_projek', 'i.instansi', 'tot_modul'];
        var $kolom_cari_list_projek_pegawai  = ['LOWER(j.nama_sub_projek)', 'LOWER(i.instansi)'];
        var $order_list_projek_pegawai       = ['j.nama_sub_projek' => 'asc'];
    
        public function _get_datatables_query_list_projek_pegawai($id_pegawai)
        {
            $this->db->select('j.nama_sub_projek, i.instansi, j.id_data_projek, w.id_posisi');
            $this->db->from('data_projek as j');
            $this->db->join('data_induk_projek as i', 'i.id_induk_projek = j.id_induk_projek', 'inner');
            $this->db->join('tim_projek as t', 't.id_data_projek = j.id_data_projek', 'inner');
            $this->db->join('m_pegawai as w', 'w.id_pegawai = t.id_pegawai', 'inner');
            $this->db->where('w.id_pegawai', $id_pegawai);
            
            $b = 0;
            
            $input_cari = strtolower($_POST['search']['value']);
            $kolom_cari = $this->kolom_cari_list_projek_pegawai;
    
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
    
                $kolom_order = $this->kolom_order_list_projek_pegawai;
                $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                
            } elseif (isset($this->order_list_projek_pegawai)) {
                
                $order = $this->order_list_projek_pegawai;
                $this->db->order_by(key($order), $order[key($order)]);
                
            }
            
        }
    
        public function jumlah_semua_list_projek_pegawai($id_pegawai)
        {
            $this->db->select('j.nama_sub_projek, i.instansi, j.id_data_projek, w.id_posisi');
            $this->db->from('data_projek as j');
            $this->db->join('data_induk_projek as i', 'i.id_induk_projek = j.id_induk_projek', 'inner');
            $this->db->join('tim_projek as t', 't.id_data_projek = j.id_data_projek', 'inner');
            $this->db->join('m_pegawai as w', 'w.id_pegawai = t.id_pegawai', 'inner');
            $this->db->where('w.id_pegawai', $id_pegawai);
    
            return $this->db->count_all_results();
        }
    
        public function jumlah_filter_list_projek_pegawai($id_pegawai)
        {
            $this->_get_datatables_query_list_projek_pegawai($id_pegawai);
    
            return $this->db->get()->num_rows();
            
        }

        // mengambil isi modul projek pegawai
        public function get_data_modul_peg($id_pegawai, $id_data_projek, $jns_modul)
        {
            if ($jns_modul == 'modul_tetap') {
                $this->db->select("m.id_$jns_modul as id_modul, m.nama_modul, m.persentase, tp.id_tim_projek, 
                
                COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as tot_progres_sekarang,
                
                COALESCE( CAST(COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as decimal) / 100 ,0) * m.persentase as progres_modul");
                
            } else {
                $this->db->select("m.id_$jns_modul as id_modul, m.nama_modul, m.persentase, tp.id_tim_projek,(SELECT count(md.id_isi_modul) as jml_isi_modul FROM isi_modul_projek as md WHERE md.id_modul_projek = m.id_modul_projek) as jml_isi_modul, 

                COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as tot_progres_sekarang, 
                
                COALESCE( CAST(COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as decimal) / 100 ,0) * m.persentase as progres_modul

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
            $this->db->group_by("m.id_$jns_modul");
            $this->db->group_by('tp.id_tim_projek');
            $this->db->group_by('m.nama_modul');
            $this->db->group_by('m.persentase');
            
            return $this->db->get();
            
        }

    // 09-04-2020  
        // mengambil isi modul projek pegawai perbaikan 14-04-2020
        public function get_data_modul_pos_user($id_posisi, $id_data_projek, $jns_modul)
        {
            if ($jns_modul == 'modul_tetap') {
                $this->db->select("m.id_$jns_modul as id_modul, m.nama_modul, m.persentase, tp.id_tim_projek, 
                
                COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as tot_progres_sekarang,
                
                COALESCE( CAST(COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as decimal) / 100 ,0) * m.persentase as progres_modul");
                
            } else {
                $this->db->select("m.id_$jns_modul as id_modul, m.nama_modul, m.persentase, tp.id_tim_projek,(SELECT count(md.id_isi_modul) as jml_isi_modul FROM isi_modul_projek as md WHERE md.id_modul_projek = m.id_modul_projek) as jml_isi_modul, 

                COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as tot_progres_sekarang, 
                
                COALESCE( CAST(COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as decimal) / 100 ,0) * m.persentase as progres_modul

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
            $this->db->where('si.id_posisi', $id_posisi);
            $this->db->where('tp.id_pegawai', $this->id_pegawai);
            $this->db->group_by("m.id_$jns_modul");
            $this->db->group_by('tp.id_tim_projek');
            $this->db->group_by('m.nama_modul');
            $this->db->group_by('m.persentase');
            
            return $this->db->get();
            
        }
        public function get_data_modul_pos($id_posisi, $id_data_projek, $jns_modul)
        {
            // cari id_pegawai
            $this->db->select('tp.id_pegawai');
            $this->db->from('tim_projek as tp'); 
            $this->db->join('m_pegawai as w', 'w.id_pegawai = tp.id_pegawai', 'inner');
            $this->db->join('m_posisi as si', 'si.id_posisi = w.id_posisi', 'inner');
            $this->db->where('tp.id_data_projek', $id_data_projek);
            $this->db->where('si.id_posisi', $id_posisi);
            
            $idp = $this->db->get()->row_array();
            
            if ($jns_modul == 'modul_tetap') {
                $this->db->select("m.id_$jns_modul as id_modul, m.nama_modul, m.persentase, tp.id_tim_projek, 
                
                COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as tot_progres_sekarang,
                
                COALESCE( CAST(COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as decimal) / 100 ,0) * m.persentase as progres_modul");
                
            } else {
                $this->db->select("m.id_$jns_modul as id_modul, m.nama_modul, m.persentase, tp.id_tim_projek,(SELECT count(md.id_isi_modul) as jml_isi_modul FROM isi_modul_projek as md WHERE md.id_modul_projek = m.id_modul_projek) as jml_isi_modul, 

                COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as tot_progres_sekarang, 
                
                COALESCE( CAST(COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as decimal) / 100 ,0) * m.persentase as progres_modul

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
            $this->db->where('si.id_posisi', $id_posisi);
            $this->db->where('tp.id_pegawai', $idp['id_pegawai']);
            $this->db->group_by("m.id_$jns_modul");
            $this->db->group_by('tp.id_tim_projek');
            $this->db->group_by('m.nama_modul');
            $this->db->group_by('m.persentase');
            
            return $this->db->get();
            
        }
        public function get_data_modul_pos_peg($id_posisi, $id_data_projek, $jns_modul, $id_pegawai)
        {
            // cari id_pegawai
            $this->db->select('tp.id_pegawai');
            $this->db->from('tim_projek as tp'); 
            $this->db->join('m_pegawai as w', 'w.id_pegawai = tp.id_pegawai', 'inner');
            $this->db->join('m_posisi as si', 'si.id_posisi = w.id_posisi', 'inner');
            $this->db->where('tp.id_data_projek', $id_data_projek);
            $this->db->where('si.id_posisi', $id_posisi);
            
            $idp = $this->db->get()->row_array();
            
            if ($jns_modul == 'modul_tetap') {
                $this->db->select("m.id_$jns_modul as id_modul, m.nama_modul, m.persentase, tp.id_tim_projek, 
                
                COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as tot_progres_sekarang,
                
                COALESCE( CAST(COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as decimal) / 100 ,0) * m.persentase as progres_modul");
                
            } else {
                $this->db->select("m.id_$jns_modul as id_modul, m.nama_modul, m.persentase, tp.id_tim_projek,(SELECT count(md.id_isi_modul) as jml_isi_modul FROM isi_modul_projek as md WHERE md.id_modul_projek = m.id_modul_projek) as jml_isi_modul, 

                COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as tot_progres_sekarang, 
                
                COALESCE( CAST(COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as decimal) / 100 ,0) * m.persentase as progres_modul

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
            $this->db->where('si.id_posisi', $id_posisi);
            $this->db->where('tp.id_pegawai', $id_pegawai);
            $this->db->group_by("m.id_$jns_modul");
            $this->db->group_by('tp.id_tim_projek');
            $this->db->group_by('m.nama_modul');
            $this->db->group_by('m.persentase');
            
            return $this->db->get();
            
        }

        public function cari_nama_pegawai($id_data_projek, $id_posisi)
        {
            $this->db->select('p.nama_pegawai');
            $this->db->from('tim_projek as r');
            $this->db->join('m_pegawai as p', 'p.id_pegawai = r.id_pegawai', 'inner');
            $this->db->where('r.id_data_projek', $id_data_projek);
            $this->db->where('p.id_posisi', $id_posisi);
            $this->db->where('r.status_pic', 1);
            $this->db->group_by('p.id_pegawai');
            
            return $this->db->get();
        }

        public function cari_nama_posisi($id_data_projek)
        {
            $this->db->select('s.id_posisi, s.nama_posisi');
            $this->db->from('tim_projek as r');
            $this->db->join('m_pegawai as p', 'p.id_pegawai = r.id_pegawai', 'inner');
            $this->db->join('m_posisi as s', 's.id_posisi = p.id_posisi', 'inner');
            $this->db->where('r.id_data_projek', $id_data_projek);
            $this->db->group_by('s.id_posisi');
            
            return $this->db->get();
        }

    // 20-04-2020
    public function get_posisi($id_data_projek)
    {
        $this->db->select('si.id_posisi, si.jenis_modul');
        $this->db->from('tim_projek as tp');
        $this->db->join('m_pegawai as w', 'w.id_pegawai = tp.id_pegawai', 'inner');
        $this->db->join('m_posisi as si', 'si.id_posisi = w.id_posisi', 'inner');
        $this->db->where('tp.id_data_projek', $id_data_projek);

        if ($this->nama_jabatan == 'Staff') {
            $this->db->where('si.id_posisi', $this->posisi);
        }
        
        return $this->db->get();
    }

    // 18-10-2020
    public function get_posisi_peg($id_pegawai, $id_data_projek)
    {
        $this->db->select('si.id_posisi, si.jenis_modul');
        $this->db->from('tim_projek as tp');
        $this->db->join('m_pegawai as w', 'w.id_pegawai = tp.id_pegawai', 'inner');
        $this->db->join('m_posisi as si', 'si.id_posisi = w.id_posisi', 'inner');
        $this->db->where('tp.id_data_projek', $id_data_projek);

        $this->db->where('si.id_posisi', $this->posisi);
        $this->db->where('w.id_pegawai', $id_pegawai);
        
        return $this->db->get();
    }

    public function get_posisi_3($id_data_projek)
    {
        $this->db->select('si.id_posisi, si.jenis_modul');
        $this->db->from('tim_projek as tp');
        $this->db->join('m_pegawai as w', 'w.id_pegawai = tp.id_pegawai', 'inner');
        $this->db->join('m_posisi as si', 'si.id_posisi = w.id_posisi', 'inner');
        $this->db->where('tp.id_data_projek', $id_data_projek);
        
        return $this->db->get();
    }

    public function get_posisi_2($id_pegawai, $id_data_projek)
    {
        $this->db->select('si.id_posisi, si.jenis_modul');
        $this->db->from('tim_projek as tp');
        $this->db->join('m_pegawai as w', 'w.id_pegawai = tp.id_pegawai', 'inner');
        $this->db->join('m_posisi as si', 'si.id_posisi = w.id_posisi', 'inner');
        $this->db->where('tp.id_data_projek', $id_data_projek);

        if ($this->nama_jabatan == 'Staff') {
            $this->db->where('si.id_posisi', $this->posisi);
        }

        $this->db->where('w.id_pegawai', $id_pegawai);
        
        return $this->db->get();
    }

}

/* End of file M_progress_projek.php */
