<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Tambah Data</h4></div>
            <form id="form_posisi" autocomplete="off">
                <input type="hidden" name="id_posisi" id="id_posisi">
                <input type="hidden" name="aksi" id="aksi" value="Tambah">
                <div class="card-body row">
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label for="nama_posisi" class="col-sm-4 col-form-label text-right">Nama Posisi</label>
                            <div class="col-sm-8">
                            <input type="text" class="form-control" style="font-size: 15px;" name="nama_posisi" id="nama_posisi" placeholder="Masukkan Nama Posisi">
                            </div>
                        </div>  
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label for="jenis_modul" class="col-sm-4 col-form-label text-right">Jenis Modul</label>
                            <div class="col-sm-8">
                                <select name="jenis_modul" id="jenis_modul" class="form-control" placeholder="Pilih Jenis Modul">
                                    <option value="Modul Tetap">Modul Tetap</option>
                                    <option value="Modul Projek">Modul Projek</option>
                                </select>
                            </div>
                        </div>  
                    </div>
                </div>
                <div class="card-footer  d-flex justify-content-end">
                    <button type="button" class="btn btn-warning mt-1 mr-3" id="simpan_posisi"><i class="mdi mdi-check mr-1"></i>Simpan</button>
                    <button class="btn btn-danger mt-1" id="batal_posisi" type="button" hidden><i class="mdi mdi-cancel mr-1"></i>Batal</button>
                </div>
            </form>
        </div>
    </div>

    <div class="col-md-12 mt-3">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Master Data Posisi</h4></div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover" id="tabel_master_posisi" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                        <th width="5%">No</th>
                            <th width="20%">Nama Posisi</th>
                            <th width="20%">Jenis Modul</th>
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

            $('#jenis_modul').select2('val', ' ');

            // menampilkan list posisi
                var tabel_list_posisi = $('#tabel_master_posisi').DataTable({
                    "processing"        : true,
                    "serverSide"        : true,
                    "order"             : [],
                    "ajax"              : {
                        "url"   : "tampil_data_posisi",
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

            // aksi simpan data posisi
                $('#simpan_posisi').on('click', function () {

                    var form_posisi = $('#form_posisi').serialize();
                    var nama_posisi = $('#nama_posisi').val();
                    var jenis_modul = $('#jenis_modul').val();

                    if (nama_posisi == '') {
                        swal({
                            title               : "Peringatan",
                            text                : 'Nama posisi harus terisi !',
                            buttonsStyling      : false,
                            type                : 'warning',
                            showConfirmButton   : false,
                            timer               : 1000
                        }); 

                        return false;
                    } else if (jenis_modul == ''){

                        swal({
                            title               : "Peringatan",
                            text                : 'Nama posisi harus terisi !',
                            buttonsStyling      : false,
                            type                : 'warning',
                            showConfirmButton   : false,
                            timer               : 1000
                        }); 

                        return false;

                    }  else {

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
                                    url     : "simpan_data_posisi",
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
                                    data    : form_posisi,
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
                        
                                        tabel_list_posisi.ajax.reload(null,false);        
                                        
                                        $('#form_posisi').trigger("reset");

                                        $('#jenis_modul').select2('val', ' ');

                                        $('#batal_posisi').attr('hidden', true);

                                        $('.hapus-posisi').removeAttr('hidden');
                        
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

            // aksi batal posisi
                $('#batal_posisi').on('click', function () {

                    $('#form_posisi').trigger("reset");
                    $('#jenis_modul').val('').trigger('change');
                    $('#batal_posisi').attr('hidden', true);

                    $('#aksi').val('Tambah');
                    $('.hapus-posisi').removeAttr('hidden');
                })

            // edit data posisi
                $('#tabel_master_posisi').on('click', '.edit-posisi', function () {

                    // $('#nama_posisi').focus();
                    // $(window).scrollTop('107.19999694824219 px');

                    $('.hapus-posisi').attr('hidden', true);
                    
                    var id_posisi  = $(this).data('id');

                    $.ajax({
                        url         : "ambil_data_posisi/"+id_posisi,
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
                            
                            $('#id_posisi').val(data.id_posisi);
                            $('#nama_posisi').val(data.nama_posisi);
                            $('#jenis_modul').val(data.jenis_modul).trigger('change');

                            $('#aksi').val('Ubah');
                            $('#batal_posisi').removeAttr('hidden');

                            $('#nama_posisi').attr('autofocus', true);

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

            // hapus posisi
                $('#tabel_master_posisi').on('click', '.hapus-posisi', function () {
                    
                    var id_posisi   = $(this).data('id');
                    var posisi      = $(this).attr('posisi');

                    swal({
                        title       : 'Konfirmasi',
                        text        : 'Yakin akan hapus posisi '+posisi+"?",
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
                                url         : "simpan_data_posisi",
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
                                data        : {aksi:'Hapus', id_posisi:id_posisi},
                                dataType    : "JSON",
                                success     : function (data) {

                                        tabel_list_posisi.ajax.reload(null,false);   

                                        swal({
                                            title               : 'Hapus posisi',
                                            text                : 'Data Berhasil Dihapus',
                                            buttonsStyling      : false,
                                            confirmButtonClass  : "btn btn-success",
                                            type                : 'success',
                                            showConfirmButton   : false,
                                            timer               : 1000
                                        }); 

                                            
                                        
                                        $('#form_posisi').trigger("reset");

                                        $('#jenis_modul').select2('val', ' ');

                                        $('#aksi').val('Tambah');

                                        $('#batal_posisi').attr('hidden', true);

                                        $('.hapus-posisi').removeAttr('hidden');
                                    
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
                                    text                : 'Anda membatalkan hapus posisi',
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

