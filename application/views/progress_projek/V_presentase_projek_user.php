<style>
    .detail_pro td {
        border-top: none !important;
    }
</style>
<div class="row f_progres_projek">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
                <h4 id="judul" class="font-weight-bold">Persentase Projek</h4>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover" id="tabel_presentase_projek" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="10%">Nama Projek</th>
                            <!-- <th width="10%">Instansi</th> -->
                            <th width="10%">Persentase</th>
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
                <li class="breadcrumb-item" style="color: #2461AA">Persentase Projek</li>
                <li class="breadcrumb-item active" aria-current="page">Detail Modul</li>
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
            <input type="hidden" name="id_posisi" id="id_posisi" value="<?= $id_posisi ?>">
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
                    <h6 class="col-8">Persentase Posisi : <span id="t_nama_posisi" class="font-weight-bold"></span></h6>
                    <h6 class="col-4">Nama Pegawai : <span id="t_nama_pegawai" class="font-weight-bold"></span></h6>
                </div>

                <div class="progress" style="height: 25px;">
                    <div class="progress-bar prg-projek" role="progressbar" style="width: 40%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"> <span id="t_progress_posisi" style="font-size: 15px">40 %</span></div>
                </div>
            </div>
        </div>

        <div class="card mt-3">
            <div class="card-header bg-warning text-white p-3"><h5 id="judul" class="font-weight-bold">List Modul</h5></div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover tabel_list_modul" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="20%">Nama Modul</th>
                            <th width="20%">Persentase</th>
                            <th width="10%">Jumlah Isi Modul</th>
                            <th width="10%">Progress</th>
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

<!-- Modal -->
<div class="modal fade" id="modal_isi_modul" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
        <div class="modal-header bg-warning text-white">
            <h5 class="modal-title" id="judul_modal">Modul</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" class="mr-2 text-dark">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <table class="table table-bordered table-hover tabel_list_isi_modul" width="100%" cellspacing="0">
                <thead class="thead-light">
                    <tr>
                        <th width="20%">Isi Modul</th>
                    </tr>
                </thead>
                <tbody>
                        
                </tbody>
            </table>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
        </div>
    </div>
  </div>
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
                    "url"   : "tampil_persentase_projek/user",
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

                console.log(id_data_projek);

                // menampilkan data list modul
                var tabel_list_modul  = $('.tabel_list_modul').DataTable({
                    "processing"    : true,
                    "ajax"          : {
                        "url"   : "tampil_list_modul_pos_user",
                        "type"  : "POST",
                        "data"  : {id_posisi:id_posisi, id_data_projek:id_data_projek}
                    },
                    stateSave       : true,
                    "order"         : [[ 0, 'asc']],
                    "paging"        : false,
                    "info"          : false,
                    "searching"     : false,
                    "columnDefs"     : [{
                        "targets"       : [5],
                        "orderable"     : false
                    }, {
                        "targets"       : [5],
                        "className"     : "text-center"
                    }],
                    "bDestroy": true
                });

                $.ajax({
                    url         : "ambil_data_detail_projek_user",
                    type        : "POST",
                    data        : {id_data_projek:id_data_projek, id_posisi:id_posisi},
                    dataType    : "JSON",
                    success     : function (data) {

                        $('.f_progres_projek').slideUp('fast');
                        $('.f_detail_modul').slideDown(300);

                        $('#id_data_projek').val(id_data_projek);

                        $('#id_posisi').html(data[0].list_posisi);

                        $('#id_data_projek').val(data.id_data_projek);
                        $('#t_nama_projek').text(': '+data.nama_sub_projek);
                        $('#t_instansi').text(': '+data.instansi);
                        $('#t_keterangan').text(': '+data.keterangan);
                        $('#t_tgl_dimulai').text(': '+data[0].tgl_dimulai);
                        $('#t_tgl_berakhir').text(': '+data[0].tgl_berakhir);
                        // $('#t_total_persen').text(': '+data[0].total_persen+' %');

                        $('.prg-projek').removeAttr('style');
                        $('.prg-projek').css("width", data[0].tot_progres+'%');
                        $('#t_progress_posisi').text(data[0].tot_progres+' %');

                        $('#t_nama_posisi').text(data[0].nama_posisi);
                        $('#t_nama_pegawai').text(data[0].nama_pegawai);

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

            // aksi pilih posisi
            $('#id_posisi').on('change', function () {

                var id_posisi       = $(this).val();
                var id_data_projek  = $('#id_data_projek').val();

                if (id_posisi != null) {
                    $('.f_detail_posisi').slideUp('fast');
                    $('.f_detail_posisi').slideDown(300);
                } else {
                    $('.f_detail_posisi').slideUp('fast');
                }

                // menampilkan data list modul
                var tabel_list_modul  = $('.tabel_list_modul').DataTable({
                    "processing"    : true,
                    "ajax"          : {
                        "url"   : "tampil_list_modul_pos",
                        "type"  : "POST",
                        "data"  : {id_posisi:id_posisi, id_data_projek:id_data_projek}
                    },
                    stateSave       : true,
                    "order"         : [[ 0, 'asc']],
                    "paging"        : false,
                    "info"          : false,
                    "searching"     : false,
                    "columnDefs"     : [{
                        "targets"       : [5],
                        "orderable"     : false
                    }, {
                        "targets"       : [5],
                        "className"     : "text-center"
                    }],
                    "bDestroy": true
                });

                $.ajax({
                    url         : "ambil_data_detail_projek_pos",
                    type        : "POST",
                    data        : {id_posisi:id_posisi, id_data_projek:id_data_projek},
                    dataType    : "JSON",
                    success     : function (data) {

                        tabel_list_modul.ajax.reload(null, false);

                        if (data[0].jml_isi != 0) {
                            $('.prg-projek').removeAttr('style');
                            $('.prg-projek').css("width", data[0].total_persen+'%');
                            $('#t_progress_posisi').text(data[0].total_persen+' %');
                        } else {
                            $('.prg-projek').removeAttr('style');
                            $('.prg-projek').css("width", '0 %');
                            $('#t_progress_posisi').text('0 %');
                        }

                        $('#t_nama_posisi').text(data[0].nama_posisi);
                        $('#t_nama_pegawai').text(data[0].nama_pegawai);

                        
                    }
                })

                return false;

            })

            // tampil isi modul
            $('.tabel_list_modul').on('click', '.lihat-isi-modul', function () {

                var id_modul_projek = $(this).data('id');
                var nama_modul      = $(this).attr('nm_modul');

                $('#judul_modal').text('Modul '+nama_modul);

                $('#modal_isi_modul').modal('show');

                // menampilkan data list modul
                var tabel_list_isi_modul  = $('.tabel_list_isi_modul').DataTable({
                    "processing"    : true,
                    "ajax"          : {
                        "url"   : "tampil_list_isi_modul",
                        "type"  : "POST",
                        "data"  : {id_modul_projek:id_modul_projek}
                    },
                    stateSave       : true,
                    "order"         : [[ 0, 'asc']],
                    "paging"        : false,
                    "info"          : false,
                    "searching"     : false,
                    "columnDefs"     : [{
                        "targets"       : [],
                        "orderable"     : false
                    }, {
                        "targets"       : [0],
                        "className"     : "text-center"
                    }],
                    "bDestroy": true
                });

            })

    })

</script>