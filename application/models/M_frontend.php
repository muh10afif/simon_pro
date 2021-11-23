<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class M_frontend extends CI_Model {

    // 14-05-2020

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

        public function get_projek($id_status)
        {
            $this->db->select('d.nama_sub_projek, p.instansi');
            $this->db->from('data_projek as d');
            $this->db->join('data_induk_projek as p', 'p.id_induk_projek = d.id_induk_projek', 'inner');
            $this->db->where('d.status', $id_status);
            
            return $this->db->get();
        }

    // 15-05-2020
        
        public function get_total_status()
        {
            $this->db->select('s.nama_status, (SELECT count(d.id_data_projek) as total FROM data_projek as d WHERE d.status = s.id_status_projek) as total');
            $this->db->from('status_projek as s');
            $this->db->order_by('s.id_status_projek', 'asc');
            
            return $this->db->get();
            
        }

    // 19-05-2020
        // list pegawai jumlah projek
        public function get_jml_projek_pegawai()
        {
            $this->db->select('p.id_pegawai, (SELECT g.nama_pegawai as nama_pegawai FROM m_pegawai as g WHERE g.id_pegawai = p.id_pegawai) as nama_pegawai, (SELECT count(m.id_data_projek) as jml_projek FROM tim_projek as m WHERE m.id_pegawai = p.id_pegawai) as jml_projek');
            $this->db->from('m_pegawai as p');
            $this->db->where('p.id_posisi !=', null);
            $this->db->order_by('jml_projek', 'desc');
            
            $this->db->group_by('p.id_pegawai');

            $this->db->limit(10);

            return $this->db->get();
            
        }

        // mencari jml total projek bulan
        public function cari_jml_projek_bln($bln)
        {
            $this->db->select('count(id_data_projek) as total');
            $this->db->from('data_projek');
            // mysql
            $this->db->where("to_char(add_time, 'YYYY-MM') = '$bln'");
            
            // $this->db->where("DATE_FORMAT(add_time, '%Y-%m') = '$bln'");
            
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
            $bln = $this->input->post('bln');
            
            $this->db->select('*');
            $this->db->from('data_projek as d');
            $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'left');
            $this->db->join('status_projek as s', 's.id_status_projek = d.status', 'inner');

            $this->db->where("to_char(d.add_time, 'YYYY-MM') = '$bln'");

            // $this->db->where("DATE_FORMAT(d.add_time, '%Y-%m') = '$bln'");
            $this->db->order_by('d.nama_sub_projek', 'asc');
            
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
            $bln = $this->input->post('bln');

            $this->db->select('*');
            $this->db->from('data_projek as d');
            $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'left');
            $this->db->join('status_projek as s', 's.id_status_projek = d.status', 'inner');

            $this->db->where("to_char(d.add_time, 'YYYY-MM') = '$bln'");

            // $this->db->where("DATE_FORMAT(d.add_time, '%Y-%m') = '$bln'");

            $this->db->order_by('d.nama_sub_projek', 'asc');

            return $this->db->count_all_results();
        }

        public function jumlah_filter_persentase_projek_all()
        {
            $this->_get_datatables_query_persentase_projek_all();

            return $this->db->get()->num_rows();
            
        }

        // menghitun clear project
        public function hitung_clear_project($id_posisi)
        {
            $this->db->select('d.id_data_projek, d.nama_sub_projek');
            $this->db->from('tim_projek as t ');
            $this->db->join('data_projek as d', 'd.id_data_projek = t.id_data_projek', 'inner');
            $this->db->join('m_pegawai as p', 'p.id_pegawai = t.id_pegawai', 'inner');
            $this->db->join('m_posisi as i', 'i.id_posisi = p.id_posisi', 'inner');
            $this->db->where('i.id_posisi', $id_posisi);
            $this->db->where('d.status', 5);
            $this->db->group_by('d.id_data_projek');
            
            return $this->db->get();
        }

    // 20-05-2020
        // menghitung project
        public function hitung_project($id_posisi)
        {
            $this->db->select('d.id_data_projek, d.nama_sub_projek');
            $this->db->from('tim_projek as t ');
            $this->db->join('data_projek as d', 'd.id_data_projek = t.id_data_projek', 'inner');
            $this->db->join('m_pegawai as p', 'p.id_pegawai = t.id_pegawai', 'inner');
            $this->db->join('m_posisi as i', 'i.id_posisi = p.id_posisi', 'inner');
            $this->db->where('i.id_posisi', $id_posisi);
            $this->db->group_by('d.id_data_projek');
            
            return $this->db->get();
        }

}

/* End of file M_frontend.php */
