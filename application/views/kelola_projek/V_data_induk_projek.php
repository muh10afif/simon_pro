<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
            <?php if ($nm_jabatan == 'Manager'): ?>
                <button class="btn btn-light float-right" id="tambah_dt_in_projek"><i class="mdi mdi-plus mr-1"></i>Tambah Data</button>
            <?php endif; ?>
            
                <h4 id="judul" class="font-weight-bold">Data Induk Projek</h4>
            </div>
            <div class="card-body table-responsive">
                <?php if ($nm_jabatan == 'Manager'): ?>

                    <table class="table table-bordered table-hover" id="tabel_dt_in_projek" width="100%" cellspacing="0">
                        <thead class="thead-light">
                            <tr>
                                <th width="5%">No</th>
                                <th width="10%">Nama Projek</th>
                                <th width="10%">Instansi</th>
                                <th width="10%">Tanggal Dimulai</th>
                                <th width="10%">Tanggal Berakhir</th>
                                <th width="10%">Keterangan</th>
                                <th width="10%">Status</th>
                                <th width="5%">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                                
                        </tbody>
                    </table>

                <?php else: ?>

                    <table class="table table-bordered table-hover" id="tabel_dt_in_projek_2" width="100%" cellspacing="0">
                        <thead class="thead-light">
                            <tr>
                                <th width="5%">No</th>
                                <th width="10%">Nama Projek</th>
                                <th width="10%">Instansi</th>
                                <th width="10%">Tanggal Dimulai</th>
                                <th width="10%">Tanggal Berakhir</th>
                                <th width="10%">Keterangan</th>
                                <th width="10%">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                                
                        </tbody>
                    </table>

                <?php endif; ?>
                
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="modal_dt_in_projek" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-md" role="document">
    <div class="modal-content">
      <div class="modal-header bg-warning text-white">
        <h5 class="modal-title" id="judul_modal">Tambah Data Induk Projek</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" class="mr-2 text-dark">&times;</span>
        </button>
      </div>
        <form id="form_dt_in_projek" autocomplete="off">
            <input type="hidden" name="id_induk_projek" id="id_induk_projek">
            <input type="hidden" name="aksi" id="aksi" value="Tambah">
            <div class="modal-body">
                <div class="col-md-12">
                    <div class="form-group row">
                        <label for="nama_projek" class="col-sm-3 col-form-label">Nama Projek</label>
                        <div class="col-sm-9">
                        <textarea type="text" class="form-control" style="font-size: 14px;" name="nama_projek" id="nama_projek" placeholder="Masukkan Nama Projek" rows="3"></textarea>
                        </div>
                    </div>  
                    <div class="form-group row">
                        <label for="instansi" class="col-sm-3 col-form-label">Instansi</label>
                        <div class="col-sm-9">
                            <textarea type="text" class="form-control" style="font-size: 14px;" name="instansi" id="instansi" placeholder="Masukkan Nama Instansi" rows="3"></textarea>
                        </div>
                    </div>  
                    <div class="form-group row">
                        <label for="tgl_dimulai" class="col-sm-3 col-form-label">Tanggal Dimulai</label>
                        <div class="col-sm-9">
                        <input type="text" class="form-control datepicker2" style="font-size: 14px;" name="tgl_dimulai" id="tgl_dimulai" placeholder="Masukkan Tanggal Dimulai">
                        </div>
                    </div>  
                    <div class="form-group row">
                        <label for="tgl_berakhir" class="col-sm-3 col-form-label">Tanggal Berakhir</label>
                        <div class="col-sm-9">
                        <input type="text" class="form-control datepicker2" style="font-size: 14px;" name="tgl_berakhir" id="tgl_berakhir" placeholder="Masukkan Tanggal Berakhir">
                        </div>
                    </div> 
                    
                    <!-- <div class="form-group row">
                        <label for="keterangan" class="col-sm-3 col-form-label">Role</label>
                        <div class="col-sm-9">
                            <div id="show_role">
                                <div class="row row_tambah_awal" id="list_add1">
                                    <div class="col-md-10">
                                        <input type="text" class="form-control role_list" name="role_1" id="role_1" data-id="1"  placeholder="Role 1">
                                    </div>
                                    <div class="col-md-2">
                                        <span style="cursor: pointer;" class="text-primary" data-id="1" id="tambah_role"><i class="mdi mdi-plus-box mdi-24px"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>  -->
                    <div class="form-group row">
                        <label for="keterangan" class="col-sm-3 col-form-label">Keterangan</label>
                        <div class="col-sm-9">
                            <textarea type="text" class="form-control" style="font-size: 14px;" name="keterangan" id="keterangan" placeholder="Masukkan Keterangan" rows="3"></textarea>
                        </div>
                    </div> 
                    <div class="form-group row">
                        <label for="status" class="col-sm-3 col-form-label">Status</label>
                        <div class="col-sm-9">
                            <select name="status" id="status" data-allow-clear="1" placeholder="Pilih Status">
                                <option value="1">Ya</option>
                                <option value="0">Tidak</option>
                            </select>
                        </div>
                    </div> 
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="mdi mdi-cancel mr-1"></i>Batal</button>
                <button type="button" class="btn btn-warning" id="simpan_dt_in_projek"><i class="mdi mdi-check mr-1"></i>Simpan</button>
            </div>
        </form>
    </div>
  </div>
</div>

<script>

    $(document).ready(function() {

        // 05-04-2020

            // menampilkan list jabatan
            var tabel_dt_in_projek = $('#tabel_dt_in_projek').DataTable({
                "processing"        : true,
                "serverSide"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_data_dt_in_projek",
                    "type"  : "POST"
                },

                    "columnDefs"        : [{
                        "targets"   : [0,7],
                        "orderable" : false
                    }, {
                        'targets'   : [0,3,4,7],
                        'className' : 'text-center',
                    }]

            })

            var tabel_dt_in_projek_2 = $('#tabel_dt_in_projek_2').DataTable({
                "processing"        : true,
                "serverSide"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_data_dt_in_projek",
                    "type"  : "POST"
                },

                    "columnDefs"        : [{
                        "targets"   : [0,6],
                        "orderable" : false
                    }, {
                        'targets'   : [0,3,4,6],
                        'className' : 'text-center',
                    }]

            })

            // menampilkan modal tambah dt_in_projek
            $('#tambah_dt_in_projek').on('click', function () {
                $('#form_dt_in_projek').trigger('reset');
                $('#aksi').val('Tambah');
                $('#modal_dt_in_projek').modal('show');
                $('#tgl_dimulai').datepicker('setDate', null);
                $('#tgl_berakhir').datepicker('setDate', null);

                // $("#role").val('').trigger("change");

                // $('.row_tambah').remove();
                // $('.row_tambah_awal').remove();

                // list = 
                //     `
                //     <div class="row row_tambah_awal" id="list_add1">
                //         <div class="col-md-10">
                //             <input type="text" class="form-control role_list" name="role_1" id="role_1" data-id="1"  placeholder="Role 1">
                //         </div>
                //         <div class="col-md-2">
                //             <span style="cursor: pointer;" class="text-primary" data-id="1" id="tambah_role"><i class="mdi mdi-plus-box mdi-24px"></i></span>
                //         </div>
                //     </div>
                //     `;    

                // $('#show_role').html(list);
            })

            // 17-11-2021
            var a = 111;
            $('#show_role').on('click', '#tambah_role', function () {

                // $('#tabel_dok_entry').slideDown();

                list = 
                    `
                    <div class="row row_tambah" id="list_add`+a+`">
                        <div class="col-md-10">
                            <input type="text" id="role_`+a+`" name="role_`+a+`" class="form-control role_list" data-id="`+a+`" placeholder="Role 1">
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

            // aksi simpan data dt_in_projek
            $('#simpan_dt_in_projek').on('click', function () {

                var form_dt_in_projek   = $('#form_dt_in_projek').serialize();
                var nama_projek         = $('#nama_projek').val();

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
                formData.append("form_dt_in_projek", form_dt_in_projek);

                if (nama_projek == '') {
                    swal({
                        title               : "Peringatan",
                        text                : 'Nama Projek harus terisi!',
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
                                url     : "simpan_data_dt_in_projek",
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

                                    $('#modal_dt_in_projek').modal('hide');
                                    
                                    swal({
                                        title               : "Berhasil",
                                        text                : 'Data berhasil disimpan',
                                        buttonsStyling      : false,
                                        confirmButtonClass  : "btn btn-success",
                                        type                : 'success',
                                        showConfirmButton   : false,
                                        timer               : 1000
                                    });    
                    
                                    tabel_dt_in_projek.ajax.reload(null,false);        
                                    
                                    $('#form_dt_in_projek').trigger("reset");
                    
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

            // edit data dt_in_projek
            $('#tabel_dt_in_projek').on('click', '.edit-dt_in_projek', function () {

                var id_dt_in_projek  = $(this).data('id');

                $.ajax({
                    url         : "ambil_data_dt_in_projek/"+id_dt_in_projek,
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

                        $('#modal_dt_in_projek').modal('show');
                        
                        $('#id_induk_projek').val(data.list.id_induk_projek);
                        $('#nama_projek').val(data.list.nama_projek);
                        $('#instansi').val(data.list.instansi);
                        $('#keterangan').val(data.list.keterangan);

                        $('#tgl_dimulai').datepicker('setDate', data.tgl_dimulai);
                        $('#tgl_berakhir').datepicker('setDate', data.tgl_berakhir);

                        $('#status').val(data.list.status).trigger('change');

                        // var relasi  = data.role_projek;
                        // // var id_role_e   = [];

                        // // relasi.forEach(function (item) {
                        // //     id_role_e.push(item.id_role); 
                        // // })
                        // // $("#role").select2().val(id_role_e).trigger('change');

                        // $('.row_tambah_awal').remove();
                        // $('.row_tambah').remove();

                        // var b   = 1;
                        // var btn = "";

                        // if (relasi.length == 0) {

                        //     list = 
                        //         `
                        //         <div class="row row_tambah_awal" id="list_add1">
                        //             <div class="col-md-10">
                        //                 <input type="text" class="form-control role_list" name="role_1" id="role_1" data-id="1"  placeholder="Role 1">
                        //             </div>
                        //             <div class="col-md-2">
                        //                 <span style="cursor: pointer;" class="text-primary" data-id="1" id="tambah_role"><i class="mdi mdi-plus-box mdi-24px"></i></span>
                        //             </div>
                        //         </div>
                        //         `;    

                        //     $('#show_role').html(list);
                            
                        // } else {

                        //     relasi.forEach(function (item) {

                        //         if (b == 1) {
                        //             btn = `<span style="cursor: pointer;" class="text-primary" data-id="1" id="tambah_role"><i class="mdi mdi-plus-box mdi-24px"></i></span>`;
                        //         } else {
                        //             btn = `<span style="cursor:pointer;" class="remove text-danger" data-id="`+b+`"><i class="mdi mdi-delete mdi-24px"></i></span>`;
                        //         }

                        //         list = 
                        //             `
                        //             <div class="row row_tambah" id="list_add`+b+`">
                        //                 <div class="col-md-10">
                        //                     <input type="text" id="role_`+b+`" name="role_`+b+`" class="form-control role_list" data-id="`+b+`" placeholder="Role 1" value="`+item.nama_role+`">
                        //                 </div>
                        //                 <div class="col-md-2">
                        //                     `+btn+`
                        //                 </div>
                        //             </div>
                        //             `;    

                        //         $('#show_role').append(list);

                        //         ubah_label();

                        //         b++;

                        //     })
                        // }

                        $('#aksi').val('Ubah');

                        return false;

                    },
                    error: function (jqXHR, textStatus, errorThrown)
                    {
                        alert('Error get data from ajax');
                    }
                })

                return false;

            })

            // hapus dt_in_projek
            $('#tabel_dt_in_projek').on('click', '.hapus-dt_in_projek', function () {

                var id_dt_in_projek = $(this).data('id');
                var nama_projek     = $(this).attr('nama_projek');

                swal({
                    title       : 'Konfirmasi',
                    text        : 'Yakin akan hapus projek '+nama_projek+'?',
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
                            url         : "simpan_data_dt_in_projek",
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
                            data        : {aksi:'Hapus', id_induk_projek:id_dt_in_projek},
                            dataType    : "JSON",
                            success     : function (data) {

                                    tabel_dt_in_projek.ajax.reload(null,false);   

                                    swal({
                                        title               : 'Hapus Induk Projek',
                                        text                : 'Data Berhasil Dihapus',
                                        buttonsStyling      : false,
                                        confirmButtonClass  : "btn btn-success",
                                        type                : 'success',
                                        showConfirmButton   : false,
                                        timer               : 1000
                                    }); 

                                        
                                    
                                    $('#form_dt_in_projek').trigger("reset");

                                    $('#aksi').val('Tambah');
                                
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
                                text                : 'Anda membatalkan hapus data',
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

