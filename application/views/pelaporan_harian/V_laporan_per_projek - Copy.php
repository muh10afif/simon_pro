<style>
    .detail_pro td {
        border-top: none !important;
    }
</style>
<div class="row f_awal">
    <div class="col-md-12 mt-3">
        <div class="card">
            <div class="card-header p-3">
                <h4 id="judul" class="font-weight-bold">List Projek</h4>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover" id="tabel_list_projek" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="20%">Nama Projek</th>
                            <th width="20%">Progres</th>
                            <th width="5%">Aksi</th>
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

    <div class="col-md-12">
        <button class="btn btn-warning mb-3 float-right" id="kembali" type="button"><i class="mdi mdi-arrow-left-thick"></i>Kembali</button>
    </div>

    <div class="col-md-12 mt-1">
        <div class="card">
            <div class="card-header p-3">
                <h4 id="judul" class="font-weight-bold">Detail Projek</h4>
            </div>
            <div class="card-body table-responsive p-2">
            <input type="hidden" name="id_data_projek" id="id_data_projek">
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
                        <td></td>
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
                    <h6 class="col-8">Persentase Projek : <span id="t_nama_posisi" class="font-weight-bold"></span></h6>
                </div>

                <div class="progress" style="height: 30px;">
                    <div class="progress-bar prg-projek" role="progressbar" style="width: 40%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"> <span id="t_progress_posisi">40 %</span></div>
                </div>
            </div>
        </div>

        <div class="card mt-3">
            <input type="hidden" name="id_data_projek" id="id_data_projek">
            <div class="card-header p-3"><h5 id="judul" class="font-weight-bold">Tim Projek</h5></div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover tabel_tim_projek" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="20%">Nama Pegawai</th>
                            <th width="20%">Nama Posisi</th>
                            <th width="20%">Progres</th>
                            <th width="5%">Aksi</th>
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
        
        // 09-04-2020
            // menampilkan list projek
            var tabel_list_projek = $('#tabel_list_projek').DataTable({
                "processing"        : true,
                "serverSide"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_list_projek",
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

            // menampilkan detail projek
            $('#tabel_list_projek').on('click', '.detail-projek', function () {

                var id_data_projek = $(this).data('id');
                
                // menampilkan data list modul
                var tabel_tim_projek  = $('.tabel_tim_projek').DataTable({
                    "processing"    : true,
                    "ajax"          : {
                        "url"   : "tampil_tim_projek",
                        "type"  : "POST",
                        "data"  : {id_data_projek:id_data_projek}
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
                        "targets"       : [4],
                        "className"     : "text-center"
                    }],
                    "bDestroy": true
                });

                $.ajax({
                    url         : "detail_projek_laporan",
                    type        : "POST",
                    data        : {id_data_projek:id_data_projek},
                    dataType    : "JSON",
                    success     : function (data) {

                        tabel_tim_projek.ajax.reload(null, false);

                        $('.f_awal').slideUp('fast');
                        $('.f_detail_modul').slideDown(300);

                        $('#id_data_projek').val(data.id_data_projek);
                        $('#t_nama_projek').text(': '+data.nama_projek);
                        $('#t_instansi').text(': '+data.instansi);
                        $('#t_keterangan').text(': '+data.keterangan);
                        $('#t_tgl_dimulai').text(': '+data.tgl_dimulai);
                        $('#t_tgl_berakhir').text(': '+data.tgl_berakhir);

                        $('.prg-projek').removeAttr('style');
                        $('.prg-projek').css("width", data.progres+'%');
                        $('#t_progress_posisi').text(data.progres+' %');
                    }
                })

                return false;

            })

            // kembali
            $('#kembali').on('click', function () {
                
                $('.f_detail_modul').slideUp('fast');
                $('.f_awal').slideDown(300);

                tabel_list_projek.ajax.reload(null, false);

            })

            // lihat laporan
            $('.tabel_tim_projek').on('click', '.lihat-laporan',function () {

                var nama_pegawai    = $(this).attr('nm_pegawai');
                var id_posisi       = $(this).attr('id_posisi');
                var id_tim_projek   = $(this).data('id');

                $.ajax({
                    url     : "halaman_lihat_laporan_pro",
                    type    : "POST",
                    data    : {nama_pegawai:nama_pegawai, id_tim_projek:id_tim_projek, id_posisi:id_posisi},
                    success : function (data) {
                        
                        $('.detail_laporan_pegawai').html(data);
                        $('.f_detail_modul').slideUp('fast');
                        $('.detail_laporan_pegawai').slideDown(300);

                    }
                })

            })

    })
</script>