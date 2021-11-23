<div class="row">

    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Filter</h4>
            </div>
            
            <form action="<?= base_url('C_rekap/unduh_excel_mingguan') ?>" method="post">
                <div class="card-body row">
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label for="nama_posisi" class="col-sm-4 col-form-label text-right">Bulan</label>
                            <div class="col-sm-8">
                            <input type="text" class="form-control bulan_date" style="font-size: 14px;" name="bulan" id="bulan" placeholder="Pilih Bulan" readonly>
                            </div>
                        </div>  
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label for="jenis_modul" class="col-sm-4 col-form-label text-right">Minggu Ke</label>
                            <div class="col-sm-8">
                                <select name="minggu_ke" id="minggu_ke" class="form-control">
                                    <option value="1">Pertama</option>
                                    <option value="2">Kedua</option>
                                    <option value="3">Ketiga</option>
                                    <option value="4">Keempat</option>
                                </select>
                            </div>
                        </div>  
                    </div>
                </div>
                <div class="card-footer">
                    <div class="row">
                        <div class="col-md-6 d-flex justify-content-start">
                            <mark style="display: none;" id="t_periode"></mark>
                        </div>
                        <div class="col-md-6 d-flex justify-content-end">
                            <button type="button" class="btn btn-warning mt-1 mr-3" id="tampilkan">Tampilkan</button>
                            <button class="btn btn-danger mt-1 mr-3" id="reset" type="button">Reset</button>
                            <button class="btn btn-primary mt-1" id="excel" name="excel" type="submit">Export Excel</button>
                        </div>
                    </div>
                </div>
            </form>

        </div>
    </div>

    <div class="col-md-12 mt-3 f_tabel">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
                <h4 id="judul" class="font-weight-bold">List Projek</h4>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover" id="tabel_list_projek" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="20%">Nama Projek</th>
                            <?php foreach ($posisi as $p) : ?>
                                <th width="20%"><?= ($p['nama_posisi'] == 'Programmer') ? 'Build' : $p['nama_posisi'] ?></th>
                            <?php endforeach; ?>
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
    $(document).ready(function () {
        
        // 16-04-2020
            // menampilkan list projek
            var tabel_list_projek = $('#tabel_list_projek').DataTable({
                "processing"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_list_projek",
                    "type"  : "POST",
                    "data"  : function (data) {
                        data.bulan      = $('#bulan').val();
                        data.minggu_ke  = $('#minggu_ke').val();
                    }
                },

                "columnDefs"        : [{
                    "targets"   : [0],
                    "orderable" : false
                }, {
                    'targets'   : [0],
                    'className' : 'text-center',
                }]
            })

            // filter 
            $('#tampilkan').on('click', function () {

                var bulan      = $('#bulan').val();
                var minggu_ke  = $('#minggu_ke').val();
                
                $('.f_tabel').slideUp('fast');
                $('.f_tabel').slideDown(300);

                $('#tabel_list_projek tbody').empty();

                tabel_list_projek.ajax.reload(null, false);

                $.ajax({
                    url     : "ambil_tanggal_periode",
                    type    : "POST",
                    data    : {bulan:bulan,minggu_ke:minggu_ke},
                    dataType: "JSON",
                    success : function (data) {
                        
                        $('#t_periode').fadeIn('slow');
                        $('#t_periode').text(data.text_periode);

                    }
                })

            })

            // reset
            $('#reset').on('click', function () {
                
                $('.f_tabel').slideUp('fast');
                $('.f_tabel').slideDown(300);

                $('#bulan').datepicker("setDate", null);
                $('#minggu_ke').select2("val", '1');

                $('#t_periode').fadeOut(500);

                tabel_list_projek.ajax.reload(null, false);

            })

            // aksi bulan
            $('#bulan').on('change', function () {

                var bulan = $(this).val();

                $.ajax({
                    url     : "cari_banyak_minggu",
                    type    : "POST",
                    data    : {bulan:bulan},
                    dataType: "JSON",
                    success : function (data) {

                        $('#minggu_ke').html(data.minggu_ke);
                        
                    }
                })
                
            })

    })
</script>

