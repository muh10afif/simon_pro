<style>
    .detail_pro td {
        border-top: none !important;
    }
</style>
<div class="row f_modul_projek">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
                <h4 id="judul" class="font-weight-bold">Kelola Modul Projek</h4>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover" id="tabel_modul_projek" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="10%">Nama Induk Projek</th>
                            <th width="10%">Nama Projek</th>
                            <th width="10%">Status</th>
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

<div class="row f_detail_modul2" style="display: none;">

    <div class="col-md-9">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" style="color: #2461AA">Data Projek</li>
                <li class="breadcrumb-item active" aria-current="page">Detail Modul</li>
            </ol>
        </nav>
    </div>

    <div class="col-md-3">
        <button class="btn btn-warning float-right" id="kembali2" type="button"><i class="mdi mdi-arrow-left-thick"></i>Kembali</button>
    </div>

    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Detail Projek</h4></div>
            <div class="card-body table-responsive p-2">
            <table class="table table-light table-hover detail_pro">
                <tbody>
                    <tr>
                        <td width="15%" class="font-weight-bold">Nama Projek</td>
                        <td id="t_nama_projek2">: </td>
                        <td width="15%" class="font-weight-bold">Tanggal Dimulai</td>
                        <td id="t_tgl_dimulai2">: </td>
                    </tr>
                    <tr>
                        <td width="15%" class="font-weight-bold">Instansi</td>
                        <td id="t_instansi2">: </td>
                        <td width="15%" class="font-weight-bold">Tanggal Berakhir</td>
                        <td id="t_tgl_berakhir2">: </td>
                    </tr>
                    <tr>
                        <td width="15%" class="font-weight-bold">Keterangan</td>
                        <td id="t_keterangan2">: </td>
                        <td width="15%" class="font-weight-bold"></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            </div>
        </div>
    </div>

    <div class="col-md-12 mt-3">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">List Modul</h4></div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover tabel_list_modul2" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="20%">Nama Modul</th>
                            <th width="20%">Persentase</th>
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
                <li class="breadcrumb-item" style="color: #2461AA">Data Projek</li>
                <li class="breadcrumb-item active" aria-current="page">Detail Modul</li>
            </ol>
        </nav>
    </div>

    <div class="col-md-3">
        <button class="btn btn-warning float-right" id="kembali" type="button"><i class="mdi mdi-arrow-left-thick"></i>Kembali</button>
    </div>

    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Detail Projek</h4></div>
            <div class="card-body table-responsive pt-3">
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

    <div class="col-md-12">

        <div class="row">

            <div class="col-md-12 mt-3">
                <div class="card">
                    <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">List Modul</h4></div>
                    <div class="card-body table-responsive">
                        <table class="table table-bordered table-hover tabel_list_modul" width="100%" cellspacing="0">
                            <thead class="thead-light">
                                <tr>
                                    <th width="5%">No</th>
                                    <th width="20%">Nama Modul</th>
                                    <th width="20%">Persentase</th>
                                    <th width="5%">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                    
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-md-12 f_isi_modul" style="display:none;">

                <div class="row">

                    <div class="col-md-12 mt-3">
                        <div class="card">
                            <div class="card-body p-0 pb-3">

                                <div class="col-md-12 mt-3">
                                    <div class="card">
                                        <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Tambah Data Isi Modul</h4></div>
                                        <input type="hidden" name="id_data_projek" id="id_data_projek">
                                        <input type="hidden" name="id_posisi" id="id_posisi" value="<?= $id_posisi ?>">
                                        <form id="form_isi_modul" autocomplete="off">
                                            <input type="hidden" name="id_modul_projek" id="id_modul_projek">
                                            <input type="hidden" name="id_isi_modul" id="id_isi_modul">
                                            <input type="hidden" name="aksi" id="aksi2" value="Tambah">
                                            <div class="card-body row">
                                                <div class="col-md-2">
                                                    <div class="form-group ">
                                                        <label for="nama_modul" class="col-form-label text-right">Nama Modul</label>
                                                        <div class="">
                                                            <span style="font-size: 14px; font-weight: bold;" id="t_nama_modul"></span>
                                                        </div>
                                                    </div>  
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label for="isi_modul" class="col-form-label text-right">Isi Modul</label>
                                                        <div class="">
                                                            <textarea class="form-control" style="font-size: 14px;" name="isi_modul" id="isi_modul" placeholder="Masukkan Isi Modul" rows="3"></textarea>
                                                        </div>
                                                    </div>  
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label for="isi_modul" class="col-form-label text-right">Keterangan</label>
                                                        <div class="">
                                                            <textarea class="form-control" style="font-size: 14px;" name="keterangan" id="keterangan" placeholder="Masukkan Keterangan" rows="3"></textarea>
                                                        </div>
                                                    </div>  
                                                </div>
                                            </div>
                                            <div class="card-footer d-flex justify-content-end">
                                                <button type="button" class="btn btn-warning mt-1 mr-3" id="simpan_isi_modul">Simpan</button>
                                                <button class="btn btn-danger mt-1" id="batal_isi_modul" type="button" hidden>Batal</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <div class="col-md-12 mt-3">
                                    <div class="card">
                                        <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">List Isi Modul</h4></div>
                                        <div class="card-body table-responsive">
                                            <table class="table table-bordered table-hover tabel_isi_modul" width="100%" cellspacing="0">
                                                <thead class="thead-light">
                                                    <tr>
                                                        <th width="5%">No</th>
                                                        <th width="20%">Isi Modul</th>
                                                        <th width="20%">Keterangan</th>
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
                        </div>
                    </div>

                </div>

            </div>
        
        </div>

    </div>

</div>

<script>
    $(document).ready(function () {

        // 13-04-2020
            // menampilkan data 
            var tabel_modul_projek = $('#tabel_modul_projek').DataTable({
                "processing"        : true,
                "serverSide"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_modul_projek_user",
                    "type"  : "POST"
                },

                "columnDefs"        : [{
                    "targets"   : [0,4],
                    "orderable" : false
                }, {
                    'targets'   : [0,3,4],
                    'className' : 'text-center',
                }]

            })

            // aksi lihat modul projek
            $('#tabel_modul_projek').on('click', '.lihat-modul', function () {

                var id_data_projek = $(this).data('id');
                var id_posisi      = $('#id_posisi').val();
                var jns_modul      = $(this).attr('jns_modul');

                // menampilkan data tim projek
                var tabel_list_modul  = $('.tabel_list_modul').DataTable({
                    "processing"    : true,
                    "ajax"          : {
                        "url"   : "tampil_list_modul",
                        "type"  : "POST",
                        "data"  : {id_posisi:id_posisi, id_data_projek:id_data_projek}
                    },
                    stateSave       : true,
                    "order"         : [[ 0, 'asc']],
                    "paging"        : false,
                    "info"          : false,
                    "searching"     : false,
                    "columnDefs"     : [{
                        "targets"       : [3],
                        "orderable"     : false
                    }, {
                        "targets"       : [3],
                        "className"     : "text-center"
                    }],
                    "bDestroy": true
                });

                // menampilkan data tim projek
                var tabel_list_modul2  = $('.tabel_list_modul2').DataTable({
                    "processing"    : true,
                    "ajax"          : {
                        "url"   : "tampil_list_modul2",
                        "type"  : "POST",
                        "data"  : {id_data_projek:id_data_projek}
                    },
                    stateSave       : true,
                    "order"         : [[ 0, 'asc']],
                    "paging"        : false,
                    "info"          : false,
                    "searching"     : false,
                    "columnDefs"     : [{
                        "targets"       : [0],
                        "orderable"     : false
                    }, {
                        "targets"       : [0],
                        "className"     : "text-center"
                    }],
                    "bDestroy": true
                });

                $.ajax({
                    url         : "ambil_data_detail_projek",
                    type        : "POST",
                    data        : {id_data_projek:id_data_projek},
                    dataType    : "JSON",
                    success     : function (data) {

                        tabel_list_modul.ajax.reload(null, false);
                        tabel_list_modul2.ajax.reload(null, false);

                        if (jns_modul == 'Modul Projek') {
                            $('.f_modul_projek').slideUp('fast');
                            $('.f_detail_modul').slideDown(300);
                        } else {
                            $('.f_modul_projek').slideUp('fast');
                            $('.f_detail_modul2').slideDown(300);
                        }

                        $('#id_data_projek').val(id_data_projek);

                        $('#id_data_projek').val(data.id_data_projek);
                        $('#t_nama_projek').text(': '+data.nama_sub_projek);
                        $('#t_instansi').text(': '+data.instansi);
                        $('#t_keterangan').text(': '+data.keterangan);
                        $('#t_tgl_dimulai').text(': '+data[0].tgl_dimulai);
                        $('#t_tgl_berakhir').text(': '+data[0].tgl_berakhir);

                        $('#t_nama_projek2').text(': '+data.nama_sub_projek);
                        $('#t_instansi2').text(': '+data.instansi);
                        $('#t_keterangan2').text(': '+data.keterangan);
                        $('#t_tgl_dimulai2').text(': '+data[0].tgl_dimulai);
                        $('#t_tgl_berakhir2').text(': '+data[0].tgl_berakhir);

                        $('#aksi').val('Tambah');
                        $('#aksi2').val('Tambah');

                    }
                })

                return false;

            })

            // kembali
            $('#kembali').on('click', function () {
                $('.f_detail_modul').slideUp('fast');
                $('.f_modul_projek').slideDown(300);

                tabel_modul_projek.ajax.reload(null, false);
            })

            // kembali
            $('#kembali2').on('click', function () {
                $('.f_detail_modul2').slideUp('fast');
                $('.f_modul_projek').slideDown(300);

                tabel_modul_projek.ajax.reload(null, false);
            })

            // tampil isi modul
            $('.tabel_list_modul').on('click', '.isi-modul', function () {
                
                var id_modul_projek = $(this).data('id');
                var id_posisi       = $('#id_posisi').val();

                $('.f_isi_modul').slideUp('fast');
                $('.f_isi_modul').slideDown(300);

                // menampilkan data isi modul
                var tabel_isi_modul  = $('.tabel_isi_modul').DataTable({
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
                        "targets"       : [0,3],
                        "orderable"     : false
                    }, {
                        "targets"       : [3],
                        "className"     : "text-center"
                    }],
                    "bDestroy": true
                });

                $.ajax({
                    url         : "ambil_data_nama_modul",
                    type        : "POST",
                    data        : {id_modul_projek:id_modul_projek, id_posisi:id_posisi},
                    dataType    : "JSON",
                    success     : function (data) {

                        tabel_isi_modul.ajax.reload(null, false);

                        $('#isi_modul').val('');
                        $('#keterangan').val(''); 

                        $('#aksi2').val('Tambah');
                        $('#t_nama_modul').text(data.nama_modul);
                        $('#id_modul_projek').val(id_modul_projek);

                        $('html, body').animate({
                            scrollTop: $('.f_isi_modul').offset().top
                        }, 1000);
                        
                    }
                })

                return false;

            })

            // aksi simpan data isi_modul
            $('#simpan_isi_modul').on('click', function () {

                var form_isi_modul      = $('#form_isi_modul').serialize();
                var nama_isi_modul      = $('#isi_modul').val();
                var id_modul_projek     = $('#id_modul_projek').val();

                if (nama_isi_modul == '') {
                    swal({
                        title               : "Peringatan",
                        text                : 'Isi modul harus terisi !',
                        buttonsStyling      : false,
                        type                : 'warning',
                        showConfirmButton   : false,
                        timer               : 1000
                    }); 

                    return false;
                } else {

                    swal({
                        title       : 'Konfirmasi',
                        text        : 'Yakin akan kirim data ?',
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

                            // menampilkan data list isi_modul
                            var tabel_isi_modul  = $('.tabel_isi_modul').DataTable({
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
                                    "targets"       : [0,3],
                                    "orderable"     : false
                                }, {
                                    "targets"       : [3],
                                    "className"     : "text-center"
                                }],
                                "bDestroy": true
                            });

                            $.ajax({
                                url     : "simpan_data_isi_modul_projek",
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
                                data    : form_isi_modul,
                                dataType: "JSON",
                                success : function (data) {
                                    
                                    swal({
                                        title               : "Berhasil",
                                        text                : 'Data berhasil disimpan',
                                        buttonsStyling      : false,
                                        confirmButtonClass  : "btn btn-success",
                                        type                : 'success',
                                        showConfirmButton   : false,
                                        timer               : 1000
                                    });    

                                    $('#id_modul_projek').val(id_modul_projek);

                                    console.log(id_modul_projek);
                    
                                    tabel_isi_modul.ajax.reload(null,false);

                                    $('#isi_modul').val('');  
                                    $('#keterangan').val('');       

                                    $('#batal_isi_modul').attr('hidden', true);

                                    $('.hapus-isi_modul').removeAttr('hidden');
                    
                                    $('#aksi2').val('Tambah');
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

            // aksi batal isi_modul
            $('#batal_isi_modul').on('click', function () {

                $('#batal_isi_modul').attr('hidden', true);

                $('#aksi2').val('Tambah');
                $('.hapus-isi_modul').removeAttr('hidden');
                $('#isi_modul').val('');
                $('#keterangan').val(''); 

            })

            // edit data isi_modul
            $('.tabel_isi_modul').on('click', '.edit-isi_modul', function () {

                $('.hapus-isi_modul').attr('hidden', true);

                var id_isi_modul  = $(this).data('id');

                $.ajax({
                    url         : "ambil_data_isi_modul",
                    type        : "POST",
                    data        : {id_isi_modul:id_isi_modul},
                    beforeSend  : function () {
                        swal({
                            title   : 'Menunggu',
                            html    : 'Memproses Data',
                            onOpen  : () => {
                                swal.showLoading();
                            }
                        })
                    },
                    dataType    : "JSON",
                    success     : function(data)
                    {
                        swal.close();
                        
                        $('#id_isi_modul').val(data.id_isi_modul);
                        $('#isi_modul').val(data.isi_modul);
                        $('#keterangan').val(data.keterangan);

                        $('#aksi2').val('Ubah');

                        $('#batal_isi_modul').removeAttr('hidden');

                        // $('.f_tambah_isi_modul').removeAttr('hidden');

                    },
                    error: function (jqXHR, textStatus, errorThrown)
                    {
                        alert('Error get data from ajax');
                    }
                })

                return false;

                })

                // hapus isi_modul
                $('.tabel_isi_modul').on('click', '.hapus-isi_modul', function () {

                var id_isi_modul    = $(this).data('id');
                var id_modul_projek = $('#id_modul_projek').val();

                swal({
                    title       : 'Konfirmasi',
                    text        : 'Yakin akan hapus data ?',
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

                        // menampilkan data list isi_modul
                        var tabel_isi_modul  = $('.tabel_isi_modul').DataTable({
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
                                "targets"       : [0,3],
                                "orderable"     : false
                            }, {
                                "targets"       : [3],
                                "className"     : "text-center"
                            }],
                            "bDestroy": true
                        });

                        $.ajax({
                            url         : "simpan_data_isi_modul_projek",
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
                            data        : {aksi:'Hapus', id_isi_modul:id_isi_modul},
                            dataType    : "JSON",
                            success     : function (data) {

                                tabel_isi_modul.ajax.reload(null,false);   

                                swal({
                                    title               : 'Hapus isi modul',
                                    text                : 'Data Berhasil Dihapus',
                                    buttonsStyling      : false,
                                    confirmButtonClass  : "btn btn-success",
                                    type                : 'success',
                                    showConfirmButton   : false,
                                    timer               : 1000
                                }); 
                                
                                $('#isi_modul').val('');
                                $('#keterangan').val(''); 

                                $('#aksi2').val('Tambah');

                                $('#batal_isi_modul').attr('hidden', true);

                                $('.hapus-isi_modul').removeAttr('hidden');
                                
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
                                text                : 'Anda membatalkan hapus isi modul',
                                buttonsStyling      : false,
                                confirmButtonClass  : "btn btn-primary",
                                type                : 'error',
                                showConfirmButton   : false,
                                timer               : 1000
                            }); 
                    }
                })

            })

    });
</script>