<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul"  class="font-weight-bold">Tambah Data</h4></div>
            <form id="form_jabatan" autocomplete="off">
                <input type="hidden" name="id_jabatan" id="id_jabatan">
                <input type="hidden" name="aksi" id="aksi" value="Tambah">
                <div class="card-body row">
                    <div class="col-md-6 offset-md-2">
                        <div class="form-group row">
                            <label for="nama_jabatan" class="col-sm-4 col-form-label text-right">Nama Jabatan</label>
                            <div class="col-sm-8">
                            <input type="text" class="form-control" style="font-size: 14px;" name="nama_jabatan" id="nama_jabatan" placeholder="Masukkan Nama Jabatan">
                            </div>
                        </div>  
                    </div>
                    <div class="col-md-3">
                        <button type="button" class="btn btn-warning mt-1 mr-3" id="simpan_jabatan"><i class="mdi mdi-check mr-1"></i>Simpan</button>
                        <button class="btn btn-danger mt-1" id="batal_jabatan" type="button" hidden><i class="mdi mdi-cancel mr-1"></i>Batal</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="col-md-12 mt-3">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Master Data Jabatan</h4></div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover" id="tabel_master_jabatan" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="20%">Nama Jabatan</th>
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

        // 05-04-2020

            // menampilkan list jabatan
                var tabel_list_jabatan = $('#tabel_master_jabatan').DataTable({
                    "processing"        : true,
                    "serverSide"        : true,
                    "order"             : [],
                    "ajax"              : {
                        "url"   : "tampil_data_jabatan",
                        "type"  : "POST"
                    },

                        "columnDefs"        : [{
                            "targets"   : [0,2],
                            "orderable" : false
                        }, {
                            'targets'   : [0,2],
                            'className' : 'text-center',
                        }]

                })

            // aksi simpan data jabatan
                $('#simpan_jabatan').on('click', function () {

                    var form_jabatan = $('#form_jabatan').serialize();
                    var nama_jabatan = $('#nama_jabatan').val();

                    if (nama_jabatan == '') {
                        swal({
                            title               : "Peringatan",
                            text                : 'Nama jabatan harus terisi !',
                            buttonsStyling      : false,
                            type                : 'warning',
                            showConfirmButton   : false,
                            timer               : 1000
                        }); 

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
                                $.ajax({
                                    url     : "simpan_data_jabatan",
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
                                    data    : form_jabatan,
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
                        
                                        tabel_list_jabatan.ajax.reload(null,false);        
                                        
                                        $('#form_jabatan').trigger("reset");

                                        $('#batal_jabatan').attr('hidden', true);

                                        $('.hapus-jabatan').removeAttr('hidden');
                        
                                        $('#aksi').val('Tambah');
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

            // aksi batal jabatan
                $('#batal_jabatan').on('click', function () {

                    $('#form_jabatan').trigger("reset");
                    $('#batal_jabatan').attr('hidden', true);

                    $('#aksi').val('Tambah');
                    $('.hapus-jabatan').removeAttr('hidden');
                })

            // edit data jabatan
                $('#tabel_master_jabatan').on('click', '.edit-jabatan', function () {

                    // $('#nama_jabatan').focus();
                    // $(window).scrollTop('107.19999694824219 px');

                    $('.hapus-jabatan').attr('hidden', true);
                    
                    var id_jabatan  = $(this).data('id');

                    $.ajax({
                        url         : "ambil_data_jabatan/"+id_jabatan,
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
                            
                            $('#id_jabatan').val(data.id_jabatan);
                            $('#nama_jabatan').val(data.nama_jabatan);

                            $('#aksi').val('Ubah');
                            $('#batal_jabatan').removeAttr('hidden');

                            $('#nama_jabatan').attr('autofocus', true);

                            $('html, body').animate({
                                scrollTop: $('body').offset().top
                            }, 1000);

                            return false;
                
                        },
                        error: function (jqXHR, textStatus, errorThrown)
                        {
                            alert('Error get data from ajax');
                        }
                    })

                    return false;

                })

            // hapus jabatan
                $('#tabel_master_jabatan').on('click', '.hapus-jabatan', function () {
                    
                    var id_jabatan  = $(this).data('id');
                    var nama        = $(this).attr('jabatan');

                    swal({
                        title       : 'Konfirmasi',
                        text        : 'Yakin akan hapus jabatan '+nama+'?',
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
                                url         : "simpan_data_jabatan",
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
                                data        : {aksi:'Hapus', id_jabatan:id_jabatan},
                                dataType    : "JSON",
                                success     : function (data) {

                                        tabel_list_jabatan.ajax.reload(null,false);   

                                        swal({
                                            title               : 'Hapus jabatan',
                                            text                : 'Data Berhasil Dihapus',
                                            buttonsStyling      : false,
                                            confirmButtonClass  : "btn btn-success",
                                            type                : 'success',
                                            showConfirmButton   : false,
                                            timer               : 1000
                                        }); 

                                            
                                        
                                        $('#form_jabatan').trigger("reset");

                                        $('#aksi').val('Tambah');

                                        $('#batal_jabatan').attr('hidden', true);

                                        $('.hapus-jabatan').removeAttr('hidden');
                                    
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
                                    text                : 'Anda membatalkan hapus jabatan',
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

