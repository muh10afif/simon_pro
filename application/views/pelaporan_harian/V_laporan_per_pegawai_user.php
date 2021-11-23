<style>
    .detail_pro td {
        border-top: none !important;
    }
</style>
<div class="row f_progres_projek">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
                <h4 id="judul" class="font-weight-bold">Laporan Harian</h4>
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
                <li class="breadcrumb-item" style="color: #2461AA">Laporan Harian</li>
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
                    <h6 class="col-8">Persentase Projek : <span id="t_nama_posisi" class="font-weight-bold"></span></h6>
                </div>

                <div class="progress" style="height: 25px;">
                    <div class="progress-bar prg-projek" role="progressbar" style="width: 40%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"> <span id="t_progress_posisi" style="font-size: 15px">40 %</span></div>
                </div>
            </div>
        </div>

        <div class="card mt-3">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">List Modul</h4></div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover tabel_list_modul" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="20%">Nama Modul</th>
                            <th width="20%">Persentase</th>
                            <th width="10%">Jumlah Isi Modul</th>
                            <th width="10%">Progress</th>
                            <th width="5%">Buat Laporan</th>
                        </tr>
                    </thead>
                    <tbody>
                            
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<div class="row f_laporan" style="display: none;">

    <div class="col-md-9">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" style="color: #2461AA">Laporan Harian</li>
                <li class="breadcrumb-item b_item" style="color: #2461AA">Detail Modul</li>
                <li class="breadcrumb-item active" aria-current="page">Laporan</li>
            </ol>
        </nav>
    </div>

    <div class="col-md-3">
        <button class="btn btn-warning float-right" id="kembali2" laporan="projek" type="button"><i class="mdi mdi-arrow-left-thick"></i>Kembali</button>
    </div>

    <div class="col-md-12 dt_laporan">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
                <h4 id="judul" class="font-weight-bold">Detail Projek</h4>
            </div>
            <div class="card-body table-responsive pt-0">
            <table class="table table-light table-hover mt-3 detail_pro">
                <tbody>
                    <tr>
                        <td width="15%" class="font-weight-bold">Nama Projek</td>
                        <td id="t_nama_projek2">: </td>
                        <td width="15%" class="font-weight-bold">Nama Modul</td>
                        <td id="t_nama_modul">: </td>
                    </tr>
                    <tr>
                        <td width="15%" class="font-weight-bold">Progres</td>
                        <td id="t_progres">: </td>
                        <td width="15%" class="font-weight-bold"></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            </div>
        </div>
    </div>

    <div class="col-md-12 mt-3">

        <div class="card f_tambah_laporan">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Tambah Data</h4>
            </div>
            <div class="card-body row">
                
                <input type="hidden" name="jml_persentase" id="jml_persentase">
                <input type="hidden" name="id_tim_projek" id="id_tim_projek">
                <input type="hidden" name="nm_modul" id="nm_modul">
                <input type="hidden" name="jenis_modul" id="jenis_modul">
                <input type="hidden" name="id_modul" id="id_modul">
                <input type="hidden" name="progres" id="progres">
                <input type="hidden" name="id_laporan" id="id_laporan">
                <input type="hidden" name="aksi" id="aksi" value="Tambah">
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="tanggal_laporan" class="col-form-label text-right">Tanggal Laporan</label>
                        <div class="">
                            <input type="text" class="form-control datepicker4 tgl_lap" style="font-size: 14px;" name="tanggal_laporan" id="tanggal_laporan" placeholder="Tanggal Laporan" readonly/>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 f_persen">
                    <div class="form-group">
                        <label for="persentase" class="col-form-label text-right">Persentase</label>
                        <div class="">
                            
                            <div class="input-group">
                            <input type="text" style="font-size: 14px;"  class="form-control angka" id="persentase" name="persentase" placeholder="Masukkan Persentase">
                                <div class="input-group-append bg-light border-light">
                                <span class="input-group-text bg-transparent text-dark" style="font-size: 15px;">
                                    %
                                </span>
                                </div>
                            </div>
                            <div id="div1" style="color: red;"></div>
                        </div>

                    </div>  
                </div>
                <div class="col-md-6"></div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="persentase" class="col-form-label text-right">Deskripsi</label>
                        <div id="summernote"></div>

                    </div>  
                </div>
            </div>
            <div class="card-footer d-flex justify-content-end">
                <button type="button" class="btn btn-warning mr-3" id="simpan_laporan">Simpan</button>
                <button class="btn btn-danger" id="batal_laporan" type="button" hidden>Batal</button>
            </div>
        </div>

        <div class="card mt-2">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">List Laporan</h4></div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover tabel_laporan" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="20%">Tanggal Laporan</th>
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

<input type="hidden" name="nilai_minimal" id="nilai_minimal">
<input type="hidden" name="nilai_minimal_lama" id="nilai_minimal_lama">
<input type="hidden" name="status_progres" id="status_progres" value="awal">

<div id="modal_detail_laporan" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-lg" role="document">
        
        <div class="modal-content">
            <div class="modal-header">
                <h4 id="judul" class="font-weight-bold judul">Detail Laporan</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
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

<script>

    $(document).ready(function () {

        // 14-04-2020
            // menampilkan data projek
            var tabel_presentase_projek = $('#tabel_presentase_projek').DataTable({
                "processing"        : true,
                "serverSide"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_persentase_projek_lp",
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
                var id_status_pro   = $(this).attr('status');   
                var id_tim_projek   = $(this).attr('id_tim_projek');   
                var jenis_modul     = $(this).attr('jenis_modul');  

                $('#id_tim_projek').val(id_tim_projek);
                $('#jenis_modul').val(jenis_modul);

                // menampilkan data list modul
                var tabel_list_modul  = $('.tabel_list_modul').DataTable({
                    "processing"    : true,
                    "ajax"          : {
                        "url"   : "tampil_list_modul_pos_user2",
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
                    url         : "ambil_data_detail_projek_user_3",
                    type        : "POST",
                    data        : {id_data_projek:id_data_projek, id_posisi:id_posisi},
                    dataType    : "JSON",
                    success     : function (data) {

                        if (id_status_pro == 9) {
                            $('.f_progres_projek').slideUp('fast');
                            $('.f_laporan').slideDown(300);

                            $('.dt_laporan').attr('hidden', true);
                            $('.b_item').attr('hidden', true);
                            $('.f_persen').attr('hidden', true);
                            $('#kembali2').attr('laporan', 'lain');

                            $('#persentase').val(0);

                            // menampilkan data list laporan
                            var tabel_laporan  = $('.tabel_laporan').DataTable({
                                "serverSide"    : true,
                                "processing"    : true,
                                "ajax"          : {
                                    "url"   : "tampil_list_laporan",
                                    "type"  : "POST",
                                    "data"  : function (data) {
                                        data.id_modul       = '0';
                                        data.id_tim_projek  = $('#id_tim_projek').val();
                                        data.jenis_modul    = $('#jenis_modul').val();
                                    }
                                },
                                stateSave       : true,
                                "order"         : [[ 1, 'desc']],
                                "columnDefs"     : [{
                                    "targets"       : [0,2],
                                    "orderable"     : false
                                }, {
                                    "targets"       : [0,1,2],
                                    "className"     : "text-center"
                                }],
                                "bDestroy": true
                            });

                            tabel_laporan.ajax.reload(null, false);

                            tabel_laporan.ajax.reload(null, false);

                        } else {
                            $('.f_progres_projek').slideUp('fast');
                            $('.f_detail_modul').slideDown(300);

                            $('.dt_laporan').attr('hidden', false);
                            $('.b_item').attr('hidden', false);
                            $('.f_persen').attr('hidden', false);
                            $('#kembali2').attr('laporan', 'projek');

                            $('#persentase').val('');
                        }

                        $('#id_data_projek').val(id_data_projek);

                        $('#id_posisi').html(data[0].list_posisi);

                        $('#id_data_projek').val(data.id_data_projek);
                        $('#t_nama_projek').text(': '+data.nama_sub_projek);
                        $('#t_instansi').text(': '+data.instansi);
                        $('#t_keterangan').text(': '+data.keterangan);
                        $('#t_tgl_dimulai').text(': '+data[0].tgl_dimulai);
                        $('#t_tgl_berakhir').text(': '+data[0].tgl_berakhir);
                        $('#t_total_persen').text(': '+data[0].total_persen+' %');

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

        // 15-04-2020
            
            // menampilkan data detail laporan
            $('.tabel_list_modul').on('click', '.lihat-laporan', function () {

                var nm_modul        = $(this).attr('nm_modul');
                var id_tim_projek   = $(this).attr('id_tim_projek');
                var jenis_modul     = $(this).attr('jenis_modul');
                var id_modul        = $(this).data('id');
                var progres         = $(this).attr('progres');
                var id_data_projek  = $('#id_data_projek').val(); 

                $('.f_detail_modul').slideUp('fast');
                $('.f_laporan').slideDown(300);

                // menampilkan data list laporan
                var tabel_laporan  = $('.tabel_laporan').DataTable({
                    "serverSide"    : true,
                    "processing"    : true,
                    "ajax"          : {
                        "url"   : "tampil_list_laporan",
                        "type"  : "POST",
                        "data"  : function (data) {
                            data.id_modul       = id_modul;
                            data.id_tim_projek  = id_tim_projek;
                            data.jenis_modul    = jenis_modul;
                        }
                    },
                    stateSave       : true,
                    "order"         : [[ 1, 'desc']],
                    "columnDefs"     : [{
                        "targets"       : [0,2],
                        "orderable"     : false
                    }, {
                        "targets"       : [0,1,2],
                        "className"     : "text-center"
                    }],
                    "bDestroy": true
                });

                $.ajax({
                    url     : "ambil_data_projek_laporan",
                    type    : "POST",
                    data    : {id_data_projek:id_data_projek, jenis_modul:jenis_modul, id_tim_projek:id_tim_projek, id_modul:id_modul},
                    dataType: "JSON",
                    success : function (data) {

                        $('#id_tim_projek').val(id_tim_projek);
                        $('#jenis_modul').val(data.jenis_modul);
                        $('#id_modul').val(id_modul);
                        $('#nilai_minimal').val(data.progres_terakhir);

                        $('#nilai_minimal_lama').val(data.progres_lama);

                        var nilai_minimal = $('#nilai_minimal').val();

                        var aksi = $('#aksi').val();
                        
                        var nilai = 0;

                        if (aksi == 'Ubah') {
                            nilai = data.progres_lama;
                        } else {
                            nilai = nilai_minimal;
                        }

                        $('.angka').maskAsNumber({
                            max: 100
                        });

                        tabel_laporan.ajax.reload(null, false);

                        $('#t_nama_projek2').text(": "+data.nama_projek);
                        $('#t_nama_modul').text(": "+nm_modul);
                        $('#t_progres').text(': '+data.progres_terakhir+' %');
                        $('#persentase').val(data.progres_terakhir);
                        $('#nilai_minimal').val(progres);

                        // if (data.progres_terakhir == 100) {
                        //     $('.f_tambah_laporan').attr('hidden', true);
                        // } else {
                        //     $('.f_tambah_laporan').removeAttr('hidden');
                        // }

                        $('#persentase').removeAttr('readonly');
                        
                    }
                })

            })

            // kembali
            $('#kembali2').on('click', function () {
                
                var laporan         = $('#kembali2').attr('laporan');
                var id_posisi       = $('#id_posisi').val();
                var id_data_projek  = $('#id_data_projek').val();

                // menampilkan data list modul
                var tabel_list_modul  = $('.tabel_list_modul').DataTable({
                    "processing"    : true,
                    "ajax"          : {
                        "url"   : "tampil_list_modul_pos_user2",
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

                        if (laporan == 'projek') {
                            $('.f_laporan').slideUp('fast');
                            $('.f_detail_modul').slideDown(300);

                            tabel_list_modul.ajax.reload(null, false);

                            $('.prg-projek').removeAttr('style');
                            $('.prg-projek').css("width", data[0].tot_progres+'%');
                            $('#t_progress_posisi').text(data[0].tot_progres+' %');
                        } else {
                            $('.f_laporan').slideUp('fast');
                            $('.f_progres_projek').slideDown(300);
                            
                            tabel_presentase_projek.ajax.reload(null, false);
                        }

                        

                    }
                })

                return false;

            })

            $('#summernote').summernote({
                placeholder: 'Masukkan Deskripsi Laporan',
                tabsize: 2,
                height: 200
            });

            $('.datepicker4').datepicker({
                autoclose     : true,
                format        : "dd MM yyyy",
                todayHighlight: true
            });

            // menampilkan halaman lihat laporan
            $('#simpan_laporan').on('click', function () {
                var deskripsi       = $('#summernote').summernote('code');
                var id_tim_projek   = $('#id_tim_projek').val();
                var jenis_modul     = $('#jenis_modul').val();
                var id_modul        = $('#id_modul').val();
                var tanggal_laporan = $('#tanggal_laporan').val();
                var persentase      = $('#persentase').val();
                var aksi            = $('#aksi').val();
                var id_laporan      = $('#id_laporan').val();
                var min3            = $('#nilai_minimal').val();
                var min_lama        = $('#nilai_minimal_lama').val();

                // $('#summernote').summernote('editor.insertText', 'hello world');
                // $('#summernote').summernote('editor.pasteHTML', '<b>hello world</b>');

                // menampilkan data list laporan
                var tabel_laporan  = $('.tabel_laporan').DataTable({
                    "serverSide"    : true,
                    "processing"    : true,
                    "ajax"          : {
                        "url"   : "tampil_list_laporan",
                        "type"  : "POST",
                        "data"  : function (data) {
                            data.id_modul       = id_modul;
                            data.id_tim_projek  = id_tim_projek;
                            data.jenis_modul    = jenis_modul;
                        }
                    },
                    stateSave       : true,
                    "order"         : [[ 0, 'asc']],
                    "columnDefs"     : [{
                        "targets"       : [0,2],
                        "orderable"     : false
                    }, {
                        "targets"       : [0,1,2],
                        "className"     : "text-center"
                    }],
                    "bDestroy": true
                });

                // if (+persentase <= +min3) {

                //     if (aksi == 'Ubah') {

                //         if (+persentase < +min_lama) {
                //             swal({
                //                 title               : "Peringatan",
                //                 text                : 'Persentase harus lebih dari '+min_lama+' %',
                //                 buttonsStyling      : false,
                //                 type                : 'warning',
                //                 showConfirmButton   : false,
                //                 timer               : 1000
                //             }); 

                //             return false; 
                //         } else if (tanggal_laporan == '') {
                //             swal({
                //                 title               : "Peringatan",
                //                 text                : 'Tanggal Laporan harus terisi !',
                //                 buttonsStyling      : false,
                //                 type                : 'warning',
                //                 showConfirmButton   : false,
                //                 timer               : 1000
                //             }); 

                //             return false;

                //         } else if (persentase == '') {
                //             swal({
                //                 title               : "Peringatan",
                //                 text                : 'Persentase harus terisi !',
                //                 buttonsStyling      : false,
                //                 type                : 'warning',
                //                 showConfirmButton   : false,
                //                 timer               : 1000
                //             }); 

                //             return false;
                //         } else if (deskripsi == '') {
                //             swal({
                //                 title               : "Peringatan",
                //                 text                : 'Deskripsi harus terisi !',
                //                 buttonsStyling      : false,
                //                 type                : 'warning',
                //                 showConfirmButton   : false,
                //                 timer               : 1000
                //             }); 

                //             return false;
                //         } else {

                //             swal({
                //                 title       : 'Konfirmasi',
                //                 text        : 'Yakin akan simpan data?',
                //                 type        : 'warning',

                //                 buttonsStyling      : false,
                //                 confirmButtonClass  : "btn btn-primary",
                //                 cancelButtonClass   : "btn btn-warning mr-3",

                //                 showCancelButton    : true,
                //                 confirmButtonText   : 'Ya',
                //                 confirmButtonColor  : '#3085d6',
                //                 cancelButtonColor   : '#d33',
                //                 cancelButtonText    : 'Batal',
                //                 reverseButtons      : true
                //             }).then((result) => {
                //                 if (result.value) {
                //                     $.ajax({
                //                         url     : "simpan_data_laporan",
                //                         type    : "POST",
                //                         beforeSend  : function () {
                //                             swal({
                //                                 title   : 'Menunggu',
                //                                 html    : 'Memproses Data',
                //                                 onOpen  : () => {
                //                                     swal.showLoading();
                //                                 }
                //                             })
                //                         },
                //                         data    : {aksi:aksi, id_laporan:id_laporan, deskripsi:deskripsi, id_tim_projek:id_tim_projek, jenis_modul:jenis_modul, id_modul:id_modul, tanggal_laporan:tanggal_laporan, progres:persentase},
                //                         dataType: "JSON",
                //                         success : function (data) {

                //                             console.log(data.progres_terakhir);

                //                             $('#nilai_minimal').val(data.progres_terakhir);
                //                             $('#t_progres').text(': '+data.progres_terakhir+' %');

                //                             var nilai_minimal = $('#nilai_minimal').val();
                //                             var nilai_minimal_lama = $('#nilai_minimal_lama').val();

                //                             $('.angka').maskAsNumber({
                //                                 min: nilai_minimal, 
                //                                 max: 100
                //                             });
                                            
                //                             swal({
                //                                 title               : "Berhasil",
                //                                 text                : 'Data berhasil disimpan',
                //                                 buttonsStyling      : false,
                //                                 confirmButtonClass  : "btn btn-success",
                //                                 type                : 'success',
                //                                 showConfirmButton   : false,
                //                                 timer               : 1000
                //                             });    
                            
                //                             tabel_laporan.ajax.reload(null,false);        
                                            
                //                             $('#summernote').summernote('code', '');
                //                             $('#tanggal_laporan').datepicker("setDate", null);
                //                             $('#persentase').val(data.progres_terakhir);

                //                             $('#batal_lapor').attr('hidden', true);

                //                             $('.hapus-modul').removeAttr('hidden');

                //                             $('#persentase').removeAttr('readonly');
                            
                //                             $('#aksi').val('Tambah');

                //                             if (data.progres_terakhir == 100) {
                //                                 $('.f_tambah_laporan').attr('hidden', true);
                //                             } else {
                //                                 $('.f_tambah_laporan').removeAttr('hidden');
                //                             }
                //                         }
                //                     })
                            
                //                     return false;

                //                 } else if (result.dismiss === swal.DismissReason.cancel) {

                //                     swal({
                //                         title               : "Batal",
                //                         text                : 'Anda membatalkan simpan data',
                //                         buttonsStyling      : false,
                //                         confirmButtonClass  : "btn btn-primary",
                //                         type                : 'error',
                //                         showConfirmButton   : false,
                //                         timer               : 1000
                //                     }); 
                //                 }
                //             })

                //             return false;

                //         }
                        
                //     } else {
                //         swal({
                //             title               : "Peringatan",
                //             text                : 'Persentase harus lebih dari '+min3+' %',
                //             buttonsStyling      : false,
                //             type                : 'warning',
                //             showConfirmButton   : false,
                //             timer               : 1000
                //         }); 

                //         return false;
                //     }
                    

                // } else 
                
                if (tanggal_laporan == '') {
                    swal({
                        title               : "Peringatan",
                        text                : 'Tanggal Laporan harus terisi !',
                        buttonsStyling      : false,
                        type                : 'warning',
                        showConfirmButton   : false,
                        timer               : 1000
                    }); 

                    return false;

                } else if (persentase == '') {
                    swal({
                        title               : "Peringatan",
                        text                : 'Persentase harus terisi !',
                        buttonsStyling      : false,
                        type                : 'warning',
                        showConfirmButton   : false,
                        timer               : 1000
                    }); 

                    return false;
                } else if (deskripsi == '') {
                    swal({
                        title               : "Peringatan",
                        text                : 'Deskripsi harus terisi !',
                        buttonsStyling      : false,
                        type                : 'warning',
                        showConfirmButton   : false,
                        timer               : 1000
                    }); 

                    return false;
                } else {

                    swal({
                        title       : 'Konfirmasi',
                        text        : 'Yakin akan simpan data?',
                        type        : 'warning',

                        buttonsStyling      : false,
                        confirmButtonClass  : "btn btn-primary",
                        cancelButtonClass   : "btn btn-warning mr-3",

                        showCancelButton    : true,
                        confirmButtonText   : 'Ya',
                        confirmButtonColor  : '#3085d6',
                        cancelButtonColor   : '#d33',
                        cancelButtonText    : 'Batal',
                        reverseButtons      : true
                    }).then((result) => {
                        if (result.value) {
                            $.ajax({
                                url     : "simpan_data_laporan",
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
                                data    : {aksi:aksi, id_laporan:id_laporan, deskripsi:deskripsi, id_tim_projek:id_tim_projek, jenis_modul:jenis_modul, id_modul:id_modul, tanggal_laporan:tanggal_laporan, progres:persentase},
                                dataType: "JSON",
                                success : function (data) {

                                    $('#nilai_minimal').val(data.progres_terakhir);
                                    $('#t_progres').text(': '+data.progres_terakhir+' %');

                                    var nilai_minimal = $('#nilai_minimal').val();

                                    $('.angka').maskAsNumber({
                                        max: 100
                                    });
                                    
                                    swal({
                                        title               : "Berhasil",
                                        text                : 'Data berhasil disimpan',
                                        buttonsStyling      : false,
                                        confirmButtonClass  : "btn btn-success",
                                        type                : 'success',
                                        showConfirmButton   : false,
                                        timer               : 1000
                                    });    
                    
                                    tabel_laporan.ajax.reload(null,false);        
                                    
                                    $('#summernote').summernote('code', '');
                                    $('#tanggal_laporan').datepicker("setDate", null);
                                    $('#persentase').val(data.progres_terakhir);

                                    $('#batal_lapor').attr('hidden', true);

                                    $('.hapus-modul').removeAttr('hidden');

                                    $('#persentase').removeAttr('readonly');
                    
                                    $('#aksi').val('Tambah');

                                    // if (data.progres_terakhir == 100) {
                                    //     $('.f_tambah_laporan').attr('hidden', true);
                                    // } else {
                                    //     $('.f_tambah_laporan').removeAttr('hidden');
                                    // }
                                }
                            })
                    
                            return false;

                        } else if (result.dismiss === swal.DismissReason.cancel) {

                            swal({
                                title               : "Batal",
                                text                : 'Anda membatalkan simpan data',
                                buttonsStyling      : false,
                                confirmButtonClass  : "btn btn-primary",
                                type                : 'error',
                                showConfirmButton   : false,
                                timer               : 1000
                            }); 
                        }
                    })

                    return false;

                }
            })

        // 16-04-2020

            $('.angka').numeric({
                negative: false
            })

            // aksi batal laporan
            $('#batal_laporan').on('click', function () {

                $('#summernote').summernote('code', '');
                $('#tanggal_laporan').datepicker("setDate", null);
                $('#persentase').val('');

                $('#batal_laporan').attr('hidden', true);

                $('#aksi').val('Tambah');
                $('.hapus-laporan').removeAttr('hidden');

                $('#persentase').removeAttr('readonly');

                if ($('#nilai_minimal').val() == 100) {
                    $('.f_tambah_laporan').attr('hidden', true);
                } else {
                    $('.f_tambah_laporan').removeAttr('hidden');
                }
            })

            // edit data laporan
            $('.tabel_laporan').on('click', '.edit-laporan', function () {

                $('.hapus-laporan').attr('hidden', true);

                var id_laporan      = $(this).data('id');
                var id_tim_projek   = $('#id_tim_projek').val();
                var jenis_modul     = $('#jenis_modul').val();
                var id_modul        = $('#id_modul').val();

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
                    data        : {id_laporan:id_laporan, id_tim_projek:id_tim_projek, jenis_modul:jenis_modul, id_modul:id_modul},
                    dataType    : "JSON",
                    success     : function(data)
                    {
                        swal.close();

                        $('.f_tambah_laporan').removeAttr('hidden');

                        $('#nilai_minimal').val(data[0].progres_sbl);

                        $('#nilai_minimal_lama').val(data[0].progres_lama);

                        if (data[0].status_prog == 'disabled') {
                            $('#persentase').attr('readonly', true);
                        } else {
                            $('#persentase').removeAttr('readonly');
                        }
                        
                        $('#id_laporan').val(data.id_laporan);
                        $('#summernote').summernote('code', '');
                        $('#summernote').summernote('editor.pasteHTML', data.deskripsi);
                        $('#tanggal_laporan').datepicker("setDate", data[0].tanggal_laporan);
                        $('#persentase').val(data.progres);

                        $('#aksi').val('Ubah');
                        $('#batal_laporan').removeAttr('hidden');

                        var aksi = $('#aksi').val();
                        
                        var nilai = 0;

                        nilai = data[0].progres_lama;
                        
                        $('.angka').maskAsNumber({
                            max: 100
                        });

                        return false;

                    },
                    error: function (jqXHR, textStatus, errorThrown)
                    {
                        alert('Error get data from ajax');
                    }
                })

                return false;

            })

            // hapus laporan
            $('.tabel_laporan').on('click', '.hapus-laporan', function () {

                var id_laporan = $(this).data('id');

                var id_modul        = $('#id_modul').val();
                var id_tim_projek   = $('#id_tim_projek').val();
                var jenis_modul     = $('#jenis_modul').val();

                // menampilkan data list laporan
                var tabel_laporan  = $('.tabel_laporan').DataTable({
                    "serverSide"    : true,
                    "processing"    : true,
                    "ajax"          : {
                        "url"   : "tampil_list_laporan",
                        "type"  : "POST",
                        "data"  : function (data) {
                            data.id_modul       = id_modul;
                            data.id_tim_projek  = id_tim_projek;
                            data.jenis_modul    = jenis_modul;
                        }
                    },
                    stateSave       : true,
                    "order"         : [[ 0, 'asc']],
                    "columnDefs"     : [{
                        "targets"       : [0,2],
                        "orderable"     : false
                    }, {
                        "targets"       : [0,1,2],
                        "className"     : "text-center"
                    }],
                    "bDestroy": true
                });

                swal({
                    title       : 'Konfirmasi',
                    text        : 'Yakin akan hapus data',
                    type        : 'warning',

                    buttonsStyling      : false,
                    confirmButtonClass  : "btn btn-primary",
                    cancelButtonClass   : "btn btn-danger mr-3",

                    showCancelButton    : true,
                    confirmButtonText   : 'Hapus',
                    confirmButtonColor  : '#d33',
                    cancelButtonColor   : '#3085d6',
                    cancelButtonText    : 'Batal',
                    reverseButtons      : true
                }).then((result) => {
                    if (result.value) {
                        $.ajax({
                            url         : "simpan_data_laporan",
                            method      : "POST",
                            beforeSend  : function () {
                                swal({
                                    title   : 'Menunggu',
                                    html    : 'Memproses Data',
                                    onOpen  : () => {
                                        swal.showLoading();
                                    }
                                })
                            },
                            data        : {aksi:'Hapus', id_laporan:id_laporan, id_tim_projek:id_tim_projek, jenis_modul:jenis_modul, id_modul:id_modul},
                            dataType    : "JSON",
                            success     : function (data) {

                                    tabel_laporan.ajax.reload(null,false);   

                                    swal({
                                        title               : 'Hapus laporan',
                                        text                : 'Data Berhasil Dihapus',
                                        buttonsStyling      : false,
                                        confirmButtonClass  : "btn btn-success",
                                        type                : 'success',
                                        showConfirmButton   : false,
                                        timer               : 1000
                                    }); 

                                    $('#nilai_minimal').val(data.progres_terakhir);
                                    $('#t_progres').text(': '+data.progres_terakhir+' %');

                                    var nilai_minimal = $('#nilai_minimal').val();

                                    $('.angka').maskAsNumber({
                                        max: 100
                                    });
                                    
                                    $('#summernote').summernote('code', '');
                                    $('#tanggal_laporan').datepicker("setDate", null);
                                    $('#persentase').val(data.progres_terakhir);

                                    $('#aksi').val('Tambah');

                                    $('#batal_laporan').attr('hidden', true);

                                    $('.hapus-laporan').removeAttr('hidden');

                                    // if (data.progres_terakhir == 100) {
                                    //     $('.f_tambah_laporan').attr('hidden', true);
                                    // } else {
                                    //     $('.f_tambah_laporan').removeAttr('hidden');
                                    // }
                                
                            },
                            error       : function(xhr, status, error) {
                                var err = eval("(" + xhr.responseText + ")");
                                alert(err.Message);
                            }

                        })

                        return false;
                    } else if (result.dismiss === swal.DismissReason.cancel) {

                        swal({
                                title               : 'Batal',
                                text                : 'Anda membatalkan hapus laporan',
                                buttonsStyling      : false,
                                confirmButtonClass  : "btn btn-primary",
                                type                : 'error',
                                showConfirmButton   : false,
                                timer               : 1000
                            }); 
                    }
                })

            })

            // detail laporan
            $('.tabel_laporan').on('click', '.detail-laporan', function () {

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
                        $('.judul').text('Detail Laporan Tanggal '+data[0].tanggal_laporan+' | Progres '+data.progres+'%');

                        return false;

                    },
                    error: function (jqXHR, textStatus, errorThrown)
                    {
                        alert('Error get data from ajax');
                    }
                })

                return false;
            })

        // 02-06-2020
            // cek tanggal laporan
            $('.tgl_lap2').on('change', function () {

                var tgl = $(this).val();
                
                $.ajax({
                    url         : "cek_tanggal_laporan",
                    type        : "POST",
                    data        : {tgl:tgl},
                    dataType    : "JSON",
                    success     : function (data) {

                        if (data.cek != 0) {
                            
                            swal({
                                title               : "Peringatan",
                                text                : 'Laporan sudah dibuat, harap ganti tanggal lain !',
                                buttonsStyling      : false,
                                type                : 'warning',
                                showConfirmButton   : false,
                                timer               : 2000
                            }); 

                            $('#tanggal_laporan').datepicker("setDate", null);

                        }

                    }
                })

                return false;

            })

            // $('.angka').on('keyup', function(){
            //     var min2    = $('#persentase').val();
            //     var min3    = $('#nilai_minimal').val();
            //     var status  = $('#status_progres').val();
            //     var max     = 100;
            //     var nilai   = $(this).val();

            //     if (+nilai > 0 && +nilai < +min3) {

            //         swal({
            //             title               : "Peringatan",
            //             text                : 'Progres tidak boleh kurang dari '+min3+' %',
            //             buttonsStyling      : false,
            //             type                : 'warning',
            //             showConfirmButton   : false,
            //             timer               : 1000
            //         }); 
                    
            //     }

            //     // if(+nilai > 100) { 
            //     //     swal({
            //     //         title               : "Peringatan",
            //     //         text                : 'Progres tidak boleh lebih dari 100% !',
            //     //         buttonsStyling      : false,
            //     //         type                : 'warning',
            //     //         showConfirmButton   : false,
            //     //         timer               : 1000
            //     //     }); 

            //     //     $(this).val(min3);
            //     //     $('#status_progres').val('awal');

            //     // } else if(+nilai <= +min3) {
                    
            //     //     swal({
            //     //         title               : "Peringatan",
            //     //         text                : 'Progres tidak boleh kurang dari '+min3+' %',
            //     //         buttonsStyling      : false,
            //     //         type                : 'warning',
            //     //         showConfirmButton   : false,
            //     //         timer               : 1000
            //     //     }); 

            //     //     $(this).val(min3);
            //     //     $('#status_progres').val('kedua');

            //     // } else {
            //     //     $('#div1').html('');
            //     // } 

            // });

            // $('.angka').on('keyup', function(){
            //     var min2    = $('#persentase').val();
            //     var min3    = $('#nilai_minimal').val();
            //     var max     = 100;
            //     var nilai   = $(this).val();

            //     if(+nilai > 100) { 
            //         $('#div1').html('Nilai maksimal 100 %');
            //         $(this).val('');
            //     } else if(+nilai <= +min2) {
            //         $('#div1').html('Progres harus lebih dari '+min3+' %');
            //         $(this).val(min3);
            //     } else {
            //         $('#div1').html('');
            //     } 

            // });

    })

</script>