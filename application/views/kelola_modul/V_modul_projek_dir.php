<style>
    .detail_pro td {
        border-top: none !important;
    }
    @media (min-width: 1200px) {
    #modal_isi_modul {
            width: 50%; 
            left: 25%;
        }
    }
</style>
<div class="row f_modul_projek">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header p-3">
                <h4 id="judul" class="font-weight-bold">Modul Projek</h4>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover" id="tabel_modul_projek" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="10%">Nama Induk Projek</th>
                            <th width="10%">Nama Projek</th>
                            <th width="10%">Instansi</th>
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
        <button class="btn btn-warning mb-3 float-right" id="kembali" type="button"><i class="mdi mdi-arrow-left-thick"></i>Kembali</button>
    </div>

    <div class="col-md-12 mt-2">
        <div class="card">
            <div class="card-header p-3"><h4 id="judul" class="font-weight-bold">Detail Projek</h4></div>
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

    <div class="col-md-12 mt-3">
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

    <div class="col-md-12 mt-3 f_detail_posisi" style="display: none">

        <div class="card">
            <div class="card-header p-3"><h4 id="judul" class="font-weight-bold">List Modul</h4></div>
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

<input type="hidden" id="id_data_projek">

<!-- Modal -->
<div class="modal fade" id="modal_isi_modul" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content isi_modal">
      
    </div>
  </div>
</div>

<script>
    $(document).ready(function () {

        // 24-04-2020

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
                    'targets'   : [0,4,5,6,7],
                    'className' : 'text-center',
                }]

            })

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

            // menampilkan isi modul dengan modal
            $('.tabel_list_modul').on('click', '.isi-modul', function () {

                var id_modul_projek = $(this).data('id');

                $.ajax({
                    url     : "ambil_isi_modul",
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
                    data    : {id_modul_projek:id_modul_projek},
                    success : function (data) {

                        swal.close();

                        $('.isi_modal').html(data);
                        
                        $('#modal_isi_modul').modal('show');

                    }
                })

            })

    })
</script>