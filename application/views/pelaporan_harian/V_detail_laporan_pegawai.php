<style>
    .detail_pro td {
        border-top: none !important;
    }
</style>
<div class="row">

    <div class="col-md-9">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" style="color: #2461AA">List Progress Pegawai</li>
                <li class="breadcrumb-item active" aria-current="page">Detail Laporan</li>
            </ol>
        </nav>
    </div>

    <div class="col-md-3">
        <button class="btn btn-warning float-right" id="kembali" type="button"><i class="mdi mdi-arrow-left-thick"></i>Kembali</button>
    </div>

    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
                <h4 id="judul" class="font-weight-bold">Detail Laporan</h4>
            </div>
            <div class="card-body table-responsive p-1 mb-3">
            <table class="table table-light table-hover mt-3 detail_pro">
                <tbody>
                    <tr>
                        <td width="15%" class="font-weight-bold">Tanggal Laporan</td>
                        <td width="35%">: <?= nice_date($detail['tanggal_laporan'], 'd-M-Y') ?></td>
                        <td width="15%" class="font-weight-bold">Nama Pegawai</td>
                        <td width="35%">: <?= $detail['nama_pegawai'] ?></td>
                    </tr>
                    <tr>
                        <td width="15%" class="font-weight-bold">Posisi</td>
                        <td width="35%">: <?= $detail['nama_posisi'] ?> </td>
                        <td width="15%" class="font-weight-bold">Projek</td>
                        <td width="35%">: <?= $detail['nama_sub_projek'] ?></td>
                    </tr>
                    <tr>
                        <td width="15%" class="font-weight-bold">Progres</td>
                        <td width="35%">: <?= $progres ?> %</td>
                        <td width="15%" class="font-weight-bold"></td>
                        <td width="35%"></td>
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
                            <table class="table table-bordered table-hover tabel" width="100%" cellspacing="0">
                                <thead class="thead-light">
                                    <tr>
                                        <th width="5%">No</th>
                                        <th width="20%">Tanggal</th>
                                        <th width="5%">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td align="center">1. </td>
                                        <td align="center"><?= nice_date($detail['tanggal_laporan'], 'd F Y') ?></td>
                                        <td align="center"><button class='btn btn-primary detail-laporan' data-id="<?= $cari2['id_laporan'] ?>"><i class='mdi mdi-information-outline mr-2'></i>Isi Laporan</button></td>
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

    <div id="modal_detail_laporan2" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-lg" role="document">
            
            <div class="modal-content">
                <div class="modal-header">
                    <h4 id="judul" class="font-weight-bold">Detail Laporan</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p id="detail_deskripsi2"></p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-warning" data-dismiss="modal">Close</button>
                </div>
            </div>
            
        </div>
    </div>

<script>
    $(document).ready(function () {

        $('.tabel').DataTable();

        // detail laporan
        $('.tabel').on('click', '.detail-laporan', function () {

            var id_laporan = $(this).data('id');

            $.ajax({
                url         : "ambil_data_laporan",
                type        : "POST",
                beforeSend  : function () {
                    swal({
                        title   : 'Menunggu',
                        html    : 'Memproses Data',
                        onOpen  : () => {
                            swal.showLoading();
                        }
                    })
                },
                data        : {id_laporan:id_laporan},
                dataType    : "JSON",
                success     : function(data)
                {
                    swal.close();
                    
                    $('#detail_deskripsi2').html(data.deskripsi);
                    $('#modal_detail_laporan2').modal('show');

                    return false;

                },
                error: function (jqXHR, textStatus, errorThrown)
                {
                    alert('Error get data from ajax');
                }
            })

            return false;
        })
        
        // kembali
        $('#kembali').on('click', function () {
            
            $('.detail_laporan_pegawai').slideUp('fast');
            $('.f_awal').slideDown(300);
            
        })
    })
</script>