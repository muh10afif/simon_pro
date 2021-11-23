<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class M_rekap extends CI_Model {

    public function __construct()
    {
        parent::__construct();
        $this->posisi       = $this->session->userdata('posisi');
        $this->nama_jabatan = $this->session->userdata('nama_jabatan');
        $this->id_pegawai   = $this->session->userdata('id_pegawai');
    }

    // halaman report mingguan

    // 20-04-2020
        public function ambil_posisi_2()
        {
            // $this->db->where('id_posisi !=', 1);
            
            return $this->db->get('m_posisi');
        }
    
    // 16-04-2020
        // menampilkan posisi selain manager
        public function ambil_posisi()
        {
            $this->db->select('si.id_posisi, si.jenis_modul, si.nama_posisi');
            $this->db->from('tim_projek as tp');
            $this->db->join('m_pegawai as w', 'w.id_pegawai = tp.id_pegawai', 'inner');
            $this->db->join('m_posisi as si', 'si.id_posisi = w.id_posisi', 'inner');
            // $this->db->where('tp.id_data_projek', $id_data_projek);

            // if ($this->nama_jabatan == 'Staff') {
            //     $this->db->where('si.id_posisi', $this->posisi);
            // }
            
            return $this->db->get();
            
        }

        // menampilkan projek
        public function get_projek()
        {
            $this->db->select('d.nama_sub_projek, d.id_data_projek, sp.nama_status, sp.id_status_projek as status1');
            $this->db->from('data_projek as d');
            $this->db->join('data_induk_projek as i', 'i.id_induk_projek = d.id_induk_projek', 'inner');
            $this->db->join('tim_projek as t', 't.id_data_projek = d.id_data_projek', 'inner');
            $this->db->join('status_projek as sp', 'sp.id_status_projek = d.status', 'inner');

            if ($this->nama_jabatan == 'Staff') {
                $this->db->join('m_pegawai as g', 'g.id_pegawai = t.id_pegawai', 'inner');
                $this->db->join('m_posisi as s', 's.id_posisi = g.id_posisi', 'inner');
                $this->db->where('g.id_pegawai', $this->id_pegawai);
            }

            // $this->db->where('d.status', 1);
            $this->db->where('i.status', 1);
            $this->db->group_by('d.nama_sub_projek');
            $this->db->group_by('d.id_data_projek');
            $this->db->group_by('sp.id_status_projek');
            $this->db->order_by('d.nama_sub_projek', 'asc');
            
            
            return $this->db->get();
            
        }

        public function get_data_modul_pos($tgl_awal, $tgl_akhir, $id_posisi, $id_data_projek, $jns_modul)
        {
            if ($jns_modul == 'modul_tetap') {
                $this->db->select("m.id_$jns_modul as id_modul, m.nama_modul, m.persentase, tp.id_tim_projek, 
                
                COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul and lp.tanggal_laporan BETWEEN '$tgl_awal' and '$tgl_akhir' ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as tot_progres_sekarang, 
                
                COALESCE( CAST(COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul and lp.tanggal_laporan BETWEEN '$tgl_awal' and '$tgl_akhir' ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as decimal) / 100 ,0) * m.persentase as progres_modul
                
                ");
                
            } else {
                $this->db->select("m.id_$jns_modul as id_modul, m.nama_modul, m.persentase, tp.id_tim_projek,
                
                (SELECT count(md.id_isi_modul) as jml_isi_modul FROM isi_modul_projek as md WHERE md.id_modul_projek = m.id_modul_projek), 

                COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul and lp.tanggal_laporan BETWEEN '$tgl_awal' and '$tgl_akhir' ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as tot_progres_sekarang, 
                
                COALESCE( CAST(COALESCE((SELECT lp.progres as tot_progres FROM laporan_projek as lp WHERE lp.id_tim_projek = tp.id_tim_projek and lp.id_modul = m.id_$jns_modul and lp.tanggal_laporan BETWEEN '$tgl_awal' and '$tgl_akhir' ORDER BY lp.tanggal_laporan desc LIMIT 1) ,0) as decimal) / 100 ,0) * m.persentase as progres_modul

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
            $this->db->group_by("m.id_$jns_modul");
            $this->db->group_by('tp.id_tim_projek');
            
            return $this->db->get();
            
        }

    // halaman report bulanan

    // 16-04-2020
        // mennampilkan nama projek dan nama pic
        public function get_projek_bulanan()
        {
            $this->db->select('d.nama_sub_projek, p.nama_pegawai, d.id_data_projek');
            $this->db->from('tim_projek as t');
            $this->db->join('data_projek as d', 'd.id_data_projek = t.id_data_projek', 'inner');
            $this->db->join('m_pegawai as p', 'p.id_pegawai = t.id_pegawai', 'inner');
            $this->db->where('t.status_pic', 1);
            $this->db->group_by('d.nama_sub_projek');
            $this->db->group_by('p.nama_pegawai');
            $this->db->group_by('d.id_data_projek');
            
            return $this->db->get();
        }

    // 17-04-2020
        // menampilkan banyaknya posisi
        public function cari_banyak_posisi($id_data_projek)
        {
            $this->db->select('i.id_posisi, i.jenis_modul');
            $this->db->from('tim_projek as t');
            $this->db->join('data_projek as d', 'd.id_data_projek = t.id_data_projek', 'inner');
            $this->db->join('m_pegawai as p', 'p.id_pegawai = t.id_pegawai', 'inner');
            $this->db->join('m_posisi as i', 'i.id_posisi = p.id_posisi', 'inner');
            $this->db->where('d.id_data_projek', $id_data_projek);
            $this->db->group_by('i.id_posisi');
            $this->db->group_by('i.jenis_modul');

            return $this->db->get();
            
        }

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

}

/* End of file M_rekap.php */
