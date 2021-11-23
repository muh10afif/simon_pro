<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_projek extends CI_Model {

    public function __construct()
    {
        parent::__construct();
        $this->posisi       = $this->session->userdata('posisi');
        $this->nama_jabatan = $this->session->userdata('nama_jabatan');
        $this->id_pegawai   = $this->session->userdata('id_pegawai');
    }

    // Data Induk Projek

        // 05-04-2020

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
        
            // Menampilkan list dt_in_projek
            public function get_data_dt_in_projek()
            {
                $this->_get_datatables_query_dt_in_projek();
        
                if ($this->input->post('length') != -1) {
                    $this->db->limit($this->input->post('length'), $this->input->post('start'));
                    
                    return $this->db->get()->result_array();
                }
            }
        
            var $kolom_order_dt_in_projek = [null, 'i.nama_projek', 'i.instansi', 'i.tgl_dimulai', 'i.tgl_berakhir', 'i.keterangan', 'i.status'];
            var $kolom_cari_dt_in_projek  = ['LOWER(i.nama_projek)', 'LOWER(i.instansi)', 'i.tgl_dimulai', 'i.tgl_berakhir', 'LOWER(i.keterangan)', 'i.status'];
            var $order_dt_in_projek       = ['i.nama_projek' => 'asc'];
        
            public function _get_datatables_query_dt_in_projek()
            {
                $this->db->select('i.id_induk_projek,i.nama_projek,i.instansi, i.tgl_dimulai,i.tgl_berakhir, i.keterangan,i.status');
                
                $this->db->from('data_induk_projek as i');

                if ($this->nama_jabatan == 'Staff') {

                    $this->db->join('data_projek as p', 'p.id_induk_projek = i.id_induk_projek', 'inner');

                    $this->db->join('tim_projek as t', 't.id_data_projek = p.id_data_projek', 'inner');
                    // $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
                    $this->db->where('t.id_pegawai', $this->id_pegawai);
                    // $this->db->where('p.status', 1);
                    // $this->db->group_by('p.id_data_projek');
                    $this->db->group_by('i.id_induk_projek');
                

                }

                $this->db->where('i.status', 1);
                
                
                $b = 0;
                
                $input_cari = strtolower($_POST['search']['value']);
                $kolom_cari = $this->kolom_cari_dt_in_projek;
        
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
        
                    $kolom_order = $this->kolom_order_dt_in_projek;
                    $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                    
                } elseif (isset($this->order_dt_in_projek)) {
                    
                    $order = $this->order_dt_in_projek;
                    $this->db->order_by(key($order), $order[key($order)]);
                    
                }
                
            }
        
            public function jumlah_semua_dt_in_projek()
            {
                $this->db->select('i.id_induk_projek, i.nama_projek,i.instansi, i.tgl_dimulai,i.tgl_berakhir, i.keterangan,i.status');
                $this->db->from('data_induk_projek as i');

                if ($this->nama_jabatan == 'Staff') {

                    $this->db->join('data_projek as p', 'p.id_induk_projek = i.id_induk_projek', 'inner');

                    $this->db->join('tim_projek as t', 't.id_data_projek = p.id_data_projek', 'inner');
                    // $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
                    $this->db->where('t.id_pegawai', $this->id_pegawai);
                    // $this->db->where('p.status', 1);
                    // $this->db->group_by('p.id_data_projek');
                    $this->db->group_by('i.id_induk_projek');
                

                }

                $this->db->where('i.status', 1);
        
                return $this->db->count_all_results();
            }
        
            public function jumlah_filter_dt_in_projek()
            {
                $this->_get_datatables_query_dt_in_projek();
        
                return $this->db->get()->num_rows();
                
            }

    // Data Projek
        // 05-04-2020
            // Menampilkan list dt_projek
            public function get_data_dt_projek()
            {
                $this->_get_datatables_query_dt_projek();
        
                if ($this->input->post('length') != -1) {
                    $this->db->limit($this->input->post('length'), $this->input->post('start'));
                    
                    return $this->db->get()->result_array();
                }
            }
        
            var $kolom_order_dt_projek = [null, 'i.nama_projek', 'd.nama_sub_projek', 'd.link', '', 'd.status'];
            var $kolom_cari_dt_projek  = ['LOWER(i.nama_projek)', 'LOWER(d.nama_sub_projek)', 'd.link', 'LOWER(s.nama_status)'];
            var $order_dt_projek       = ['i.nama_projek' => 'asc'];
        
            public function _get_datatables_query_dt_projek()
            {
                $this->db->select('d.*, i.*, d.status as status1, s.nama_status');
                $this->db->from('data_projek as d');
                $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
                $this->db->join('status_projek as s', 's.id_status_projek = d.status', 'inner');

                $b = 0;
                
                $input_cari = strtolower($_POST['search']['value']);
                $kolom_cari = $this->kolom_cari_dt_projek;
        
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
        
                    $kolom_order = $this->kolom_order_dt_projek;
                    $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                    
                } elseif (isset($this->order_dt_projek)) {
                    
                    $order = $this->order_dt_projek;
                    $this->db->order_by(key($order), $order[key($order)]);
                    
                }
                
            }
        
            public function jumlah_semua_dt_projek()
            {
                $this->db->select('d.*, i.*, d.status as status1, s.nama_status');
                $this->db->from('data_projek as d');
                $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
                $this->db->join('status_projek as s', 's.id_status_projek = d.status', 'inner');
        
                return $this->db->count_all_results();
            }
        
            public function jumlah_filter_dt_projek()
            {
                $this->_get_datatables_query_dt_projek();
        
                return $this->db->get()->num_rows();
                
            }

    // TIm Projek
        // 06-03-2020
            
            // Menampilkan list dt_projek_tim
            public function get_data_dt_projek_tim()
            {
                $this->_get_datatables_query_dt_projek_tim();
        
                if ($this->input->post('length') != -1) {
                    $this->db->limit($this->input->post('length'), $this->input->post('start'));
                    
                    return $this->db->get()->result_array();
                }
            }
        
            var $kolom_order_dt_projek_tim = [null, 'd.nama_sub_projek', 'i.tgl_dimulai', 'i.tgl_berakhir', 'p.nama_status', 'jml_tim', 'nama_pic'];
            var $kolom_cari_dt_projek_tim  = ['LOWER(d.nama_sub_projek)', 'i.tgl_dimulai', 'i.tgl_berakhir','LOWER(p.nama_status)'];
            var $order_dt_projek_tim       = ['d.nama_sub_projek' => 'asc'];
        
            public function _get_datatables_query_dt_projek_tim()
            {
                $this->db->select('d.*, i.*, d.status as status1, p.nama_status, (SELECT p.nama_pegawai as nama_pic from tim_projek as t join m_pegawai as p ON p.id_pegawai = t.id_pegawai where t.status_pic = 1 and t.id_data_projek = d.id_data_projek) as nama_pic, (SELECT count(tp.id_pegawai) as jml FROM tim_projek as tp WHERE tp.id_data_projek = d.id_data_projek) as jml_tim');
                $this->db->from('data_projek as d');
                $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
                $this->db->join('status_projek as p', 'p.id_status_projek = d.status', 'inner');

                if ($this->nama_jabatan == 'Staff') {
                    $this->db->join('tim_projek as t', 't.id_data_projek = d.id_data_projek', 'inner');
                    $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
                    $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
                    $this->db->where('g.id_pegawai', $this->id_pegawai);
                }

                $b = 0;
                
                $input_cari = strtolower($_POST['search']['value']);
                $kolom_cari = $this->kolom_cari_dt_projek_tim;
        
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
        
                    $kolom_order = $this->kolom_order_dt_projek_tim;
                    $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                    
                } elseif (isset($this->order_dt_projek_tim)) {
                    
                    $order = $this->order_dt_projek_tim;
                    $this->db->order_by(key($order), $order[key($order)]);
                    
                }
                
            }
        
            public function jumlah_semua_dt_projek_tim()
            {
                $this->db->select('d.*, i.*, d.status as status1, p.nama_status, (SELECT p.nama_pegawai as nama_pic from tim_projek as t join m_pegawai as p ON p.id_pegawai = t.id_pegawai where t.status_pic = 1 and t.id_data_projek = d.id_data_projek) as nama_pic, (SELECT count(tp.id_pegawai) as jml FROM tim_projek as tp WHERE tp.id_data_projek = d.id_data_projek) as jml_tim');
                $this->db->from('data_projek as d');
                $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
                $this->db->join('status_projek as p', 'p.id_status_projek = d.status', 'inner');

                if ($this->nama_jabatan == 'Staff') {
                    $this->db->join('tim_projek as t', 't.id_data_projek = d.id_data_projek', 'inner');
                    $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
                    $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
                    $this->db->where('g.id_pegawai', $this->id_pegawai);
                }
        
                return $this->db->count_all_results();
            }
        
            public function jumlah_filter_dt_projek_tim()
            {
                $this->_get_datatables_query_dt_projek_tim();
        
                return $this->db->get()->num_rows();
                
            }

            // ambil data
            public function cari_data_projek($id_data_projek)
            {
                $this->db->select('d.*, i.*, d.status as status1');
                $this->db->from('data_projek as d');
                $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
                // $this->db->where('d.status', 1);
                // $this->db->where('i.status', 1);
                $this->db->where('d.id_data_projek', $id_data_projek);

                return $this->db->get();
                
            }

            // ambil data tim projek
            public function cari_data_tim_projek($id_data_projek)
            {
                $this->db->select('*');
                $this->db->from('tim_projek as t');
                $this->db->join('m_pegawai as p', 'p.id_pegawai = t.id_pegawai', 'inner');
                $this->db->join('m_posisi as s', 's.id_posisi = p.id_posisi', 'left');
                $this->db->join('m_jabatan as j', 'j.id_jabatan = p.id_jabatan', 'inner');
                $this->db->where('t.id_data_projek', $id_data_projek);
                // $this->db->where('j.nama_jabatan !=', 'Direktur');
                
                return $this->db->get();
                
            }

            // ambil nama pegawai yang belum jadi tim
            public function get_nama_pegawai_tim($id_data_projek)
            {
                $this->db->select('*');
                $this->db->from('tim_projek');
                $this->db->where('id_data_projek', $id_data_projek);
                
                $a = $this->db->get()->result_array();

                $ay = array();
                foreach ($a as $b) {
                    $ay[] = $b['id_pegawai'];
                }

                $im         = implode(',',$ay);
                $id_pegawai = explode(',',$im); 

                $this->db->select('*');
                $this->db->from('m_pegawai as p');
                $this->db->join('m_posisi as s', 's.id_posisi = p.id_posisi', 'inner');
                $this->db->join('m_jabatan as j', 'j.id_jabatan = p.id_jabatan', 'inner');
                // $this->db->where('j.nama_jabatan !=', 'Direktur');
                // $this->db->where('s.id_posisi !=', 1);

                if ($id_pegawai[0] != "") {
                    $this->db->where_not_in('p.id_pegawai', $id_pegawai);
                }

                return $this->db->get();
            }

}

/* End of file M_kelola_projek.php */
