<style>
    .detail_pro td {
        border-top: none !important;
    }
</style>
<div class="row f_tim_data_projek">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Tim Data Projek</h4></div>
            <div class="card-body">
                <table class="table table-bordered table-hover" id="tabel_tim_data_projek" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="">No</th>
                            <th width="">Nama Projek</th>
                            <th width="">Tanggal Dimulai</th>
                            <th width="">Tanggal Berakhir</th>
                            <th width="">Status</th>
                            <th width="">Jumlah Tim</th>
                            <th width="">Nama PIC</th>
                            <th width="">Tim</th>
                        </tr>
                    </thead>
                    <tbody>
                            
                    </tbody>
                </table> 
            </div>
        </div>
    </div>
</div>

<div class="row f_detail_projek" style="display: none;">

    <div class="col-md-9">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" style="color: #2461AA">Tim Projek</li>
                <li class="breadcrumb-item active" aria-current="page">Detail Tim Projek</li>
            </ol>
        </nav>
    </div>

    <div class="col-md-3">
        <button class="btn btn-warning mb-3 float-right" id="kembali" type="button"><i class="mdi mdi-arrow-left-thick"></i>Kembali</button>
    </div>
    
    <div class="col-md-12 mt-1">
        
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Detail Projek</h4></div>
            <div class="card-body table-responsive p-2">
            <table class="table table-light table-hover detail_pro">
                <tbody>
                    <tr>
                        <td width="15%" class="font-weight-bold">Nama Projek</td>
                        <td width="40%" id="t_nama_projek">: </td>
                        <td width="15%" class="font-weight-bold">Tanggal Dimulai</td>
                        <td id="t_tgl_dimulai">: </td>
                    </tr>
                    <tr>
                        <td width="15%" class="font-weight-bold">Instansi</td>
                        <td width="40%" id="t_instansi">: </td>
                        <td width="15%" class="font-weight-bold">Tanggal Berakhir</td>
                        <td id="t_tgl_berakhir">: </td>
                    </tr>
                    <tr>
                        <td width="15%" class="font-weight-bold">Keterangan</td>
                        <td width="40%" id="t_keterangan">: </td>
                        <td width="15%" class="font-weight-bold"></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            </div>
        </div>
    </div>
    <div class="col-md-12 mt-3 tambah_tim">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul"  class="font-weight-bold">Tambah Data</h4></div>
            <form id="form_karyawan_tim" autocomplete="off">
                <input type="hidden" name="aksi" id="aksi" value="Tambah">
                <input type="hidden" name="id_data_projek" id="id_data_projek">
                <div class="card-body row">
                    <div class="col-md-5">
                        <div class="form-group row">
                            <label for="nama_posisi" class="col-sm-4 col-form-label text-right">Nama Pegawai</label>
                            <div class="col-sm-8">
                                <select name="id_pegawai" id="id_pegawai" data-allow-clear="1" placeholder="Pilih Nama Pegawai">
                                    <?php foreach ($pegawai as $k): ?>
                                        <option value="<?= $k['id_pegawai'] ?>"><?= $k['nama_pegawai'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>  
                    </div>
                    <div class="col-md-5">
                        <div class="form-group row">
                            <label for="status_pic" class="col-sm-4 col-form-label text-right">Status PIC</label>
                            <div class="col-sm-8">
                                <select name="status_pic" id="status_pic" data-allow-clear="1" placeholder="Pilih Status PIC">
                                    <option value="0">Tidak</option>
                                    <option value="1">Ya</option>
                                </select>
                            </div>
                        </div>  
                    </div>
                    <div class="col-md-2 text-left">
                        <button type="button" class="btn btn-warning mt-1 mr-3" id="simpan_karyawan_tim">Tambah</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="col-md-12 mt-3">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Tim Projek</h4></div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover tabel_tim_projek" id="tabel_tim_projek" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="20%">Nama Karyawan</th>
                            <th width="20%">Posisi</th>
                            <th width="5%">Status PIC</th>
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

        // 05-04-2020

            // menampilkan list dt_projek
                var tabel_tim_data_projek = $('#tabel_tim_data_projek').DataTable({
                    "processing"        : true,
                    "serverSide"        : true,
                    "order"             : [],
                    "ajax"              : {
                        "url"   : "tampil_tim_induk_projek",
                        "type"  : "POST"
                    },

                    "columnDefs"        : [{
                        "targets"   : [0,7],
                        "orderable" : false
                    }, {
                        'targets'   : [0,2,3,4,5,7],
                        'className' : 'text-center',
                    }],

                    "sScrollX": '100%'

                })

            // menampilkan detail data projek
            $('#tabel_tim_data_projek').on('click', '.lihat-projek', function () {

                var id_data_projek = $(this).data('id');

                console.log(id_data_projek)

                // menampilkan data tim projek
                var tabel_tim_projek  = $('.tabel_tim_projek').DataTable({
                    "processing"    : true,
                    "ajax"          : "tampil_tim_projek/"+id_data_projek,
                    stateSave       : true,
                    "order"         : [[ 0, 'asc' ]],
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
                    url         : "ambil_data_projek",
                    type        : "POST",
                    data        : {id_data_projek:id_data_projek},
                    dataType    : "JSON",
                    success     : function (data) {
                        swal.close();

                        // console.log(data[1].nama_jabatan);

                        tabel_tim_projek.ajax.reload(null, false);

                        $('.f_tim_data_projek').slideUp('fast');
                        $('.f_detail_projek').slideDown(300);

                        $('#id_data_projek').val(data.id_data_projek);
                        $('#t_nama_projek').text(': '+data.nama_sub_projek);
                        $('#t_instansi').text(': '+data.instansi);
                        $('#t_keterangan').text(': '+data.keterangan);
                        $('#t_tgl_dimulai').text(': '+data[0].tgl_dimulai);
                        $('#t_tgl_berakhir').text(': '+data[0].tgl_berakhir);

                        // list pegawai
                        $('#id_pegawai').html(data[1].list_pegawai);

                        if (data[1].nama_jabatan == 'Manager') {

                            if (data[1].jml_pegawai > 0) {
                                $('.tambah_tim').removeAttr('hidden');
                            } else {
                                $('.tambah_tim').attr('hidden', true);
                            }

                        } else {
                            $('.tambah_tim').attr('hidden', true);
                        }
                        
                    }
                })

                return false;

            })

        // 06-04-2020

            // aksi simpan tim projek
            $('#simpan_karyawan_tim').on('click', function () {
                
                var form            = $('#form_karyawan_tim').serialize();
                var id_pegawai      = $('#id_pegawai').val();
                var status_pic      = $('#status_pic').val();
                var id_data_projek  = $('#id_data_projek').val();

                // menampilkan data tim projek
                var tabel_tim_projek  = $('.tabel_tim_projek').DataTable({
                    "processing"    : true,
                    "ajax"          : "tampil_tim_projek/"+id_data_projek,
                    stateSave       : true,
                    "order"         : [[ 1, 'asc' ]],
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

                if (id_pegawai == null) {
                    swal({
                        title               : 'Peringatan',
                        text                : 'Pegawai harus terisi',
                        buttonsStyling      : false,
                        confirmButtonClass  : "btn btn-info",
                        type                : 'error',
                        showConfirmButton   : false,
                        timer               : 1000
                    }); 

                    return false;
                } else if (status_pic == null) {
                    swal({
                        title               : 'Peringatan',
                        text                : 'Status PIC terisi',
                        buttonsStyling      : false,
                        confirmButtonClass  : "btn btn-info",
                        type                : 'error',
                        showConfirmButton   : false,
                        timer               : 1000
                    }); 

                    return false;
                } else {

                    swal({
                        title       : 'Konfirmasi',
                        text        : 'Yakin akan tambah tim projek ?',
                        type        : 'warning',

                        buttonsStyling      : false,
                        confirmButtonClass  : "btn btn-primary",
                        cancelButtonClass   : "btn btn-danger mr-3",

                        showCancelButton    : true,
                        confirmButtonText   : 'Kirim Data',
                        confirmButtonColor  : '#d33',
                        cancelButtonColor   : '#3085d6',
                        cancelButtonText    : 'Batal',
                        reverseButtons      : true
                    }).then((result) => {
                        if (result.value) {
                            $.ajax({
                                url         : "simpan_data_projek",
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
                                data        : form,
                                dataType    : "JSON",
                                success     : function (data) {

                                    tabel_tim_projek.ajax.reload(null, false);

                                    swal({
                                        title               : 'Berhasil',
                                        text                : 'Tim Projek Berhasil Ditambahkan',
                                        buttonsStyling      : false,
                                        confirmButtonClass  : "btn btn-success",
                                        type                : 'success',
                                        showConfirmButton   : false,
                                        timer               : 1000
                                    }); 

                                    // list pegawai
                                    $('#id_pegawai').html(data.list_pegawai);

                                    if (data.jml_pegawai > 0) {
                                        $('.tambah_tim').removeAttr('hidden');
                                    } else {
                                        $('.tambah_tim').attr('hidden', true);
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
                                text                : 'Anda Membatalkan Menambahkan Tim Projek',
                                buttonsStyling      : false,
                                confirmButtonClass  : "btn btn-info",
                                type                : 'error',
                                showConfirmButton   : false,
                                timer               : 1000
                            }); 
                        }
                    })

                }

            })

            // kembali
            $('#kembali').on('click', function () {
                
                $('.f_detail_projek').slideUp('fast');
                $('.f_tim_data_projek').slideDown(300);

                tabel_tim_data_projek.ajax.reload(null, false);

            })

            // hapus pegawai tim projek
            $('.tabel_tim_projek').on('click', '.hapus-data', function () {

                var id_tim_projek   = $(this).data('id');
                var id_data_projek  = $('#id_data_projek').val();
                
                swal({
                        title       : 'Konfirmasi',
                        text        : 'Yakin akan hapus dari tim projek ?',
                        type        : 'warning',

                        buttonsStyling      : false,
                        confirmButtonClass  : "btn btn-primary",
                        cancelButtonClass   : "btn btn-danger mr-3",

                        showCancelButton    : true,
                        confirmButtonText   : 'Kirim Data',
                        confirmButtonColor  : '#d33',
                        cancelButtonColor   : '#3085d6',
                        cancelButtonText    : 'Batal',
                        reverseButtons      : true
                    }).then((result) => {
                        if (result.value) {
                            $.ajax({
                                url         : "hapus_tim_projek",
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
                                data        : {id_tim_projek:id_tim_projek, id_data_projek:id_data_projek},
                                dataType    : "JSON",
                                success     : function (data) {

                                    // menampilkan data tim projek
                                    var tabel_tim_projek  = $('.tabel_tim_projek').DataTable({
                                        "processing"    : true,
                                        "ajax"          : "tampil_tim_projek/"+id_data_projek,
                                        stateSave       : true,
                                        "order"         : [[ 1, 'asc' ]],
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

                                    tabel_tim_projek.ajax.reload(null, false);

                                    swal({
                                        title               : 'Berhasil',
                                        text                : 'Pegawai Tim Projek Berhasil Dihapus',
                                        buttonsStyling      : false,
                                        confirmButtonClass  : "btn btn-success",
                                        type                : 'success',
                                        showConfirmButton   : false,
                                        timer               : 1000
                                    }); 

                                    // list pegawai
                                    $('#id_pegawai').html(data.list_pegawai);

                                    if (data.jml_pegawai > 0) {
                                        $('.tambah_tim').removeAttr('hidden');
                                    } else {
                                        $('.tambah_tim').attr('hidden', true);
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
                                text                : 'Anda Membatalkan Hapus Tim Projek',
                                buttonsStyling      : false,
                                confirmButtonClass  : "btn btn-info",
                                type                : 'error',
                                showConfirmButton   : false,
                                timer               : 1000
                            }); 
                        }
                    })

            })

            // ubah status PIC
            $('.tabel_tim_projek').on('click', '.ubah-pic', function () {

                var status          = $(this).attr('status_pic');
                var id_tim_projek   = $(this).data('id');
                var id_data_projek  = $('#id_data_projek').val();
                
                $.ajax({
                    url         : "ubah_pic_tim_projek",
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
                    data        : {id_tim_projek:id_tim_projek, status:status, id_data_projek:id_data_projek},
                    dataType    : "JSON",
                    success     : function (data) {
                        swal.close();

                        // menampilkan data tim projek
                        var tabel_tim_projek  = $('.tabel_tim_projek').DataTable({
                            "processing"    : true,
                            "ajax"          : "tampil_tim_projek/"+id_data_projek,
                            stateSave       : true,
                            "order"         : [[ 1, 'asc' ]],
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

                        tabel_tim_projek.ajax.reload(null, false);

                    },
                    error       : function(xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        alert(err.Message);
                    }

                })

            })

    })

</script>