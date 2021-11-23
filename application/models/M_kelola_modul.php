<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_modul extends CI_Model {

    
    public function __construct()
    {
        parent::__construct();
        $this->posisi       = $this->session->userdata('posisi');
        $this->nama_jabatan = $this->session->userdata('nama_jabatan');
        $this->id_pegawai   = $this->session->userdata('id_pegawai');
    }
    

    // 06-04-2020

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

        // Halaman modul tetap

            // Menampilkan list modul_tetap
            public function get_data_modul_tetap()
            {
                $this->_get_datatables_query_modul_tetap();
        
                if ($this->input->post('length') != -1) {
                    $this->db->limit($this->input->post('length'), $this->input->post('start'));
                    
                    return $this->db->get()->result_array();
                }
            }
        
            var $kolom_order_modul_tetap = [null, 'p.nama_posisi', 'jml_modul'];
            var $kolom_cari_modul_tetap  = ['LOWER(p.nama_posisi)'];
            var $order_modul_tetap       = ['p.nama_posisi' => 'asc'];
        
            public function _get_datatables_query_modul_tetap()
            {
                $this->db->select('p.*, COALESCE( (SELECT count(o.id_posisi) as jml_modul FROM modul_tetap as o where o.id_posisi = p.id_posisi) ,0) as jml_modul');
                $this->db->from('m_posisi as p');
                $this->db->where('p.jenis_modul', "Modul Tetap");
                
                $b = 0;
                
                $input_cari = strtolower($_POST['search']['value']);
                $kolom_cari = $this->kolom_cari_modul_tetap;
        
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
        
                    $kolom_order = $this->kolom_order_modul_tetap;
                    $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                    
                } elseif (isset($this->order_modul_tetap)) {
                    
                    $order = $this->order_modul_tetap;
                    $this->db->order_by(key($order), $order[key($order)]);
                    
                }
                
            }
        
            public function jumlah_semua_modul_tetap()
            {
                $this->db->select('p.*, COALESCE( (SELECT count(o.id_posisi) as jml_modul FROM modul_tetap as o where o.id_posisi = p.id_posisi) ,0) as jml_modul');
                $this->db->from('m_posisi as p');
                $this->db->where('p.jenis_modul', "Modul Tetap");
        
                return $this->db->count_all_results();
            }
        
            public function jumlah_filter_modul_tetap()
            {
                $this->_get_datatables_query_modul_tetap();
        
                return $this->db->get()->num_rows();
                
            }

            // cari jumlah persentase menurut posisi
            public function get_jumlah_persentase($id_posisi)
            {
                $this->db->select('sum(persentase) as jml_persentase');
                $this->db->from('modul_tetap');
                $this->db->where('id_posisi', $id_posisi);
                
                return $this->db->get();
            }

        // Halaman modul projek
            
            // Menampilkan list modul_projek
            public function get_data_modul_projek()
            {
                $this->_get_datatables_query_modul_projek();
        
                if ($this->input->post('length') != -1) {
                    $this->db->limit($this->input->post('length'), $this->input->post('start'));
                    
                    return $this->db->get()->result_array();
                }
            }
        
            var $kolom_order_modul_projek = [null,'i.nama_projek', 'p.nama_sub_projek', 'i.instansi', 'i.tgl_dimulai', 'i.tgl_berakhir', 'jml_modul'];
            var $kolom_cari_modul_projek  = ['LOWER(i.nama_projek)','LOWER(p.nama_sub_projek)', 'LOWER(i.instansi)', 'i.tgl_dimulai', 'i.tgl_berakhir'];
            var $order_modul_projek       = ['p.nama_sub_projek' => 'asc'];
        
            public function _get_datatables_query_modul_projek()
            {
                $this->db->select('*,p.status as status1, sp.nama_status, COALESCE( (SELECT count(o.id_data_projek) as jml_modul_projek FROM modul_projek as o where o.id_data_projek = p.id_data_projek) ,0) as jml_modul');
                $this->db->from('data_induk_projek as i');
                $this->db->join('data_projek as p', 'p.id_induk_projek = i.id_induk_projek', 'inner');
                $this->db->join('status_projek as sp', 'sp.id_status_projek = p.status', 'inner');

                if ($this->nama_jabatan == 'Staff') {
                    $this->db->join('tim_projek as t', 't.id_data_projek = p.id_data_projek', 'inner');
                    $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
                    $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
                    $this->db->where('g.id_pegawai', $this->id_pegawai);
                }
                
                $this->db->where('i.status', 1);
                // $this->db->where('p.status', 1);

                $b = 0;
                
                $input_cari = strtolower($_POST['search']['value']);
                $kolom_cari = $this->kolom_cari_modul_projek;
        
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
        
                    $kolom_order = $this->kolom_order_modul_projek;
                    $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                    
                } elseif (isset($this->order_modul_projek)) {
                    
                    $order = $this->order_modul_projek;
                    $this->db->order_by(key($order), $order[key($order)]);
                    
                }
                
            }
        
            public function jumlah_semua_modul_projek()
            {
                $this->db->select('*,p.status as status1, sp.nama_status, COALESCE( (SELECT count(o.id_data_projek) as jml_modul_projek FROM modul_projek as o where o.id_data_projek = p.id_data_projek) ,0) as jml_modul');
                $this->db->from('data_induk_projek as i');
                $this->db->join('data_projek as p', 'p.id_induk_projek = i.id_induk_projek', 'inner');
                $this->db->join('status_projek as sp', 'sp.id_status_projek = p.status', 'inner');

                if ($this->nama_jabatan == 'Staff') {
                    $this->db->join('tim_projek as t', 't.id_data_projek = p.id_data_projek', 'inner');
                    $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
                    $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
                    $this->db->where('g.id_pegawai', $this->id_pegawai);
                }

                $this->db->where('i.status', 1);
                // $this->db->where('p.status', 1);
        
                return $this->db->count_all_results();
            }
        
            public function jumlah_filter_modul_projek()
            {
                $this->_get_datatables_query_modul_projek();
        
                return $this->db->get()->num_rows();
                
            }

            // 07-04-2020

                // ambil data
                public function cari_data_projek($id_data_projek)
                {
                    $this->db->select('d.*, i.*, d.status as status1');
                    $this->db->from('data_projek as d');
                    $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
                    // $this->db->where('d.status', 1);
                    $this->db->where('i.status', 1);
                    $this->db->where('d.id_data_projek', $id_data_projek);

                    return $this->db->get();
                    
                }

                // cari jumlah persentase menurut posisi modul projek
                public function get_jumlah_persentase_projek($id_data_projek, $id_posisi)
                {
                    $this->db->select('sum(persentase) as jml_persentase');
                    $this->db->from('modul_projek');
                    $this->db->where('id_data_projek', $id_data_projek);
                    $this->db->where('id_posisi', $id_posisi);
                    
                    return $this->db->get();
                }

}

/* End of file M_kelola_modul.php */
