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
                            <th width="10%">Tanggal Dimulai</th>
                            <th width="10%">Tanggal Berakhir</th>
                            <th width="10%">Jumlah Modul</th>
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

<div class="row f_detail_modul" style="display: none;">

    <div class="col-md-9">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" style="color: #2461AA">Modul Projek</li>
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
            <div class="card-body table-responsive p-2">
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

    <div class="col-md-12 mt-1">
        <div class="card">
            <div class="card-body row m-0 mb-0 p-0 pt-3">
                <div class="col-md-6 offset-md-3">
                    <div class="form-group row">
                        <label for="nama_modul" class="col-md-3 col-form-label text-right font-weight-bold">Nama Posisi</label>
                        <div class="col-md-9">
                            <select name="id_posisi" id="id_posisi" data-allow-clear="1" placeholder="Pilih Nama Posisi">
                                <?php foreach ($posisi as $k): ?>
                                    <option value="<?= $k['id_posisi'] ?>"><?= $k['nama_posisi'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-12 f_detail_posisi" style="display: none">

        <div class="row">

            <div class="col-md-12 mt-3">
                <div class="card">
                    <div class="card-body p-0 pb-3">

                        <div class="col-md-12 mt-3 f_tambah_modul">
                            <div class="card">
                                <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Tambah Data</h4></div>
                                <form id="form_modul" autocomplete="off">
                                    <input type="hidden" name="aksi" id="aksi" value="Tambah">
                                    <input type="hidden" name="id_posisi2" id="id_posisi2">
                                    <input type="hidden" name="id_data_projek" id="id_data_projek">
                                    <input type="hidden" name="id_modul" id="id_modul">
                                    <input type="hidden" name="jenis" id="jenis">
                                    <input type="hidden" name="jml_persentase" id="jml_persentase">
                                    <div class="card-body row offset-md-1">
                                        <div class="col-md-3">
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
                                                    <textarea type="text" style="font-size: 14px;"  class="form-control" id="nama_modul" name="nama_modul" placeholder="Masukkan Nama Modul" rows="3"></textarea>
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

                    </div>
                </div>
            </div>

            <div class="col-md-12 f_isi_modul" style="display: none">

                <div class="row">

                    <div class="col-md-12 mt-3">
                        <div class="card">
                            <div class="card-body p-0 pb-3">

                                <div class="col-md-12 mt-3">
                                    <div class="card">
                                        <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Tambah Data Isi Modul</h4></div>
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
                                                <button type="button" class="btn btn-warning mt-1 mr-3" id="simpan_isi_modul"><i class="mdi mdi-check mr-1"></i>Simpan</button>
                                                <button class="btn btn-danger mt-1" id="batal_isi_modul" type="button" hidden><i class="mdi mdi-cancel mr-1"></i>Batal</button>
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

        // 06-04-2020

            // menampilkan data modul projek
            var tabel_modul_projek = $('#tabel_modul_projek').DataTable({
                "processing"        : true,
                "serverSide"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_modul_projek",
                    "type"  : "POST"
                },

                "columnDefs"        : [{
                    "targets"   : [0,7],
                    "orderable" : false
                }, {
                    'targets'   : [0,3,4,5,6,7],
                    'className' : 'text-center',
                }]

            })

        // 07-04-2020

            // aksi lihat modul projek
            $('#tabel_modul_projek').on('click', '.lihat-modul', function () {

                var id_data_projek = $(this).data('id');
                // var id_data_projek = $('#id_data_projek').val();

                $.ajax({
                    url         : "ambil_data_detail_projek",
                    type        : "POST",
                    data        : {id_data_projek:id_data_projek},
                    dataType    : "JSON",
                    success     : function (data) {

                        $('.f_modul_projek').slideUp('fast');
                        $('.f_detail_modul').slideDown(300);

                        $('#id_data_projek').val(id_data_projek);

                        $('#id_posisi').select2('val', ' ');

                        $('#id_data_projek').val(data.id_data_projek);
                        $('#t_nama_projek').text(': '+data.nama_sub_projek);
                        $('#t_instansi').text(': '+data.instansi);
                        $('#t_keterangan').text(': '+data.keterangan);
                        $('#t_tgl_dimulai').text(': '+data[0].tgl_dimulai);
                        $('#t_tgl_berakhir').text(': '+data[0].tgl_berakhir);

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

            // aksi comobobox posisi
            $('#id_posisi').on('change', function () {

                var id_posisi       = $(this).val();
                var id_data_projek  = $('#id_data_projek').val();

                if (id_posisi == null) {
                    $('.f_detail_posisi').slideUp('fast');
                    $('.f_isi_modul').slideUp('fast');
                } else {
                    $('.f_isi_modul').slideUp('fast');
                    $('.f_detail_posisi').slideUp('fast');
                    $('.f_detail_posisi').slideDown(300);
                }

                // menampilkan data tim projek
                var tabel_list_modul  = $('.tabel_list_modul').DataTable({
                    "processing"    : true,
                    // "ajax"          : "tampil_list_modul/"+id_posisi,
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

                $.ajax({
                    url         : "ambil_data_list_modul",
                    type        : "POST",
                    data        : {id_posisi:id_posisi, id_data_projek:id_data_projek},
                    dataType    : "JSON",
                    success     : function (data) {

                        tabel_list_modul.ajax.reload(null, false);

                        $('#nama_modul').val('');
                        $('#persentase').val('');

                        $('#id_posisi2').val(id_posisi);

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

                var form_modul      = $('#form_modul').serialize();
                var nama_modul      = $('#nama_modul').val();
                var persentase      = $('#persentase').val();
                var id_posisi       = $('#id_posisi').val();
                var id_data_projek  = $('#id_data_projek').val();

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

                            // menampilkan data list modul
                            var tabel_list_modul  = $('.tabel_list_modul').DataTable({
                                "processing"    : true,
                                // "ajax"          : "tampil_list_modul/"+id_posisi,
                                "ajax"              : {
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

                            $.ajax({
                                url     : "simpan_data_modul_projek",
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
                    
                                    tabel_list_modul.ajax.reload(null,false);        
                                    
                                    $('#form_modul').trigger("reset");

                                    $('#form_modul').find('input, select, textarea').not("#id_data_projek, #id_posisi2, #jml_persentase").val('');

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

                var id_posisi       = $('#id_posisi2').val();
                var id_data_projek  = $('#id_data_projek').val();

                $.ajax({
                    url         : "ambil_jml_persentase_projek",
                    type        : "POST",
                    data        : {id_posisi:id_posisi, id_data_projek:id_data_projek},
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
                        
                        $('#form_modul').find('input, select, textarea').not("#id_data_projek, #id_posisi2, #jml_persentase").val('');
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
            $('.tabel_list_modul').on('click', '.edit-modul', function () {

                $('.hapus-modul').attr('hidden', true);

                var id_modul        = $(this).data('id');
                var jenis           = $(this).attr('jenis');
                var id_posisi       = $('#id_posisi2').val();
                var id_data_projek  = $('#id_data_projek').val();

                $.ajax({
                    url         : "ambil_data_modul",
                    type        : "POST",
                    data        : {id_modul:id_modul, jenis:jenis, id_posisi:id_posisi, id_data_projek:id_data_projek},
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
                        
                        $('#id_modul').val(id_modul);
                        $('#nama_modul').val(data.nama_modul);
                        $('#persentase').val(data.persentase);
                        $('#jenis').val(jenis);

                        $('#jml_persentase').val(data.jml_persentase);

                        $('#aksi').val('Ubah');

                        $('#batal_modul').removeAttr('hidden');

                        $('.f_tambah_modul').removeAttr('hidden');

                        $('html, body').animate({
                            scrollTop: $('.f_tambah_modul').offset().top
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
            $('.tabel_list_modul').on('click', '.hapus-modul', function () {

                var id_modul        = $(this).data('id');
                var jenis           = $(this).attr('jenis');
                var id_posisi       = $('#id_posisi2').val();
                var id_data_projek  = $('#id_data_projek').val();

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

                        // menampilkan data list modul
                        var tabel_list_modul  = $('.tabel_list_modul').DataTable({
                            "processing"    : true,
                            // "ajax"          : "tampil_list_modul/"+id_posisi,
                            "ajax"              : {
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

                        $.ajax({
                            url         : "simpan_data_modul_projek",
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
                            data        : {aksi:'Hapus', id_modul:id_modul, jenis:jenis, id_posisi2:id_posisi, id_data_projek:id_data_projek},
                            dataType    : "JSON",
                            success     : function (data) {

                                tabel_list_modul.ajax.reload(null,false);   

                                swal({
                                    title               : 'Hapus modul',
                                    text                : 'Data Berhasil Dihapus',
                                    buttonsStyling      : false,
                                    confirmButtonClass  : "btn btn-success",
                                    type                : 'success',
                                    showConfirmButton   : false,
                                    timer               : 1000
                                }); 
                                
                                $('#form_modul').find('input, select, textarea').not("#id_data_projek, #id_posisi2, #jml_persentase").val('');

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

            // tampil isi modul
            $('.tabel_list_modul').on('click', '.isi-modul', function () {
                
                var id_modul_projek = $(this).data('id');
                var id_posisi       = $('#id_posisi2').val();

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

                        $('html, body').animate({
                            scrollTop: $('.f_isi_modul').offset().top
                        }, 1000);

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

    })
</script>