<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class M_dashboard extends CI_Model {

    public function __construct()
    {
        parent::__construct();
        $this->posisi       = $this->session->userdata('posisi');
        $this->nama_jabatan = $this->session->userdata('nama_jabatan');
        $this->id_pegawai   = $this->session->userdata('id_pegawai');
    }

    // 12-10-2020

    public function get_status()
    {
        // $a = $this->db->get_where('status_projek', ['nama_status' => 'Lainnya'])->row_array();
        
        $this->db->select('*');
        $this->db->from('status_projek');
        // $this->db->where('id_status_projek !=', $a['id_status_projek']);
        $this->db->order_by('id_status_projek', 'asc');
        
        return $this->db->get();
        
    }

    // 12-04-2020
        // menampilkan data
        public function get_data($tabel)
        {
            return $this->db->get($tabel);
        }

        // cari data
        public function cari_data($tabel, $where)
        {
            return $this->db->get_where($tabel, $where);
        }

    // 13-04-2020
        // menampilkan dashboard
        public function get_induk_projek()
        {
            $id_posisi      = $this->session->userdata('posisi');
            $nama_jabatan   = $this->session->userdata('nama_jabatan');

            $this->db->select('*');
            $this->db->from("data_induk_projek as t");
            if ($nama_jabatan == 'Staff') {

                $this->db->join('data_projek as e', 'e.id_induk_projek = t.id_induk_projek', 'inner');
                $this->db->join('tim_projek as p', 'p.id_data_projek = e.id_data_projek', 'left');
                $this->db->join('m_pegawai as g', 'g.id_pegawai = p.id_pegawai', 'left');

                // $this->db->where('g.id_posisi', $id_posisi);
                $this->db->where('g.id_pegawai', $this->id_pegawai);
                $this->db->group_by('t.id_induk_projek');
                
            }
            
            $this->db->where('t.status', 1);
            // $this->db->where('e.status', 1);
            
            return $this->db->get();
        }

        // menampilkan data projek
        public function get_data_projek()
        {
            $id_posisi      = $this->session->userdata('posisi');
            $nama_jabatan   = $this->session->userdata('nama_jabatan');
            
            $this->db->select('*');
            $this->db->from("data_projek as t");
            $this->db->join('status_projek as s', 's.id_status_projek = t.status', 'inner');

            if ($nama_jabatan == 'Staff') {
                $this->db->join('tim_projek as p', 'p.id_data_projek = t.id_data_projek', 'inner');
            
                $this->db->join('m_pegawai as g', 'g.id_pegawai = p.id_pegawai', 'inner');
                $this->db->where('g.id_pegawai', $this->id_pegawai);
            }
            
            return $this->db->get();
        }

        // mencari total status projek
        public function cari_data_projek($tabel, $id_status_projek)
        {
            $id_posisi      = $this->session->userdata('posisi');
            $nama_jabatan   = $this->session->userdata('nama_jabatan');

            $this->db->select('t.id_data_projek');
            $this->db->from("$tabel as t");
            $this->db->join('tim_projek as p', 'p.id_data_projek = t.id_data_projek', 'left');

            if ($nama_jabatan == 'Staff') {
                $this->db->join('m_pegawai as g', 'g.id_pegawai = p.id_pegawai', 'inner');
                $this->db->where('g.id_pegawai', $this->id_pegawai);
            }
            $this->db->where('t.status', $id_status_projek);
            $this->db->group_by('t.id_data_projek');
            
            return $this->db->get();
        }

}

/* End of file M_dashboard.php */
