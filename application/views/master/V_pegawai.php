<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
                <button class="btn btn-light float-right" id="tambah_pegawai"><i class="mdi mdi-plus mr-1"></i>Tambah Data</button>
                <h4 id="judul" class="font-weight-bold">Master Data Pegawai</h4>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover" id="tabel_master_pegawai" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="10%">Nama pegawai</th>
                            <th width="10%">Kontak</th>
                            <th width="10%">Email</th>
                            <th width="10%">Posisi</th>
                            <th width="10%">Jabatan</th>
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
<div class="modal fade" id="modal_pegawai" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-md" role="document">
    <div class="modal-content">
      <div class="modal-header bg-warning text-white">
        <h5 class="modal-title" id="judul_modal">Tambah Data Pegawai</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" class="mr-2 text-dark">&times;</span>
        </button>
      </div>
        <form id="form_pegawai" autocomplete="off">
            <input type="hidden" name="id_pegawai" id="id_pegawai">
            <input type="hidden" name="aksi" id="aksi" value="Tambah">
            <div class="modal-body">
                <div class="col-md-12">
                    <div class="form-group row">
                        <label for="nama_pegawai" class="col-sm-3 col-form-label">Nama Pegawai</label>
                        <div class="col-sm-9">
                        <input type="text" class="form-control text-capitalize" style="font-size: 14px;" name="nama_pegawai" id="nama_pegawai" placeholder="Masukkan Nama Pegawai">
                        </div>
                    </div>  
                    <div class="form-group row">
                        <label for="nik" class="col-sm-3 col-form-label">NIK</label>
                        <div class="col-sm-9">
                        <input type="number" class="form-control" style="font-size: 14px;" name="nik" id="nik" placeholder="Masukkan NIK">
                        </div>
                    </div>  
                    <div class="form-group row">
                        <label for="kontak" class="col-sm-3 col-form-label">Kontak</label>
                        <div class="col-sm-9">
                        <input type="number" class="form-control" style="font-size: 14px;" name="kontak" id="kontak" placeholder="Masukkan Nomor Kontak">
                        </div>
                    </div>  
                    <div class="form-group row">
                        <label for="email" class="col-sm-3 col-form-label">Email</label>
                        <div class="col-sm-9">
                        <input type="email" class="form-control" style="font-size: 14px;" name="email" id="email" placeholder="Masukkan Nomor Email">
                        </div>
                    </div>  
                    <div class="form-group row">
                        <label for="id_posisi" class="col-sm-3 col-form-label">Posisi</label>
                        <div class="col-sm-9">
                            <select name="id_posisi" id="id_posisi" data-allow-clear="1" placeholder="Pilih Nama Posisi">
                                <?php foreach ($posisi as $k): ?>
                                    <option value="<?= $k['id_posisi'] ?>"><?= $k['nama_posisi'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div> 
                    <div class="form-group row">
                        <label for="id_jabatan" class="col-sm-3 col-form-label">Jabatan</label>
                        <div class="col-sm-9">
                            <select name="id_jabatan" id="id_jabatan" data-allow-clear="1" placeholder="Pilih Nama Jabatan">
                                <?php foreach ($jabatan as $k): ?>
                                    <option value="<?= $k['id_jabatan'] ?>"><?= $k['nama_jabatan'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div> 
                    <div class="form-group row">
                        <label for="alamat" class="col-sm-3 col-form-label">Alamat</label>
                        <div class="col-sm-9">
                            <textarea name="alamat" id="alamat" cols="30" rows="5" class="form-control text-capitalize" style="font-size: 14px;" placeholder="Masukkan Alamat"></textarea>
                        </div>
                    </div> 
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="mdi mdi-cancel mr-1"></i>Batal</button>
                <button type="button" class="btn btn-warning" id="simpan_pegawai"><i class="mdi mdi-check mr-1"></i>Simpan</button>
            </div>
        </form>
    </div>
  </div>
</div>

<script>

    $(document).ready(function() {

        // 05-04-2020

            // menampilkan list jabatan
            var tabel_master_pegawai = $('#tabel_master_pegawai').DataTable({
                "processing"        : true,
                "serverSide"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_data_pegawai",
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

            // menampilkan modal tambah pegawai
            $('#tambah_pegawai').on('click', function () {
                $('#form_pegawai').trigger('reset');
                $('#aksi').val('Tambah');
                $('#modal_pegawai').modal('show');
                $('#id_posisi').select2('val', ' ');
                $('#id_jabatan').select2('val', ' ');
            })

            // aksi simpan data pegawai
            $('#simpan_pegawai').on('click', function () {

                var form_pegawai = $('#form_pegawai').serialize();
                var nama_pegawai = $('#nama_pegawai').val();

                if (nama_pegawai == '') {
                    swal({
                        title               : "Peringatan",
                        text                : 'Nama pegawai harus terisi !',
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
                                url     : "simpan_data_pegawai",
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
                                data    : form_pegawai,
                                dataType: "JSON",
                                success : function (data) {

                                    $('#modal_pegawai').modal('hide');
                                    
                                    swal({
                                        title               : "Berhasil",
                                        text                : 'Data berhasil disimpan',
                                        buttonsStyling      : false,
                                        confirmButtonClass  : "btn btn-success",
                                        type                : 'success',
                                        showConfirmButton   : false,
                                        timer               : 1000
                                    });    
                    
                                    tabel_master_pegawai.ajax.reload(null,false);        
                                    
                                    $('#form_pegawai').trigger("reset");
                    
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

            // edit data pegawai
            $('#tabel_master_pegawai').on('click', '.edit-pegawai', function () {

                var id_pegawai  = $(this).data('id');

                $.ajax({
                    url         : "ambil_data_pegawai/"+id_pegawai,
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

                        $('#modal_pegawai').modal('show');
                        
                        $('#id_pegawai').val(data.id_pegawai);
                        $('#nama_pegawai').val(data.nama_pegawai);
                        $('#nik').val(data.nik);
                        $('#kontak').val(data.kontak);
                        $('#email').val(data.email);
                        $('#id_posisi').val(data.id_posisi).trigger('change');
                        $('#id_jabatan').val(data.id_jabatan).trigger('change');
                        $('#alamat').val(data.alamat);

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

            // hapus pegawai
            $('#tabel_master_pegawai').on('click', '.hapus-pegawai', function () {

                var id_pegawai  = $(this).data('id');
                var pegawai     = $(this).attr('pegawai');

                swal({
                    title       : 'Konfirmasi',
                    text        : 'Yakin akan hapus pegawai '+pegawai+"?",
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
                            url         : "simpan_data_pegawai",
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
                            data        : {aksi:'Hapus', id_pegawai:id_pegawai},
                            dataType    : "JSON",
                            success     : function (data) {

                                    tabel_master_pegawai.ajax.reload(null,false);   

                                    swal({
                                        title               : 'Hapus pegawai',
                                        text                : 'Data Berhasil Dihapus',
                                        buttonsStyling      : false,
                                        confirmButtonClass  : "btn btn-success",
                                        type                : 'success',
                                        showConfirmButton   : false,
                                        timer               : 1000
                                    }); 

                                        
                                    
                                    $('#form_pegawai').trigger("reset");

                                    $('#aksi').val('Tambah');

                                    $('#batal_pegawai').attr('hidden', true);

                                    $('.hapus-pegawai').removeAttr('hidden');
                                
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
                                text                : 'Anda membatalkan hapus pegawai',
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

