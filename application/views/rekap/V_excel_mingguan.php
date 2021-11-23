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
        <?php if($minggu_ke != '') : ?>
            <tr>
                <td width="150px">Minggu Ke-</td>
                <td align="left">: <?= $minggu_ke ?></td>
            </tr>
        <?php endif ?>
        <?php if($tgl_awal != '' || $tgl_akhir != '') : ?>
            <tr>
                <td width="150px">Tanggal</td>
                <td align="left">: <?= nice_date($tgl_awal, 'd F Y') ?> s/d <?= nice_date($tgl_akhir, 'd F Y') ?></td>
            </tr>
        <?php endif ?>
    </table><?= br() ?>
    <table border="1" width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width="5%">No</th>
                <th width="20%">Nama Projek</th>
                <?php foreach ($posisi as $p) : ?>
                    <th width="20%"><?= ($p['nama_posisi'] == 'Programmer') ? 'Build' : $p['nama_posisi'] ?></th>
                <?php endforeach; ?>
                <th width="20%">Keterangan</th>
            </tr>
        </thead>
        <tbody>
            
            <?php $no=1; foreach ($list as $v): ?>

                <tr>
                    <td align="center"><?= $no ?>.</td>
                    <td><?= $v['nama_sub_projek'] ?></td>

                    <?php $cari_pos = $this->M_rekap->ambil_posisi()->result_array(); ?>

                    <?php foreach ($cari_pos as $h): 

                        $jns = strtolower($h['jenis_modul']);

                        $jns_modul = str_replace(' ','_', $jns);

                        $list2 = $this->M_rekap->get_data_modul_pos($tgl_awal, $tgl_akhir, $h['id_posisi'], $v['id_data_projek'], $jns_modul)->result_array();

                        $angka = array();

                        $tot_progres = 0;
                        foreach ($list2 as $k) {
                            $tot_progres += $k['progres_modul'];
                        }

                        array_push($angka, $tot_progres);

                        $jml = array_sum($angka);

                    ?>

                    <td align="center"><?= $jml ?> %</td>
                        
                    <?php endforeach; ?>

                </tr>
            
            <?php $no++; endforeach; ?>  

            <?php ?>
        </tbody>
    </table>
    
</body>
</html>