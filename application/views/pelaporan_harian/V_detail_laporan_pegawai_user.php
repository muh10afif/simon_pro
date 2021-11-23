<style>
    .detail_pro td {
        border-top: none !important;
    }
</style>
<div class="row">

    <div class="col-md-9">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" style="color: #2461AA">List Progress Projek</li>
                <li class="breadcrumb-item" style="color: #2461AA">List Pegawai</li>
                <li class="breadcrumb-item active" aria-current="page">Detail Laporan</li>
            </ol>
        </nav>
    </div>

    <div class="col-md-3">
        <button class="btn btn-warning float-right" id="kembali2" type="button"><i class="mdi mdi-arrow-left-thick"></i>Kembali</button>
    </div>

    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Filter</h4>
            </div>
            <div class="card-body p-0 pt-3">
                <div class="form-group row">
                    <label for="periode" class="col-md-3 col-form-label text-right">Periode</label>
                    <div class="col-md-7">
                        <form id="form_cari">
                            <input type="hidden" name="id_pegawai" id="id_pegawai2" value="<?= $id_pegawai ?>">
                            <input type="hidden" name="id_posisi" id="id_posisi" value="<?= $id_posisi ?>">
                            <input type="hidden" name="id_tim_projek" id="id_tim_projek" value="<?= $id_tim_projek ?>">
                            <input type="hidden" name="jenis_modul" id="jenis_modul" value="<?= $jenis_modul ?>">
                            <input type="hidden" name="id_data_projek" id="id_data_projek" value="<?= $id_data_projek ?>">
                            <div class="input-daterange input-group" id="date-range-2">
                                <input type="text" class="form-control datepicker3" style="font-size: 14px;" name="tgl_awal" id="tgl_awal" value="<?= date('d-F-Y', now('Asia/Jakarta')) ?>" placeholder="Awal Periode" readonly/>
                                <div class="input-group-append">
                                    <span class="input-group-text bg-warning b-0 text-white">S / D</span>
                                </div>
                                <input type="text" class="form-control datepicker3" style="font-size: 14px;" name="tgl_akhir" id="tgl_akhir" value="<?= date('d-F-Y', now('Asia/Jakarta')) ?>" placeholder="Akhir Periode" readonly/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="card-footer d-flex justify-content-end">
                <button type="button" class="btn btn-warning mr-3" id="filter_tanggal">Tampilkan</button>
                <button class="btn btn-danger" id="reset_data" type="button">Reset</button>
            </div>
        </div>
    </div>

    <div class="col-md-12 mt-3 detail_1">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
                <h4 id="judul" class="font-weight-bold">Detail Laporan</h4>
            </div>
            <div class="card-body table-responsive p-3 mb-3">
                <?php $tgl = date('Y-m-d', now('Asia/Jakarta')); ?>
            <table class="table table-light table-hover mt-3 detail_pro">
                <tbody>
                    <tr>
                        <td width="15%" class="font-weight-bold">Tanggal Laporan</td>
                        <td width="35%">: <?= nice_date($tgl, 'd F Y') ?></td>
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
                        <td width="35%">: <?= $tot_progres ?> %</td>
                        <td width="15%" class="font-weight-bold"></td>
                        <td width="35%"></td>
                    </tr>
                </tbody>
            </table>
            </div>
        </div>
    </div>

    <div class="col-md-12 mt-3 detail_1">
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
                            <?php $cari2 = $this->M_pelaporan_harian->get_detail_modul_des($tgl, $id_tim_projek, $value['id_modul'], $value['jenis_modul'])->result_array(); ?>
                            <table class="table table-bordered table-hover tabel" width="100%" cellspacing="0">
                                <thead class="thead-light">
                                    <tr>
                                        <th width="5%">No</th>
                                        <th width="10%%">Tanggal</th>
                                        <th width="5%">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $no=1; foreach ($cari2 as $c): ?>
                                        <tr>
                                            <td align="center"><?= $no++ ?>.</td>
                                            <td align="center"><?= nice_date($c['tanggal_laporan'], 'd F Y') ?></td>
                                            <td align="center"><button class='btn btn-primary detail-laporan' data-id="<?= $c['id_laporan'] ?>"><i class='mdi mdi-information-outline mr-2'></i>Isi Laporan</button></td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>

    <div class="detail_laporan_filter col-md-12" style="display: none;">

    </div>

    <div id="modal_detail_laporan" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-lg" role="document">
            
            <div class="modal-content">
                <div class="modal-header">
                    <h4 id="judul" class="font-weight-bold">Detail Laporan</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true" class="text-dark">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p id="detail_deskripsi"></p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-warning" data-dismiss="modal">Close</button>
                </div>
            </div>
            
        </div>
    </div>

</div>

<script>
    $(document).ready(function () {

        $('.tabel').DataTable();

        $('.datepicker3').datepicker({
            autoclose     : true,
            format        : "dd-MM-yyyy",
            todayHighlight: true
        });
        
        // kembali
        $('#kembali2').on('click', function () {

            console.log('masukk');
            
            $('.detail_laporan_pegawai').slideUp('fast');
            $('.f_detail_modul').slideDown(300);
            
        })

        // reset data
        $('#reset_data').on('click', function () {
            
            $('#tgl_awal').datepicker("setDate", null);
            $('#tgl_akhir').datepicker("setDate", null);

            $('.detail_2').slideUp('fast');
            $('.detail_laporan_filter').slideUp('fast');
            $('.detail_1').slideDown(300);

        })

        // filter tanggal
        $('#filter_tanggal').on('click', function () {
            var form        = $('#form_cari').serialize();
            var tgl_awal    = $('#tgl_awal').val();
            var tgl_akhir   = $('#tgl_akhir').val();

            if (tgl_awal == '') {
                swal({
                    title               : "Peringatan",
                    text                : 'Tanggal Awal harus terisi !',
                    buttonsStyling      : false,
                    type                : 'warning',
                    showConfirmButton   : false,
                    timer               : 1000
                }); 

                return false;
            } else if (tgl_akhir == '') {
                swal({
                    title               : "Peringatan",
                    text                : 'Tanggal Akhir harus terisi !',
                    buttonsStyling      : false,
                    type                : 'warning',
                    showConfirmButton   : false,
                    timer               : 1000
                }); 

                return false;
            } else {


                $.ajax({
                    url     : "halaman_lihat_laporan_user_filter",
                    type    : "POST",
                    beforeSend  : function () {
                        swal({
                            title   : 'Menunggu',
                            html    : 'Memproses Data',
                            onOpen  : () => {
                                swal.showLoading();
                            }
                        })
                    },
                    data    : form,
                    success : function (data) {
                        swal.close();
                        
                        $('.detail_laporan_filter').html(data);
                        $('.detail_1').slideUp('fast');
                        $('.detail_laporan_filter').slideDown(300);

                    }
                })

            }

        })

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
                    
                    $('#detail_deskripsi').html(data.deskripsi);
                    $('#modal_detail_laporan').modal('show');

                    return false;

                },
                error: function (jqXHR, textStatus, errorThrown)
                {
                    alert('Error get data from ajax');
                }
            })

            return false;
        })
    })
</script>