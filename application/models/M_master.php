<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class M_master extends CI_Model {

    // Master jabatan

        // 05-04-2020

            public function cari_data($tabel, $where)
            {
                return $this->db->get_where($tabel, $where);
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
        
            // Menampilkan list jabatan
            public function get_data_jabatan()
            {
                $this->_get_datatables_query_jabatan();
        
                if ($this->input->post('length') != -1) {
                    $this->db->limit($this->input->post('length'), $this->input->post('start'));
                    
                    return $this->db->get()->result_array();
                }
            }
        
            var $kolom_order_jabatan = [null, 'nama_jabatan'];
            var $kolom_cari_jabatan  = ['LOWER(nama_jabatan)'];
            var $order_jabatan       = ['nama_jabatan' => 'asc'];
        
            public function _get_datatables_query_jabatan()
            {
                $this->db->from('m_jabatan');
                
                $b = 0;
                
                $input_cari = strtolower($_POST['search']['value']);
                $kolom_cari = $this->kolom_cari_jabatan;
        
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
        
                    $kolom_order = $this->kolom_order_jabatan;
                    $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                    
                } elseif (isset($this->order_jabatan)) {
                    
                    $order = $this->order_jabatan;
                    $this->db->order_by(key($order), $order[key($order)]);
                    
                }
                
            }
        
            public function jumlah_semua_jabatan()
            {
                $this->db->from('m_jabatan');
        
                return $this->db->count_all_results();
            }
        
            public function jumlah_filter_jabatan()
            {
                $this->_get_datatables_query_jabatan();
        
                return $this->db->get()->num_rows();
                
            }

    // Master Posisi

        // 05-04-2020

            // Menampilkan list posisi
            public function get_data_posisi()
            {
                $this->_get_datatables_query_posisi();
        
                if ($this->input->post('length') != -1) {
                    $this->db->limit($this->input->post('length'), $this->input->post('start'));
                    
                    return $this->db->get()->result_array();
                }
            }
        
            var $kolom_order_posisi = [null, 'nama_posisi', 'jenis_modul'];
            var $kolom_cari_posisi  = ['LOWER(nama_posisi)', 'LOWER(jenis_modul)'];
            var $order_posisi       = ['nama_posisi' => 'asc'];
        
            public function _get_datatables_query_posisi()
            {
                $this->db->from('m_posisi');
                // $this->db->where('id_posisi !=', 1);
                
                $b = 0;
                
                $input_cari = strtolower($_POST['search']['value']);
                $kolom_cari = $this->kolom_cari_posisi;
        
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
        
                    $kolom_order = $this->kolom_order_posisi;
                    $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                    
                } elseif (isset($this->order_posisi)) {
                    
                    $order = $this->order_posisi;
                    $this->db->order_by(key($order), $order[key($order)]);
                    
                }
                
            }
        
            public function jumlah_semua_posisi()
            {
                $this->db->from('m_posisi');
                // $this->db->where('id_posisi !=', 1);
        
                return $this->db->count_all_results();
            }
        
            public function jumlah_filter_posisi()
            {
                $this->_get_datatables_query_posisi();
        
                return $this->db->get()->num_rows();
                
            }
            
    // Master Pegawai

        // 05-04-2020

            // Menampilkan list pegawai
            public function get_data_pegawai()
            {
                $this->_get_datatables_query_pegawai();
        
                if ($this->input->post('length') != -1) {
                    $this->db->limit($this->input->post('length'), $this->input->post('start'));
                    
                    return $this->db->get()->result_array();
                }
            }
        
            var $kolom_order_pegawai = [null, 'p.nama_pegawai', 'p.kontak', 'p.email', 'o.nama_posisi', 'j.nama_jabatan'];
            var $kolom_cari_pegawai  = ['LOWER(p.nama_pegawai)', 'p.kontak', 'LOWER(p.email)', 'LOWER(o.nama_posisi)', 'LOWER(j.nama_jabatan)'];
            var $order_pegawai       = ['p.nama_pegawai' => 'asc'];
        
            public function _get_datatables_query_pegawai()
            {
                $this->db->from('m_pegawai as p');
                $this->db->join('m_posisi as o', 'o.id_posisi = p.id_posisi', 'left');
                $this->db->join('m_jabatan as j', 'j.id_jabatan = p.id_jabatan', 'left');
                
                $b = 0;
                
                $input_cari = strtolower($_POST['search']['value']);
                $kolom_cari = $this->kolom_cari_pegawai;
        
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
        
                    $kolom_order = $this->kolom_order_pegawai;
                    $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                    
                } elseif (isset($this->order_pegawai)) {
                    
                    $order = $this->order_pegawai;
                    $this->db->order_by(key($order), $order[key($order)]);
                    
                }
                
            }
        
            public function jumlah_semua_pegawai()
            {
                $this->db->from('m_pegawai as p');
                $this->db->join('m_posisi as o', 'o.id_posisi = p.id_posisi', 'left');
                $this->db->join('m_jabatan as j', 'j.id_jabatan = p.id_jabatan', 'left');
        
                return $this->db->count_all_results();
            }
        
            public function jumlah_filter_pegawai()
            {
                $this->_get_datatables_query_pegawai();
        
                return $this->db->get()->num_rows();
                
            }

    // Master User

        // 12-10-2020

        public function cari_data_user($id_user)
        {
            $this->db->select('u.*, p.nama_pegawai');
            $this->db->from('m_user as u');
            $this->db->join('m_pegawai as p', 'p.id_pegawai = u.id_pegawai', 'inner');
            $this->db->where('u.id_user', $id_user);
            
            return $this->db->get();
        }

        // 05-04-2020

            // Menampilkan list user
            public function get_data_user()
            {
                $this->_get_datatables_query_user();
        
                if ($this->input->post('length') != -1) {
                    $this->db->limit($this->input->post('length'), $this->input->post('start'));
                    
                    return $this->db->get()->result_array();
                }
            }
        
            var $kolom_order_user = [null, 'p.nama_pegawai', 'u.username', 'u.status'];
            var $kolom_cari_user  = ['LOWER(p.nama_pegawai)', 'LOWER(u.username)', 'CAST(u.status as VARCHAR)'];
            var $order_user       = ['p.nama_pegawai' => 'asc'];
        
            public function _get_datatables_query_user()
            {
                $this->db->from('m_user as u');
                $this->db->join('m_pegawai as p', 'p.id_pegawai = u.id_pegawai', 'inner');
                
                $b = 0;
                
                $input_cari = strtolower($_POST['search']['value']);
                $kolom_cari = $this->kolom_cari_user;
        
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
        
                    $kolom_order = $this->kolom_order_user;
                    $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
                    
                } elseif (isset($this->order_user)) {
                    
                    $order = $this->order_user;
                    $this->db->order_by(key($order), $order[key($order)]);
                    
                }
                
            }
        
            public function jumlah_semua_user()
            {
                $this->db->from('m_user as u');
                $this->db->join('m_pegawai as p', 'p.id_pegawai = u.id_pegawai', 'inner');
        
                return $this->db->count_all_results();
            }
        
            public function jumlah_filter_user()
            {
                $this->_get_datatables_query_user();
        
                return $this->db->get()->num_rows();
                
            }

    // 22-04-2020
        public function get_pegawai_user()
        {
            $this->db->select('*');
            $this->db->from('m_user');
            $this->db->where('id_pegawai !=', null);            
            
            $a = $this->db->get()->result();

            $ay = array();
            foreach ($a as $b) {
                $ay[] = $b->id_pegawai;
            }

            $im         = implode(',',$ay);
            $id_pegawai = explode(',',$im); 

            $this->db->select('id_pegawai, nama_pegawai');
            $this->db->from('m_pegawai');

            if (!empty($id_pegawai)) {
                $this->db->where_not_in('id_pegawai', $id_pegawai);
            }
            
            return $this->db->get();
            
        }

    // 18-10-2020
    public function get_posisi()
    {
        $this->db->from('m_posisi');
        //$this->db->where('id_posisi !=', 1);

        return $this->db->get();
    }

    // 16-11-2021
    // Menampilkan list role
    public function get_data_role()
    {
        $this->_get_datatables_query_role();

        if ($this->input->post('length') != -1) {
            $this->db->limit($this->input->post('length'), $this->input->post('start'));
            
            return $this->db->get()->result_array();
        }
    }

    var $kolom_order_role = [null, 'nama_role'];
    var $kolom_cari_role  = ['LOWER(nama_role)'];
    var $order_role       = ['nama_role' => 'asc'];

    public function _get_datatables_query_role()
    {
        $this->db->from('m_role');
        
        $b = 0;
        
        $input_cari = strtolower($_POST['search']['value']);
        $kolom_cari = $this->kolom_cari_role;

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

            $kolom_order = $this->kolom_order_role;
            $this->db->order_by($kolom_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
            
        } elseif (isset($this->order_role)) {
            
            $order = $this->order_role;
            $this->db->order_by(key($order), $order[key($order)]);
            
        }
        
    }

    public function jumlah_semua_role()
    {
        $this->db->from('m_role');

        return $this->db->count_all_results();
    }

    public function jumlah_filter_role()
    {
        $this->_get_datatables_query_role();

        return $this->db->get()->num_rows();
        
    }

}

/* End of file M_master.php */
