<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $laporan ?></title>
    <style>
      th, td {
        padding: 3px;
        font-size: 20px;
      }

      th {
        text-align: center;
      }
      thead tr th {
        background-color: #eee;
      }
      .a tr td {
        font-weight: bold;
      }
      body {
        margin: 20px 20px 20px 20px;
        color: black;
      }
    </style>
</head>
<body>

    <h2 style="font-weight: bold;"><?= $laporan ?></h2>
    <table>
        <?php if(!empty($bulan)) : ?>
            <tr>
                <td width="150px">Bulan</td>
                <td align="left">: <?= nice_date($bulan, 'F Y') ?></td>
            </tr>
        <?php endif ?>
    </table><?= br() ?>
    <table border="1" width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width="5%">No</th>
                <th width="20%">Nama Projek</th>
                <th width="20%">PIC</th>
                <th width="20%">Minggu ke 1</th>
                <th width="20%">Minggu ke 2</th>
                <th width="20%">Minggu ke 3</th>
                <th width="20%">Minggu ke 4</th>
                <?= ($jml == 5) ? " <th width='20%'>Minggu ke 5</th>" : '' ; ?>
                <?= ($jml == 6) ? " <th width='20%'>Minggu ke 6</th>" : '' ; ?>
            </tr>
        </thead>
        <tbody>
            <?php $no=1; foreach ($list as $v): ?>

                <tr>
                    <td><?= $no ?>.</td>
                    <td><?= $v['nama_sub_projek'] ?></td>
                    <td><?= $v['nama_pegawai'] ?></td>
                    <?php 
                        $minggu     = $this->M_rekap->bulan_minggu($bulan);
                        $jml_minggu = count($minggu); 
                    ?>

                    <?php for ($i=1; $i <= $jml_minggu; $i++): ?>

                        <?php 
                            
                            $a = $this->M_rekap->bulan_minggu($bulan, $i);

                            $tgl = explode(',', $a);
    
                            $tgl_awal   = $tgl[0];
                            $tgl_akhir  = ($tgl[1] != '') ? $tgl[1] : $tgl[0];
    
                            // cari banyaknya posisi
                            $c_posisi = $this->M_rekap->cari_banyak_posisi($v['id_data_projek']);
    
                            $jml_arr = array();   

                        ?>

                        <?php foreach ($c_posisi->result_array() as $p): 
                            
                            $jns = strtolower($p['jenis_modul']);

                            $jns_modul = str_replace(' ','_', $jns);
                        
                            $list2 = $this->M_rekap->get_data_modul_pos($tgl_awal, $tgl_akhir, $p['id_posisi'], $v['id_data_projek'], $jns_modul)->result_array();
                        
                            $angka = array();
                        
                            $tot_progres = 0;
                            foreach ($list2 as $k) {
                                $tot_progres += $k['progres_modul'];
                            }
                        
                            array_push($angka, $tot_progres);
                        
                            $jml = array_sum($angka);

                            array_push($jml_arr, $jml);
                            
                        ?>

                        <?php endforeach; 
                        
                            $tot_minggu = array_sum($jml_arr) / $c_posisi->num_rows();

                        ?>

                        <td align="center"><?= number_format($tot_minggu, '2') ?> %</td>
                        
                    <?php endfor; ?>
                </tr>
            
            <?php $no++; endforeach; ?>
        </tbody>
    </table>
    
</body>
</html>