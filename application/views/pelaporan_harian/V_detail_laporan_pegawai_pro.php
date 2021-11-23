<style>
    .detail_pro td {
        border-top: none !important;
    }
</style>
<div class="row">
    <div class="col-md-12">
        <button class="btn btn-warning mb-3 float-right" id="kembali" type="button"><i class="mdi mdi-arrow-left-thick"></i>Kembali</button>
    </div>

    <div class="col-md-12 mt-3">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
                <h4 id="judul" class="font-weight-bold">Detail Laporan</h4>
            </div>
            <div class="card-body table-responsive p-1 mb-3">
            <table class="table table-light table-hover mt-3 detail_pro">
                <tbody>
                    <tr>
                        <td width="15%" class="font-weight-bold">Nama Pegawai</td>
                        <td width="35%">: <?= $detail['nama_pegawai'] ?></td>
                        <td width="15%" class="font-weight-bold">Posisi</td>
                        <td width="35%">: <?= $detail['nama_posisi'] ?> </td>
                    </tr>
                    <tr>
                        <td width="15%" class="font-weight-bold">Projek</td>
                        <td width="35%">: <?= $detail['nama_sub_projek'] ?></td>
                        <td width="15%" class="font-weight-bold">Progres</td>
                        <td width="35%">: </td>
                    </tr>
                </tbody>
            </table>
            </div>
        </div>
    </div>

    <div class="col-md-12 mt-3">
        <div id="accordion">

            <?php foreach ($modul as $m => $value): ?>
                <div class="card">
                    <div class="card-header p-1" id="m_<?= $m ?>">
                        <h5 class="mb-0">
                            <button class="font-weight-bold btn btn-block btn-lg btn-inverse-primary <?= ($m == 0) ? 'collapsed' : '' ?>" data-toggle="collapse" data-target="#col_<?= $m ?>" aria-expanded="<?= ($m == 0) ? 'true' : 'false' ?>" aria-controls="col_<?= $m ?>">
                            <?php $cari = $this->M_pelaporan_harian->get_detail_modul($value['id_modul'], $value['jenis_modul'])->row_array(); ?>
                                Modul <?= ucwords($cari['nama_modul']) ?>
                            </button>
                        </h5>
                    </div>

                    <div id="col_<?= $m ?>" class="collapse <?= ($m == 0) ? 'show' : '' ?>" aria-labelledby="m_<?= $m ?>" data-parent="#accordion">
                        <div class="card-body">
                            <?php $cari2 = $this->M_pelaporan_harian->get_detail_modul_des($tgl_laporan, $id_tim_projek, $value['id_modul'], $value['jenis_modul'])->row_array(); ?>
                            <table class="table table-bordered table-hover" width="100%" cellspacing="0">
                                <thead class="thead-light">
                                    <tr>
                                        <th width="20%">Deskripsi</th>
                                        <th width="5%">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><?= word_limiter($cari2['deskripsi'], 30) ?></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        
        // kembali
        $('#kembali').on('click', function () {
            
            $('.detail_laporan_pegawai').slideUp('fast');
            $('.f_awal').slideDown(300);
            
        })
    })
</script>