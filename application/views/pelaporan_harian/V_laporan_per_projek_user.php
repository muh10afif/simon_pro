<style>
    .detail_pro td {
        border-top: none !important;
    }
</style>
<div class="row f_progres_projek">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
                <h4 id="judul" class="font-weight-bold">List Projek</h4>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover" id="tabel_presentase_projek" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="10%">Nama Projek</th>
                            <!-- <th width="10%">Instansi</th> -->
                            <th width="10%">Persentase Keseluruhan</th>
                            <th width="5%">Modul</th>
                        </tr>
                    </thead>
                    <tbody>
                            
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<div class="row f_detail_modul" style="display: none;">

    <div class="col-md-9">  
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" style="color: #2461AA">List Projek</li>
                <li class="breadcrumb-item active" aria-current="page">Detail Tim Projek</li>
            </ol>
        </nav>
    </div>

    <div class="col-md-3">
        <button class="btn btn-warning float-right" id="kembali" type="button"><i class="mdi mdi-arrow-left-thick"></i>Kembali</button>
    </div>

    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
                <h4 id="judul" class="font-weight-bold">Detail Projek</h4>
            </div>
            <div class="card-body table-responsive p-2">
            <input type="hidden" name="id_data_projek" id="id_data_projek">
            <input type="hidden" name="id_posisi" id="id_posisi" value="<?= $posisi ?>">
            <table class="table table-light table-hover mt-3 detail_pro">
                <tbody>
                    <tr>
                        <td width="15%" class="font-weight-bold">Nama Projek</td>
                        <td id="t_nama_projek">: </td>
                        <td width="15%" class="font-weight-bold">Tanggal Dimulai</td>
                        <td id="t_tgl_dimulai">: </td>
                    </tr>
                    <tr>
                        <td width="15%" class="font-weight-bold">Instansi</td>
                        <td id="t_instansi">: </td>
                        <td width="15%" class="font-weight-bold">Tanggal Berakhir</td>
                        <td id="t_tgl_berakhir">: </td>
                    </tr>
                    <tr>
                        <td width="15%" class="font-weight-bold">Keterangan</td>
                        <td id="t_keterangan">: </td>
                        <td width="15%" class="font-weight-bold"></td>
                        <td id="t_total_persen2"></td>
                    </tr>
                </tbody>
            </table>
            </div>
        </div>
    </div>

    <div class="col-md-12 mt-3 f_detail_posisi">

        <div class="card">
            <div class="card-body">
                <div class="row col-12 mb-3 p-0">
                    <h6 class="col-8">Persentase Projek : <span id="t_nama_projek" class="font-weight-bold"></span></h6>
                </div>

                <div class="progress" style="height: 25px;">
                    <div class="progress-bar prg-projek" role="progressbar" style="width: 40%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"> <span id="t_progress_posisi" style="font-size: 15px">40 %</span></div>
                </div>
            </div>
        </div>

        <div class="card mt-3">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Tim Projek</h4></div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover tabel_list_tim" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="20%">Nama Pegawai</th>
                            <th width="20%">Nama Posisi</th>
                            <th width="20%">Progres</th>
                            <th width="10%">Laporan</th>
                        </tr>
                    </thead>
                    <tbody>
                            
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<div class="detail_laporan_pegawai" style="display: none;">

</div>


<script>

    $(document).ready(function () {

        // 14-04-2020
            // menampilkan data projek
            var tabel_presentase_projek = $('#tabel_presentase_projek').DataTable({
                "processing"        : true,
                "serverSide"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_persentase_projek",
                    "type"  : "POST"
                },

                "columnDefs"        : [{
                    "targets"   : [0,3],
                    "orderable" : false
                }, {
                    'targets'   : [0,3],
                    'className' : 'text-center',
                }]

            })

            // aksi lihat modul projek
            $('#tabel_presentase_projek').on('click', '.lihat-modul', function () {

                var id_data_projek  = $(this).data('id');
                var id_posisi       = $('#id_posisi').val();

                // menampilkan data list modul
                var tabel_list_tim  = $('.tabel_list_tim').DataTable({
                    "processing"    : true,
                    "ajax"          : {
                        "url"   : "tampil_list_tim",
                        "type"  : "POST",
                        "data"  : {id_posisi:id_posisi, id_data_projek:id_data_projek}
                    },
                    stateSave       : true,
                    "order"         : [[ 0, 'asc']],
                    "paging"        : false,
                    "info"          : false,
                    "searching"     : false,
                    "columnDefs"     : [{
                        "targets"       : [4],
                        "orderable"     : false
                    }, {
                        "targets"       : [0,3,4],
                        "className"     : "text-center"
                    }],
                    "bDestroy": true
                });

                $.ajax({
                    url         : "ambil_data_detail_projek_user_4",
                    type        : "POST",
                    data        : {id_data_projek:id_data_projek, id_posisi:id_posisi},
                    dataType    : "JSON",
                    success     : function (data) {

                        $('.f_progres_projek').slideUp('fast');
                        $('.f_detail_modul').slideDown(300);

                        $('#id_data_projek').val(data.id_data_projek);
                        $('#t_nama_projek').text(': '+data.nama_sub_projek);
                        $('#t_instansi').text(': '+data.instansi);
                        $('#t_keterangan').text(': '+data.keterangan);
                        $('#t_tgl_dimulai').text(': '+data[0].tgl_dimulai);
                        $('#t_tgl_berakhir').text(': '+data[0].tgl_berakhir);

                        $('.prg-projek').removeAttr('style');
                        $('.prg-projek').css("width", data[0].tot_progres+'%');
                        $('#t_progress_posisi').text(data[0].tot_progres+' %');

                    }
                })

                return false;

            })

            // kembali
            $('#kembali').on('click', function () {
                $('.f_detail_modul').slideUp('fast');
                $('.f_progres_projek').slideDown(300);

                tabel_presentase_projek.ajax.reload(null, false);
            })

            // lihat laporan
            $('.tabel_list_tim').on('click', '.lihat-laporan',function () {

                var nama_pegawai    = $(this).attr('nm_pegawai');
                var id_posisi       = $(this).attr('id_posisi');
                var id_tim_projek   = $(this).data('id');
                var id_data_projek  = $('#id_data_projek').val();

                console.log(id_tim_projek);

                $.ajax({
                    url     : "halaman_lihat_laporan_user",
                    type    : "POST",
                    data    : {id_data_projek:id_data_projek, nama_pegawai:nama_pegawai, id_tim_projek:id_tim_projek, id_posisi:id_posisi},
                    success : function (data) {
                        
                        $('.detail_laporan_pegawai').html(data);
                        $('.f_detail_modul').slideUp('fast');
                        $('.detail_laporan_pegawai').slideDown(300);

                    }
                })

            })

    });

</script>