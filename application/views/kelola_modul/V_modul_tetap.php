<div class="row f_modul_tetap">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
                <h4 id="judul" class="font-weight-bold">Kelola Modul Tetap</h4>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover" id="tabel_modul_tetap" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="20%">Nama Posisi</th>
                            <th width="7%">Jumlah Modul</th>
                            <th width="5%">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>

        <!-- <input id="ex8" data-slider-id='ex1Slider' type="text" data-slider-min="10" data-slider-max="20" data-slider-step="1" data-slider-value="14"/> -->

    </div>
</div>

<div class="row f_detail_modul" style="display: none;">

    <div class="col-md-9">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" style="color: #2461AA">Modul Tetap</li>
                <li class="breadcrumb-item active" aria-current="page">Detail Modul</li>
            </ol>
        </nav>
    </div>

    <div class="col-md-3">
        <button class="btn btn-warning float-right" id="kembali" type="button"><i class="mdi mdi-arrow-left-thick"></i>Kembali</button>
    </div>
    
    <div class="col-md-12 mb-3 f_tambah_modul">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Tambah Data</h4></div>
            <form id="form_modul" autocomplete="off">
                <input type="hidden" name="aksi" id="aksi" value="Tambah">
                <input type="hidden" name="id_posisi" id="id_posisi">
                <input type="hidden" name="id_modul_tetap" id="id_modul_tetap">
                <input type="hidden" name="jml_persentase" id="jml_persentase">
                <div class="card-body row m-0">
                    <div class="col-md-4">
                        <div class="form-group ">
                            <label for="nama_modul" class="col-form-label text-right">Nama Posisi</label>
                            <div class="">
                                <span style="font-size: 14px; font-weight: bold;" id="t_nama_posisi"></span>
                            </div>
                        </div>  
                    </div>
                    <div class="col-md-4">
                        <div class="form-group ">
                            <label for="nama_modul" class="col-form-label text-right">Nama Modul</label>
                            <div class="">
                                <input type="text" style="font-size: 14px;"  class="form-control" id="nama_modul" name="nama_modul" placeholder="Masukkan Nama Modul">
                            </div>
                        </div>  
                    </div>
                    <div class="col-md-4">
                        <div class="form-group ">
                            <label for="persentase" class="col-form-label text-right">Persentase</label>
                            <div class="">
                                
                                <div class="input-group">
                                <input type="text" style="font-size: 14px;"  class="form-control" id="persentase" name="persentase" placeholder="Masukkan Persentase">
                                    <div class="input-group-append bg-light border-light">
                                    <span class="input-group-text bg-transparent text-dark" style="font-size: 15px;">
                                        %
                                    </span>
                                    </div>
                                </div>
                            </div>

                        </div>  
                    </div>
                </div>
                <div class="card-footer d-flex justify-content-end">
                    <button type="button" class="btn btn-warning mt-1 mr-3" id="simpan_modul"><i class="mdi mdi-check mr-1"></i>Simpan</button>
                    <button class="btn btn-danger mt-1" id="batal_modul" type="button" hidden><i class="mdi mdi-cancel mr-1"></i>Batal</button>
                </div>
            </form>
        </div>
    </div>

    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">List Modul Tetap</h4></div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover tabel_list_modul_tetap" width="100%" cellspacing="0">
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
</div>

<script>

    $(document).ready(function() {

        // With JQuery
        // $("#ex8").slider({
        //     tooltip: 'always'
        // });

        $('#persentase').numeric({
            negative: false
        })
        

        // 06-04-2020

            // menampilkan data projek
            var tabel_modul_tetap = $('#tabel_modul_tetap').DataTable({
                "processing"        : true,
                "serverSide"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_modul_tetap",
                    "type"  : "POST"
                },

                "columnDefs"        : [{
                    "targets"   : [0,3],
                    "orderable" : false
                }, {
                    'targets'   : [0,2,3],
                    'className' : 'text-center',
                }]

            })

            // aksi lihat modul tetap
            $('#tabel_modul_tetap').on('click', '.lihat-modul', function () {

                var id_posisi = $(this).data('id');

                // menampilkan data tim projek
                var tabel_list_modul_tetap  = $('.tabel_list_modul_tetap').DataTable({
                    "processing"    : true,
                    "ajax"          : "tampil_list_modul_tetap/"+id_posisi,
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

                $.ajax({
                    url         : "ambil_data_list_modul_tetap",
                    type        : "POST",
                    data        : {id_posisi:id_posisi},
                    dataType    : "JSON",
                    success     : function (data) {

                        tabel_list_modul_tetap.ajax.reload(null, false);

                        $('.f_modul_tetap').slideUp('fast');
                        $('.f_detail_modul').slideDown(300);

                        $('#nama_modul').val('');
                        $('#persentase').val('');

                        $('#id_posisi').val(data.id_posisi);
                        // $('#id_modul_tetap').val(data.id_modul_tetap);
                        $('#jml_persentase').val(data.jml_persentase);
                        $('#t_nama_posisi').text(data.nama_posisi);

                        if (data.jml_persentase == 0) {
                            $('.f_tambah_modul').attr('hidden', true);
                        } else {
                            $('.f_tambah_modul').removeAttr('hidden');
                        }

                        
                    }
                })

                return false;
                
            })

            // kembali
            $('#kembali').on('click', function () {
                $('.f_detail_modul').slideUp('fast');
                $('.f_modul_tetap').slideDown(300);

                tabel_modul_tetap.ajax.reload(null, false);
            })

            // aksi input max persentase
            $('#persentase').on('keyup', function () {
    
                var value           = $(this).val();
                var jml_persentase  = $('#jml_persentase').val();
                
                if ((value !== '') && (value.indexOf('.') === -1)) {
                    
                    $(this).val(Math.max(Math.min(value, jml_persentase), -jml_persentase));
                }

            });

            // aksi simpan data modul
            $('#simpan_modul').on('click', function () {

                var form_modul = $('#form_modul').serialize();
                var nama_modul = $('#nama_modul').val();
                var persentase = $('#persentase').val();
                var id_posisi  = $('#id_posisi').val();

                console.log(form_modul);

                if (nama_modul == '') {
                    swal({
                        title               : "Peringatan",
                        text                : 'Nama modul harus terisi !',
                        buttonsStyling      : false,
                        type                : 'warning',
                        showConfirmButton   : false,
                        timer               : 1000
                    }); 

                    return false;
                } else if (persentase == '' || persentase == 'NaN') {
                    swal({
                        title               : "Peringatan",
                        text                : 'Persentase harus terisi dan Benar!',
                        buttonsStyling      : false,
                        type                : 'warning',
                        showConfirmButton   : false,
                        timer               : 1000
                    }); 

                    var persentase = $('#persentase').val('');

                    return false;
                } else {

                    swal({
                        title       : 'Konfirmasi',
                        text        : 'Yakin akan kirim data',
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

                            // menampilkan data tim projek
                            var tabel_list_modul_tetap  = $('.tabel_list_modul_tetap').DataTable({
                                "processing"    : true,
                                "ajax"          : "tampil_list_modul_tetap/"+id_posisi,
                                stateSave       : true,
                                "order"         : [[ 1, 'asc']],
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

                            $.ajax({
                                url     : "simpan_data_modul_tetap",
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
                                data    : form_modul,
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
                    
                                    tabel_list_modul_tetap.ajax.reload(null,false);        
                                    
                                    $('#form_modul').trigger("reset");

                                    $('#batal_modul').attr('hidden', true);

                                    $('.hapus-modul').removeAttr('hidden');
                    
                                    $('#aksi').val('Tambah');

                                    $('#jml_persentase').val(data.jml_persentase);

                                    if (data.jml_persentase == 0) {
                                        $('.f_tambah_modul').attr('hidden', true);
                                    } else {
                                        $('.f_tambah_modul').removeAttr('hidden');
                                    }
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

            // aksi batal modul
            $('#batal_modul').on('click', function () {

                var id_posisi = $('#id_posisi').val();

                $.ajax({
                    url         : "ambil_jml_persentase/"+id_posisi,
                    type        : "GET",
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

                        $('#jml_persentase').val(data.jml_persentase);
                        
                        $('#form_modul').trigger("reset");
                        $('#batal_modul').attr('hidden', true);

                        $('#aksi').val('Tambah');
                        $('.hapus-modul').removeAttr('hidden');

                        if (data.jml_persentase == 0) {
                            $('.f_tambah_modul').attr('hidden', true);
                        } else {
                            $('.f_tambah_modul').removeAttr('hidden');
                        }

                    },
                    error: function (jqXHR, textStatus, errorThrown)
                    {
                        alert('Error get data from ajax');
                    }
                })

                return false;

            })

            // edit data modul
            $('.tabel_list_modul_tetap').on('click', '.edit-modul', function () {

                $('.hapus-modul').attr('hidden', true);

                var id_modul_tetap  = $(this).data('id');

                $.ajax({
                    url         : "ambil_data_modul_tetap/"+id_modul_tetap,
                    type        : "GET",
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
                        
                        $('#id_modul_tetap').val(data.id_modul_tetap);
                        $('#nama_modul').val(data.nama_modul);
                        $('#persentase').val(data.persentase);

                        $('#jml_persentase').val(data.jml_persentase);

                        $('#aksi').val('Ubah');

                        $('#batal_modul').removeAttr('hidden');

                        $('.f_tambah_modul').removeAttr('hidden');

                        $('html, body').animate({
                            scrollTop: $('body').offset().top
                        }, 1000);

                    },
                    error: function (jqXHR, textStatus, errorThrown)
                    {
                        alert('Error get data from ajax');
                    }
                })

                return false;

            })

            // hapus modul
            $('.tabel_list_modul_tetap').on('click', '.hapus-modul', function () {

                var id_modul_tetap  = $(this).data('id');
                var modul           = $(this).attr('modul');
                var id_posisi       = $('#id_posisi').val();

                swal({
                    title       : 'Konfirmasi',
                    text        : 'Yakin akan hapus modul '+modul+'?',
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

                        // menampilkan data tim projek
                        var tabel_list_modul_tetap  = $('.tabel_list_modul_tetap').DataTable({
                                "processing"    : true,
                                "ajax"          : "tampil_list_modul_tetap/"+id_posisi,
                                stateSave       : true,
                                "order"         : [[ 1, 'asc']],
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

                        $.ajax({
                            url         : "simpan_data_modul_tetap",
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
                            data        : {aksi:'Hapus', id_modul_tetap:id_modul_tetap},
                            dataType    : "JSON",
                            success     : function (data) {

                                    tabel_list_modul_tetap.ajax.reload(null,false);   

                                    swal({
                                        title               : 'Hapus modul',
                                        text                : 'Data Berhasil Dihapus',
                                        buttonsStyling      : false,
                                        confirmButtonClass  : "btn btn-success",
                                        type                : 'success',
                                        showConfirmButton   : false,
                                        timer               : 1000
                                    }); 
                                    
                                    $('#form_modul').trigger("reset");

                                    $('#aksi').val('Tambah');

                                    $('#batal_modul').attr('hidden', true);

                                    $('.hapus-modul').removeAttr('hidden');

                                    $('#jml_persentase').val(data.jml_persentase);

                                    if (data.jml_persentase == 0) {
                                        $('.f_tambah_modul').attr('hidden', true);
                                    } else {
                                        $('.f_tambah_modul').removeAttr('hidden');
                                    }
                                
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
                                text                : 'Anda membatalkan hapus modul',
                                buttonsStyling      : false,
                                confirmButtonClass  : "btn btn-primary",
                                type                : 'error',
                                showConfirmButton   : false,
                                timer               : 1000
                            }); 
                    }
                })

            })

    })

</script>