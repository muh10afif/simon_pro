<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Uim_lelang extends CI_Controller {

    public function index() {
        $username	= $this->input->post('username');
        $password	= $this->input->post('password');
        $appid    = $this->input->post('appid');
    
        $pass       = "eyJpdiI6IjNcL2psdHIxelp2Y045UHhpSFNDQ0xnPT0iLCJ2YWx1ZSI6IjZNNnpxSnJuejJaeGE1dDFxQnpRUVE9PSIsIm1hYyI6ImYwNjUxYTExNzhhNGZhYzRmOTMwZTAxNmZhYzgzMjQ0NmU2YjViMDU3MTEyMGMyOWY1NTdjYWY0YTM4NWZlZjQifQ==";
        if ($username == 'Adminexample') {
          if ($password != 'pass12345') {
            $response   = "not_valid_credentials";
            $message    = "Credentials is not valid. Please provide a correct credentials.";
            $rc         = "63";
            $warning    = "warning";
          } else {
            $response = ['nama'          => "ANDRI MUHAMMAD RAMADHAN",
                         'nip'           => "14888525",
                         'userid'        => $username,
                         'kodeCabang'    => "P060",
                         'namaCabang'    => "DIVISI PENYELAMATAN DAN PENYELESAIAN KREDIT ",
                         "kodeInduk"     => "P009",
                         "namaInduk"    => "KANWIL 1",
                         "kodeKanwil"   => "K001",
                         "namaKanwil"   => "KANWIL 1",
                         "jabatan"      => "STAF G4",
                         "posisiPenempatan" => "-",
                         "hp"           => "085624203225",
                         "email"        => "araspati@bankbjb.co.id",
                         "kodeGrade"    => "0085",
                         "namaGrade"    => "G4",
                         "idFungsi"     => "834",
                         "fungsiTambahan"   => "-",
                         "limitDebet"   => "0",
                         "limitKredit"  => "0",
                         "id"           => "20151002103451P0938539"
                        ];
            $message    = "Transaction success";
            $rc         = "00";
            $warning    = "success";
          }
        } else {
          $response   = [];
          $message    = "The requested resource is not found";
          $rc         = "44";
          $warning    = "info";
        }
    
        $data = ['status'   => $warning,
                 'rc'       => $rc,
                 'response' => $response,
                 'message'  => $message
                ];
    
        echo json_encode($data,200);
    }

}

/* End of file Uim_lelang.php */
