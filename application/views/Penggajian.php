<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penggajian extends CI_Controller {
	public function __construct()
    {
	    parent::__construct();
	    $this->load->library(array('session', 'pagination'));
	    $this->load->helper('date');
	    $this->load->model('m_anggota');
	    $this->load->model('m_penggajian');
    }

	public function index()
	{
		if (($this->session->userdata('logged_in') && ($this->session->userdata('nama_bagian')=='hrd'))) {
			$config['base_url'] = base_url().'hrd/profile/index';
            $config['per_page'] = 10;
            $from = $this->uri->segment(3);
            $this->pagination->initialize($config);
			$data = array(
						'title'					=> 'Data Penggajian',
						'anggota' 				=> $this->m_anggota->tampil_data($config['per_page'],$from),
						'listAnggota'			=> $this->m_penggajian->getAnggota(),
						'periode'				=> $this->m_penggajian->getPeriode(),
						'isi'					=> 'hrd/penggajian',
					);
			$this->load->view('template/wrapper', $data, FALSE);
		}
		else {
            redirect('Login', 'refresh');
        }

	}

	public function detail($id)
	{
		if (($this->session->userdata('logged_in') && ($this->session->userdata('nama_bagian')=='hrd'))) {
			$config['base_url'] = base_url().'hrd/profile/index';
            $config['per_page'] = 10;
            $from = $this->uri->segment(3);
            $this->pagination->initialize($config);  
            $query = $this->db->query('SELECT * FROM periode WHERE id_periode ='.$id)->row();
			$title = $this->m_penggajian->get_periode($id);
			$data = array(
						'title'					=> 'Data Penggajian Periode '.$title->nama_periode,
						'anggota' 				=> $this->m_anggota->tampil_data($config['per_page'],$from),
						'listAnggota'			=> $this->m_penggajian->get_anggota_2($id),
						'periode'				=> $this->m_penggajian->getPeriode(),
						'bulan'					=> (($query->start_date)),
						'tanggal'				=> $title,
						'row'					=> $this->m_penggajian->print_periode($id)->result(),
						'row2'					=> $this->m_penggajian->print_periode($id)->result_array(),
						'isi'					=> 'hrd/penggajian_detail',
					);
			$this->load->view('template/wrapper', $data, FALSE);
		}
		else {
            redirect('Login', 'refresh');
        }

	}

	function get_subpenggajian(){
		$id=$this->input->post('id');
		$data=$this->m_penggajian->get_subpenggajian($id);
		echo json_encode($data);
	}

	public function ajax_edit($id)
    {
        $data = $this->m_penggajian->get_bahan_edit($id);
        echo json_encode($data);
    }

	public function dataPenggajian()
	{
		$data = $this->m_penggajian->tampil_data();
        echo json_encode($data);
	}

	public function updateKaryawan()
	{
		$data = $this->m_penggajian->updateKaryawan();
        echo json_encode($data);
	}

	public function simpanPenggajian()
	{
		$data = $this->input->post();
		$this->m_penggajian->simpanPenggajian($data);
		if($this->db->affected_rows() > 0 )
		{
			$this->session->set_flashdata('sukses', '<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Data Penggajian telah Ditambahkan</div>');
			redirect('HRD/Penggajian/detail/'.$data['id_periode'],'refresh');
		}
	}

	public function update_gaji()
    {
        $data = array(
		                'thp'                   =>str_replace('.', '', $this->input->post('thp')),
				        'tunjangan_makan'       =>$this->input->post('tunjangan_makan') ? str_replace('.', '', $this->input->post('tunjangan_makan')) : 0,
				        'asuransi'              =>$this->input->post('asuransi') ? str_replace('.', '', $this->input->post('asuransi')) : 0,
                        'zakat'                 =>str_replace('.', '', $this->input->post('zakat')),
                        'cashbon'               =>$this->input->post('cashbon') ? str_replace('.', '', $this->input->post('cashbon')) : 0,
                        'kartuHalo'             =>$this->input->post('kartuHalo') ? str_replace('.', '', $this->input->post('kartuHalo')) : 0,
                        'performance'           =>$this->input->post('performance'),
                        'lembur'                =>$this->input->post('total_lembur') ? str_replace('.', '', $this->input->post('total_lembur')) : 0,
            		);
        $this->m_penggajian->update_gaji(array('id_penggajian' => $this->input->post('id_penggajian')), $data);
        echo json_encode(array("status" => TRUE));
    }

	public function hapusKaryawan()
	{
		$data=$this->m_penggajian->hapusKaryawan();
        echo json_encode($data);
	}

	public function buatPeriode()
	{
		$data = $this->input->post();
		$this->m_penggajian->buatPeriode($data);
		if($this->db->affected_rows() > 0 )
		{
			$this->session->set_flashdata('sukses', '<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Periode telah Ditambahkan</div>');
			redirect('HRD/Penggajian','refresh');
		}
	}

	public function printPeriode($id)
	{
		if (($this->session->userdata('logged_in') && ($this->session->userdata('nama_bagian')=='hrd'))) {
			$data = array('row' => $this->m_penggajian->print_periode($id));
			$this->load->view('hrd/print_periode', $data, FALSE);
		}
		else {
            redirect('Login', 'refresh');
        }
	}

	public function slip($x, $y)
	{
		if (($this->session->userdata('logged_in') && ($this->session->userdata('nama_bagian')=='hrd'))) {
			// require_once('./vendor/autoload.php');
			// $mpdf = new \Mpdf\Mpdf(['format' => [148, 220]]);	        
	  //       $data = array('row' => $this->m_penggajian->slip($x, $y));
	  //       ob_start();
	  //       $this->load->view('direktur/slip_gaji', $data);
	  //       $html = ob_get_contents();
		 //        ob_end_clean();
	  //       $pdfFilePath = 'Slip Gaji '.ucwords(strtolower($data["row"]->nama_lengkap)).'.pdf';
	  //       $mpdf->use_kwt = true;
	  //       $mpdf->WriteHTML($html);
	  //       $mpdf->Output($pdfFilePath, "I");
			$data = array('row' => $this->m_penggajian->slip($x, $y));
			ob_start();
		    $this->load->view('direktur/slip_gaji', $data);
		    $html = ob_get_contents();
		        ob_end_clean();
		        
		        require_once('./assets/html2pdf/html2pdf.class.php');
		    $pdf = new HTML2PDF('P','A5','fr', false, 'ISO-8859-15',array(30, 0, 20, 0));
		    $pdf->WriteHTML($html);
		    $pdf->Output('Laporan Penyaluran.pdf', 'I');
		}
		else {
            redirect('Login', 'refresh');
        }
	}

  public function import($x)
  	{
	    include APPPATH.'third_party/PHPExcel/PHPExcel.php';

	    $config['upload_path'] = './excel/';
	    $config['allowed_types'] = 'xlsx|xls|csv';
	    $config['max_size'] = '10000';
	    $config['encrypt_name'] = true;

	    $this->load->library('upload', $config);

	    if (!$this->upload->do_upload()) {

	        //upload gagal
	        $this->session->set_flashdata('sukses', '<div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button><b>PROSES IMPORT GAGAL!</b> '.$this->upload->display_errors().'</div>');
	        //redirect halaman
	        redirect("hrd/penggajian/detail/".$x);

	    } 
	    else 
	    {
	        $data_upload = $this->upload->data();
	        $excelreader       = new PHPExcel_Reader_Excel2007();
	        $loadexcel         = $excelreader->load('excel/'.$data_upload['file_name']);
	        $sheet             = $loadexcel->getActiveSheet()->toArray(null, true, true ,true);
	        $data = array();
	        $this->db->from('periode');
		    $this->db->where('id_periode', $x);
		    $query = $this->db->get();
		    $periode = $query->row();

	        $numrow = 1;
	        $i = 0;
	        foreach($sheet as $row){
                        if($numrow > 1){
                        	$absensi = $row['B'] ? $row['B'] : 0;
                        	$persen = $row['C'] ? $row['C'] : 0;
                        	$lembur = $row['D'] ? $row['D'] : 0;
                        	$bonus = $row['E'] ? $row['E'] : 0;
                        	$lain = $row['F'] ? $row['F'] : 0;
                        	$bpjs = $row['G'] ? $row['G'] : 0;
                        	$halo = $row['H'] ? $row['H'] : 0;
                        	$hutang = $row['I'] ? $row['I'] : 0;
                        	$initial = $this->db->query("SELECT a.id_grade_karyawan,b.*,d.nama_posisi FROM grade_karyawan a INNER JOIN m_grade b ON(b.id_grade = a.id_grade) INNER JOIN anggota c ON(c.id_anggota = a.id_anggota) INNER JOIN posisi d ON(d.id_posisi = c.id_posisi) WHERE a.id_anggota = ".$row['A']);
    						$sub = $initial->row_array();
    						if($sub['flat_tunjangan'] < 1 )
    						{
    							$makan = ($sub['tunjangan_makan']/20)*$absensi;
    						}
    						else
    						{
    							$makan = $sub['tunjangan_makan'];
    						}
    						$performa = $persen*$sub['gaji_pokok'];
    						$total_tunjangan = $sub['tunjangan_jabatan']+$sub['tunjangan_kendaraan']+$makan+$sub['tunjangan_komunikasi'];
    						$tambahan = $lembur + $bonus + $lain;
    						$potongan = $bpjs + $halo + $hutang;
    						$gross = $performa + $total_tunjangan + $tambahan + $sub['gaji_pokok'];
    						$cut = $gross - $potongan;
    						$zakat = $cut*0.025;
    						$thp = $cut-$zakat;
                            array_push($data, array(
                                	'id_anggota'=>$row['A'],
						          	'thp'=>$thp,
						          	'id_grade_karyawan'=>$sub['id_grade_karyawan'],
						          	'tunjangan_makan'=> $makan,
						          	'tunjangan_kendaraan'=>$sub['tunjangan_kendaraan'],
						          	'asuransi'=>$bpjs,
						          	'zakat'=>$zakat,
						          	'cashbon'=>$hutang,
						          	'kartuHalo'=>$halo,
						          	'performance'=>$persen,
						          	'tgl_gaji'=>$periode->end_date,
						          	'lembur'=>$tambahan,
						          	'id_periode'=>$x,
						          	'status'=>0
                            ));
	                }
	            $numrow++;
	            $i++;
	        }
	        $this->db->insert_batch('penggajian', $data);
	        //delete file from server
	        unlink('excel/'.$data_upload['file_name']);

	        //upload success
	        $this->session->set_flashdata('sukses', '<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Data Penggajian berhasil di import </div>');
	        //redirect halaman
	        redirect("hrd/penggajian/detail/".$x);
	    }
	}
	public function download()
	{
		$this->load->helper('download');
		$file = 'excel/format_penggajian.xlsx';
		force_download($file, NULL);
	}
}
