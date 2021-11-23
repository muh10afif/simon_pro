<div class="row f_awal">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Filter Data</h4>
            </div>
            <div class="card-body row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="periode" class="col-form-label">Periode</label>
                        <div class="">
                            <div class="input-daterange input-group" id="date-range-2">
                                <input type="text" class="form-control datepicker2" style="font-size: 14px;" name="tgl_awal" id="start" placeholder="Awal Periode" readonly/>
                                <div class="input-group-append">
                                    <span class="input-group-text bg-warning b-0 text-white">S / D</span>
                                </div>
                                <input type="text" class="form-control datepicker2" style="font-size: 14px;" name="tgl_akhir" id="end" placeholder="Akhir Periode" readonly/>
                            </div>
                        </div>
                    </div>  
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="id_posisi" class="col-form-label text-right">Posisi</label>
                        <div class="">
                            <select name="id_posisi" id="id_posisi" data-allow-clear="1" placeholder="Pilih Posisi">
                                <?php foreach ($posisi as $k): ?>
                                    <option value="<?= $k['id_posisi'] ?>"><?= $k['nama_posisi'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="id_data_projek" class="col-form-label text-right">Nama Projek</label>
                        <div class="">
                            <select name="id_data_projek" id="id_data_projek" data-allow-clear="1" placeholder="Pilih Nama Projek">
                                <?php foreach ($projek as $k): ?>
                                    <option value="<?= $k['id_data_projek'] ?>"><?= $k['nama_sub_projek'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer d-flex justify-content-end">
                <button type="button" class="btn btn-warning mt-1 mr-3" id="filter">Tampilkan</button>
                <button class="btn btn-danger mt-1" id="reset" type="button">Reset</button>
            </div>
        </div>
    </div>
    <div class="col-md-12 mt-3">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
                <h4 id="judul" class="font-weight-bold">List Pegawai</h4>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover tabel_list_pegawai_laporan" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="20%">Tanggal Laporan</th>
                            <th width="20%">Nama Pegawai</th>
                            <th width="20%">Posisi</th>
                            <th width="20%">Nama Projek</th>
                            <th width="20%">Progres</th>
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

<div class="detail_laporan_pegawai" style="display: none;">

</div>

<script>
    $(document).ready(function () {

        $('#id_posisi').select2('val', ' ');
        $('#id_data_projek').select2('val', ' ');
        
        // 09-04-2020
            // menampilkan list projek
            var tabel_list_pegawai_laporan = $('.tabel_list_pegawai_laporan').DataTable({
                "processing"        : true,
                "serverSide"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_list_pegawai_laporan",
                    "type"  : "POST",
                    "data"  : function (data) {
                        data.tgl_awal       = $('#start').val();
                        data.tgl_akhir      = $('#end').val();
                        data.id_posisi      = $('#id_posisi').val();
                        data.id_data_projek = $('#id_data_projek').val();
                    }
                },

                "columnDefs"        : [{
                    "targets"   : [0,6],
                    "orderable" : false
                }, {
                    'targets'   : [0,5,6],
                    'className' : 'text-center',
                }]
            })

            tabel_list_pegawai_laporan.ajax.reload(null, false);

        // 11-04-2020
            // filter
            $('#filter').on('click', function () {
                tabel_list_pegawai_laporan.ajax.reload(null, false);
            })

            // reset
            $('#reset').on('click', function () {
                $('#start').datepicker('setDate', null);
                $('#end').datepicker('setDate', null);
                $('#id_posisi').select2('val', ' ');
                $('#id_data_projek').select2('val', ' ');

                tabel_list_pegawai_laporan.ajax.reload(null, false);
            })
        
            // lihat laporan
            $('.tabel_list_pegawai_laporan').on('click', '.lihat-laporan',function () {

                var nama_pegawai    = $(this).attr('nm_pegawai');
                var tgl_laporan     = $(this).attr('tgl_laporan');
                var id_posisi       = $(this).attr('id_posisi');
                var id_tim_projek   = $(this).data('id');
                var progres         = $(this).attr('progres');

                $.ajax({
                    url     : "halaman_lihat_laporan",
                    type    : "POST",
                    data    : {nama_pegawai:nama_pegawai, tgl_laporan:tgl_laporan, id_tim_projek:id_tim_projek, id_posisi:id_posisi, progres:progres},
                    success : function (data) {
                        
                        $('.detail_laporan_pegawai').html(data);
                        $('.f_awal').slideUp('fast');
                        $('.detail_laporan_pegawai').slideDown(300);

                    }
                })
                
            })

    })
</script>