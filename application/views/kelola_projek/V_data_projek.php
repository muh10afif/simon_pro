
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Tambah Data</h4></div>
            <form id="form_dt_projek" autocomplete="off">
                <input type="hidden" name="id_dt_projek" id="id_dt_projek">
                <input type="hidden" name="aksi" id="aksi" value="Tambah">
                <div class="card-body row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="id_induk_projek" class="col-form-label text-left">Nama Induk Projek</label>
                            <select name="id_induk_projek" id="id_induk_projek" data-allow-clear="1" placeholder="Pilih Nama Induk Projek">
                                <?php foreach ($dt_in_projek as $k): ?>
                                    <option value="<?= $k['id_induk_projek'] ?>"><?= $k['nama_projek'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>  
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="nama_sub_projek" class="col-form-label text-left">Nama Projek</label>
                            <input type="text" class="form-control" style="font-size: 15px;" name="nama_sub_projek" id="nama_sub_projek" placeholder="Masukkan Nama Projek">
                        </div>  
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="status" class="col-form-label text-left">Status</label>
                            <select name="status2" id="status" data-allow-clear="1" placeholder="Pilih Status">
                                <?php foreach ($status_projek as $k): ?>
                                    <option value="<?= $k['id_status_projek'] ?>"><?= $k['nama_status'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>  
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="link" class="col-form-label text-left">Link Projek</label>
                            <input type="text" class="form-control" style="font-size: 15px;" name="link_projek" id="link" placeholder="Masukkan Link Projek">
                        </div>  
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="keterangan" class="col-form-label">Role</label>
                            
                                <div id="show_role">
                                    <div class="row row_tambah_awal" id="list_add1">
                                        <div class="col-md-10">
                                            <input type="text" style="font-size: 15px;" class="form-control role_list mt-1" name="role_1" id="role_1" data-id="1"  placeholder="Role 1">
                                        </div>
                                        <div class="col-md-2">
                                            <span style="cursor: pointer;" class="text-primary" data-id="1" id="tambah_role"><i class="mdi mdi-plus-box mdi-24px"></i></span>
                                        </div>
                                    </div>
                                </div>
                            
                        </div>
                    </div>
                </div>
                <div class="card-footer d-flex justify-content-end">
                    <button type="button" class="btn btn-warning mt-1 mr-3" id="simpan_dt_projek"><i class="mdi mdi-check mr-1"></i>Simpan</button>
                    <button class="btn btn-danger mt-1" id="batal_dt_projek" type="button" hidden><i class="mdi mdi-cancel mr-1"></i>Batal</button>
                </div>
            </form>
        </div>
    </div>

    <div class="col-md-12 mt-3">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Data Projek</h4></div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover" id="tabel_master_dt_projek" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                        <th width="5%">No</th>
                            <th width="20%">Nama Induk Projek</th>
                            <th width="20%">Nama Projek</th>
                            <th width="20%">Link Projek</th>
                            <th width="20%">Role</th>
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

            $('#id_induk_projek').select2("val", ' ');
            $('#status').select2("val", ' ');

            // menampilkan list dt_projek
                var tabel_master_dt_projek = $('#tabel_master_dt_projek').DataTable({
                    "processing"        : true,
                    "serverSide"        : true,
                    "order"             : [],
                    "ajax"              : {
                        "url"   : "tampil_data_dt_projek",
                        "type"  : "POST"
                    },

                    "columnDefs"        : [{
                        "targets"   : [0,6],
                        "orderable" : false
                    }, {
                        'targets'   : [0,6],
                        'className' : 'text-center',
                    }]

                })

            // 17-11-2021
            var a = 111;
            $('#show_role').on('click', '#tambah_role', function () {

                // $('#tabel_dok_entry').slideDown();

                list = 
                    `
                    <div class="row row_tambah" id="list_add`+a+`">
                        <div class="col-md-10">
                            <input type="text" style="font-size: 15px;" id="role_`+a+`" name="role_`+a+`" class="form-control role_list mt-1" data-id="`+a+`" placeholder="Role 1">
                        </div>
                        <div class="col-md-2">
                            <span style="cursor:pointer;" class="remove text-danger" data-id="`+a+`"><i class="mdi mdi-delete mdi-24px"></i></span>
                        </div>
                    </div>
                    `;    

                $('#show_role').append(list);
                $('#list_add'+a).hide().slideDown();

                ubah_label();

                a++;
            
            });

            $('#show_role').on('click', '.remove', function() {

                var id = $(this).data('id');

                $('#list_add'+id).fadeOut(function(){ 

                    $(this).remove();

                    var role_list = [];
                    $('.role_list').each(function() { 
                        role_list.push($(this).val()); 
                    });

                    ubah_label();
                });

            });

            function ubah_label() {

                var role_list  = [];
                $('.role_list').each(function() { 
                    role_list.push($(this).data('id')); 
                });

                let i = 1;
                for (let h = 0; h < role_list.length; h++) {
                    const element = role_list[h];
                    
                    $('#role_'+element).attr("placeholder" , "Role "+i);

                    i++;
                }

            }

            function reset_role() {

                $("#role").val('').trigger("change");

                $('.row_tambah').remove();
                $('.row_tambah_awal').remove();

                list = 
                    `
                    <div class="row row_tambah_awal" id="list_add1">
                        <div class="col-md-10">
                            <input type="text" style="font-size: 15px;" class="form-control role_list mt-1" name="role_1" id="role_1" data-id="1"  placeholder="Role 1">
                        </div>
                        <div class="col-md-2">
                            <span style="cursor: pointer;" class="text-primary" data-id="1" id="tambah_role"><i class="mdi mdi-plus-box mdi-24px"></i></span>
                        </div>
                    </div>
                    `;    

                $('#show_role').html(list);
                
            }

            // aksi simpan data dt_projek
                $('#simpan_dt_projek').on('click', function () {

                    var form_dt_projek   = $('#form_dt_projek').serialize();
                    var id_induk_projek    = $('#id_induk_projek').val();

                    let formData  = new FormData();

                    var list_id_role       = [];
                    $('.role_list').each(function() { 
                        list_id_role.push($(this).data('id')); 
                    });

                    var nama_role   = [];
                    var role_val    = [];

                    for (let index = 0; index < list_id_role.length; index++) {
                        const element = list_id_role[index];

                        nama_role[index]    = "role_"+element;
                        role_val[index]     = $('#role_'+element).val();
                    }

                    for (let i = 0; i < nama_role.length; i++) {
                        formData.append(nama_role[i], role_val[i]);
                    }

                    formData.append('data_id_role', JSON.stringify(list_id_role));
                    formData.append("form_dt_projek", form_dt_projek);

                    if (id_induk_projek == '') {
                        swal({
                            title               : "Peringatan",
                            text                : 'Data Induk Projek harus terisi !',
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
                                    url     : "simpan_data_dt_projek",
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
                                    data    : formData,
                                    contentType     : false,
                                    cache           : false,
                                    processData     : false,
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
                        
                                        tabel_master_dt_projek.ajax.reload(null,false);        
                                        
                                        $('#form_dt_projek').trigger("reset");

                                        $('#id_induk_projek').val("").trigger('change');
                                        $('#status').val("").trigger('change');

                                        $('#batal_dt_projek').attr('hidden', true);

                                        $('.hapus-dt_projek').removeAttr('hidden');

                                        reset_role();
                        
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

            // aksi batal dt_projek
                $('#batal_dt_projek').on('click', function () {

                    $('#form_dt_projek').trigger("reset");

                    $('#id_induk_projek').val("").trigger('change');
                    $('#status').val("").trigger('change');
                    $('#batal_dt_projek').attr('hidden', true);

                    $('#aksi').val('Tambah');
                    $('.hapus-dt_projek').removeAttr('hidden');

                    reset_role()
                })

            // edit data dt_projek
                $('#tabel_master_dt_projek').on('click', '.edit-dt_projek', function () {

                    $('.hapus-dt_projek').attr('hidden', true);
                    
                    var id_dt_projek  = $(this).data('id');

                    $.ajax({
                        url         : "ambil_data_dt_projek/"+id_dt_projek,
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
                            
                            $('#id_dt_projek').val(data.list.id_data_projek);
                            $('#nama_sub_projek').val(data.list.nama_sub_projek);
                            $('#link').val(data.list.link);

                            $('#id_induk_projek').val(data.list.id_induk_projek).trigger('change');
                            $('#status').select2('val', data.list.status);

                            $('#aksi').val('Ubah');
                            $('#batal_dt_projek').removeAttr('hidden');

                            $('.mark_pass').text('Isi password bila ingin ganti password !!');

                            var relasi  = data.role_projek;

                            $('.row_tambah_awal').remove();
                            $('.row_tambah').remove();

                            var b   = 1;
                            var btn = "";

                            if (relasi.length == 0) {

                                list = 
                                    `
                                    <div class="row row_tambah_awal" id="list_add1">
                                        <div class="col-md-10">
                                            <input type="text" style="font-size: 15px;" class="form-control role_list mt-1" name="role_1" id="role_1" data-id="1"  placeholder="Role 1">
                                        </div>
                                        <div class="col-md-2">
                                            <span style="cursor: pointer;" class="text-primary" data-id="1" id="tambah_role"><i class="mdi mdi-plus-box mdi-24px"></i></span>
                                        </div>
                                    </div>
                                    `;    

                                $('#show_role').html(list);
                                
                            } else {

                                relasi.forEach(function (item) {

                                    if (b == 1) {
                                        btn = `<span style="cursor: pointer;" class="text-primary" data-id="1" id="tambah_role"><i class="mdi mdi-plus-box mdi-24px"></i></span>`;
                                    } else {
                                        btn = `<span style="cursor:pointer;" class="remove text-danger" data-id="`+b+`"><i class="mdi mdi-delete mdi-24px"></i></span>`;
                                    }

                                    list = 
                                        `
                                        <div class="row row_tambah" id="list_add`+b+`">
                                            <div class="col-md-10">
                                                <input type="text" style="font-size: 15px;" id="role_`+b+`" name="role_`+b+`" class="form-control role_list mt-1" data-id="`+b+`" placeholder="Role 1" value="`+item.nama_role+`">
                                            </div>
                                            <div class="col-md-2">
                                                `+btn+`
                                            </div>
                                        </div>
                                        `;    

                                    $('#show_role').append(list);

                                    ubah_label();

                                    b++;

                                })
                            }

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

            // hapus dt_projek
                $('#tabel_master_dt_projek').on('click', '.hapus-dt_projek', function () {
                    
                    var id_dt_projek    = $(this).data('id');
                    var projek          = $(this).attr('projek');

                    swal({
                        title       : 'Konfirmasi',
                        text        : 'Yakin akan hapus projek '+projek+'?',
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
                                url         : "simpan_data_dt_projek",
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
                                data        : {aksi:'hapus', id_data_projek:id_dt_projek},
                                dataType    : "JSON",
                                success     : function (data) {

                                        tabel_master_dt_projek.ajax.reload(null,false);   

                                        swal({
                                            title               : 'Hapus Data Projek',
                                            text                : 'Data Berhasil Dihapus',
                                            buttonsStyling      : false,
                                            confirmButtonClass  : "btn btn-success",
                                            type                : 'success',
                                            showConfirmButton   : false,
                                            timer               : 1000
                                        }); 

                                            
                                        
                                        $('#form_dt_projek').trigger("reset");

                                        $('#id_induk_projek').select2("val", ' ');

                                        $('#aksi').val('Tambah');

                                        $('#batal_dt_projek').attr('hidden', true);

                                        $('.hapus-dt_projek').removeAttr('hidden');

                                        reset_role()

                                    
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
                                    text                : 'Anda membatalkan hapus data projek',
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

