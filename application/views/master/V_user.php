<style>
    .field-icon {
        float: right;
        margin-left: -40px;
        margin-right: 10px;
        margin-top: 5px;
        position: relative;
        z-index: 2;
    }
</style>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Tambah Data</h4></div>
            <form id="form_user" autocomplete="off">
                <input type="hidden" name="id_user" id="id_user">
                <input type="hidden" name="aksi" id="aksi" value="Tambah">
                <div class="card-body row">
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label for="id_pegawai" class="col-sm-4 col-form-label text-left">Nama Pegawai</label>
                            <div class="col-sm-8 t_peg_1">
                                <select name="id_pegawai" id="id_pegawai" data-allow-clear="1" placeholder="Pilih Nama Pegawai">
                                    <option value="">Pilih Nama Pegawai</option>
                                    <?php foreach ($pegawai as $k): ?>
                                        <option value="<?= $k['id_pegawai'] ?>"><?= $k['nama_pegawai'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                                
                            </div>
                            <div class="col-sm-8 t_peg_2" hidden>
                                <input type="text" class="form-control" id="nama_pegawai" name="nama_pegawai" readonly>
                                <input type="text" class="form-control" id="id_pegawai_t" name="id_pegawai_t" readonly hidden>
                            </div>
                        </div>  
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label for="password" class="col-sm-4 col-form-label text-left">Password</label>
                            <div class="col-sm-8">
                            <input type="password" class="form-control" style="font-size: 14px;" name="password" id="password" placeholder="Masukkan Password">
                            <input type="hidden" name="password_lama" id="password_lama">
                            <span toggle="#password" class="mdi mdi-eye field-icon toggle-password"></span>
                            <mark class="mark_pass">Harap Catat Pasword Anda!!</mark>
                            </div>
                        </div>  
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label for="username" class="col-sm-4 col-form-label text-left">Username</label>
                            <div class="col-sm-8">
                            <input type="text" class="form-control" style="font-size: 14px;" name="username" id="username" placeholder="Masukkan Username">
                            </div>
                        </div>  
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label for="status" class="col-sm-4 col-form-label text-left">Status Aktif</label>
                            <div class="col-sm-8">
                                <select name="status" id="status" data-allow-clear="1" placeholder="Pilih Status">
                                    <option value="1">Ya</option>
                                    <option value="0">Tidak</option>
                                </select>
                            </div>
                        </div>  
                    </div>
                </div>
                <div class="card-footer d-flex justify-content-end">
                    <button type="button" class="btn btn-warning mt-1 mr-3" id="simpan_user" disabled><i class="mdi mdi-check mr-1"></i>Simpan</button>
                    <button class="btn btn-danger mt-1" id="batal_user" type="button" hidden><i class="mdi mdi-cancel mr-1"></i>Batal</button>
                </div>
            </form>
        </div>
    </div>

    <div class="col-md-12 mt-3">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Master Data user</h4></div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover" id="tabel_master_user" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="20%">Nama Pegawai</th>
                            <th width="20%">Username</th>
                            <th width="7%">Status</th>
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
            $('#id_pegawai').select2("val", ' ');

            // muncul password
                $(".toggle-password").click(function() {

                    $(this).toggleClass("mdi-eye mdi-eye-off");

                    var input = $($(this).attr("toggle"));

                    if (input.attr("type") == "password") {
                        input.attr("type", "text");
                    } else {
                        input.attr("type", "password");
                    }
                });

            // menampilkan list user
                var tabel_master_user = $('#tabel_master_user').DataTable({
                    "processing"        : true,
                    "serverSide"        : true,
                    "order"             : [],
                    "ajax"              : {
                        "url"   : "tampil_data_user",
                        "type"  : "POST"
                    },

                        "columnDefs"        : [{
                            "targets"   : [0,4],
                            "orderable" : false
                        }, {
                            'targets'   : [0,4],
                            'className' : 'text-center',
                        }]

                })

            // aksi simpan data user
                $('#simpan_user').on('click', function () {

                    var form_user   = $('#form_user').serialize();
                    var username    = $('#username').val();
                    var id_pegawai  = $('#id_pegawai').val();

                    if (id_pegawai == null) {
                        swal({
                            title               : "Peringatan",
                            text                : 'Pegawai harus terisi !',
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
                                    url     : "simpan_data_user",
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
                                    data    : form_user,
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
                        
                                        tabel_master_user.ajax.reload(null,false);    

                                        $('.t_peg_1').attr('hidden', false);
                                        $('.t_peg_2').attr('hidden', true);    
                                        
                                        $('#form_user').trigger("reset");

                                        $('#id_pegawai').select2("val", ' ');

                                        $('#batal_user').attr('hidden', true);

                                        $('.hapus-user').removeAttr('hidden');
                        
                                        $('#aksi').val('Tambah');

                                        $('#id_pegawai').html(data.list_pegawai);

                                        $('#simpan_user').attr('disabled', true);

                                        $('.mark_pass').text('Harap Catat Pasword Anda !!');
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

            // aksi batal user
                $('#batal_user').on('click', function () {

                    $('#form_user').trigger("reset");

                    $('#id_pegawai').select2("val", ' ');
                    $('#batal_user').attr('hidden', true);

                    $('#aksi').val('Tambah');
                    $('.hapus-user').removeAttr('hidden');

                    $('.t_peg_1').attr('hidden', false);
                    $('.t_peg_2').attr('hidden', true); 

                    $('.mark_pass').text('Harap Catat Pasword Anda !!');

                    $('#simpan_user').attr('disabled', true);
                })

            // edit data user
                $('#tabel_master_user').on('click', '.edit-user', function () {

                    $('.hapus-user').attr('hidden', true);
                    
                    var id_user  = $(this).data('id');

                    $.ajax({
                        url         : "ambil_data_user/"+id_user,
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
                            
                            $('#id_user').val(data.id_user);
                            $('#username').val(data.username);
                            $('#password').val('');
                            $('#password_lama').val(data.password);
                            $('#id_pegawai').val(data.id_pegawai).trigger('change');
                            $('#status').select2('val', data.status);

                            $('#aksi').val('Ubah');
                            $('#batal_user').removeAttr('hidden');

                            $('.t_peg_1').attr('hidden', true);
                            $('.t_peg_2').attr('hidden', false);
                            $('#nama_pegawai').val(data.nama_pegawai);
                            $('#id_pegawai_t').val(data.id_pegawai);

                            $('.mark_pass').text('Isi password bila ingin ganti password !!');

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

            // hapus user
                $('#tabel_master_user').on('click', '.hapus-user', function () {
                    
                    var id_user = $(this).data('id');
                    var user    = $(this).attr('user');

                    swal({
                        title       : 'Konfirmasi',
                        text        : 'Yakin akan hapus user '+user+"?",
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
                                url         : "simpan_data_user",
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
                                data        : {aksi:'Hapus', id_user:id_user},
                                dataType    : "JSON",
                                success     : function (data) {

                                        tabel_master_user.ajax.reload(null,false);   

                                        swal({
                                            title               : 'Hapus user',
                                            text                : 'Data Berhasil Dihapus',
                                            buttonsStyling      : false,
                                            confirmButtonClass  : "btn btn-success",
                                            type                : 'success',
                                            showConfirmButton   : false,
                                            timer               : 1000
                                        }); 

                                            
                                        
                                        $('#form_user').trigger("reset");

                                        $('#id_pegawai').select2("val", ' ');

                                        $('#aksi').val('Tambah');

                                        $('#batal_user').attr('hidden', true);

                                        $('.hapus-user').removeAttr('hidden');

                                        $('#id_pegawai').html(data.list_pegawai);

                                        $('#id_pegawai').select2('val', ' ');

                                        $('.mark_pass').text('Harap Catat Pasword Anda !!');

                                        $('#simpan_user').attr('disabled', true);
                                    
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
                                    text                : 'Anda membatalkan hapus user',
                                    buttonsStyling      : false,
                                    confirmButtonClass  : "btn btn-primary",
                                    type                : 'error',
                                    showConfirmButton   : false,
                                    timer               : 1000
                                }); 
                        }
                    })

                })

            // 14-10-2020
            $('#id_pegawai').on('change', function () {

                var isi = $(this).val();

                console.log(isi);

                if (isi == '') {
                    $('#simpan_user').attr('disabled', true);
                } else {
                   $('#simpan_user').attr('disabled', false); 
                }

                
                
            })

    })

</script>

