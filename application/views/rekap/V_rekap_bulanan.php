<div class="row">

    <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white p-3"><h4 id="judul" class="font-weight-bold">Filter</h4>
            </div>
            
            <form action="<?= base_url('C_rekap/unduh_excel_bulanan') ?>" method="post">
                <div class="card-body row p-0 pt-3">
                    <div class="col-md-6 offset-md-2">
                        <div class="form-group row">
                            <label for="nama_posisi" class="col-sm-4 col-form-label text-right">Bulan</label>
                            <div class="col-sm-8">
                            <input type="text" class="form-control bulan_date text-center" style="font-size: 14px;" name="bulan" id="bulan" placeholder="Pilih Bulan" readonly>
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

    <div class="col-md-12 mt-3">
        <div class="card">
            <div class="card-header bg-warning text-white p-3">
                <h4 id="judul" class="font-weight-bold">Rekap Bulanan</h4>
            </div>
            <div class="card-body table-responsive">
                <div class="t_empat">
                    <table class="table table-bordered table-hover tabel_list_projek4" width="100%" cellspacing="0">
                        
                        <thead class="thead-light">
                            <tr>
                                <th width="5%">No</th>
                                <th width="20%">Nama Projek</th>
                                <th width="20%">PIC</th>
                                <th width="20%">Minggu ke 1</th>
                                <th width="20%">Minggu ke 2</th>
                                <th width="20%">Minggu ke 3</th>
                                <th width="20%">Minggu ke 4</th>
                            </tr>
                        </thead>

                        <tbody>
                                
                        </tbody>
                    </table>
                </div>
                <div class="t_lima"  style="display: none">
                    <table class="table table-bordered table-hover tabel_list_projek5" width="100%" cellspacing="0">
                        
                        <thead class="thead-light">
                            <tr>
                                <th width="5%">No</th>
                                <th width="20%">Nama Projek</th>
                                <th width="20%">PIC</th>
                                <th width="20%">Minggu ke 1</th>
                                <th width="20%">Minggu ke 2</th>
                                <th width="20%">Minggu ke 3</th>
                                <th width="20%">Minggu ke 4</th>
                                <th width="20%">Minggu ke 5</th>
                            </tr>
                        </thead>

                        <tbody>
                                
                        </tbody>
                    </table>
                </div>
                <div class="t_enam" style="display: none">
                    <table class="table table-bordered table-hover tabel_list_projek6" width="100%" cellspacing="0">
                        
                        <thead class="thead-light">
                            <tr>
                                <th width="5%">No</th>
                                <th width="20%">Nama Projek</th>
                                <th width="20%">PIC</th>
                                <th width="20%">Minggu ke 1</th>
                                <th width="20%">Minggu ke 2</th>
                                <th width="20%">Minggu ke 3</th>
                                <th width="20%">Minggu ke 4</th>
                                <th width="20%">Minggu ke 5</th>
                                <th width="20%">Minggu ke 6</th>
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

<script>
    $(document).ready(function () {

        // 16-04-2020
        
            // menampilkan list projek
            var tabel_list_projek4 = $('.tabel_list_projek4').DataTable({
                "processing"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_list_projek_bulanan",
                    "type"  : "POST",
                    "data"  : function (data) {
                        data.bulan = $('.bulan_date').val();
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
            var tabel_list_projek5 = $('.tabel_list_projek5').DataTable({
                "processing"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_list_projek_bulanan",
                    "type"  : "POST",
                    "data"  : function (data) {
                        data.bulan = $('.bulan_date').val();
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
            var tabel_list_projek6 = $('.tabel_list_projek6').DataTable({
                "processing"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_list_projek_bulanan",
                    "type"  : "POST",
                    "data"  : function (data) {
                        data.bulan = $('.bulan_date').val();
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

                var bulan = $(this).val();

                console.log(bulan);

                $.ajax({
                    url     : "cari_banyak_minggu",
                    type    : "POST",
                    data    : {bulan:bulan},
                    dataType: "JSON",
                    success : function (data) {

                        console.log(data.bulan);

                        if (data.jml_minggu == 4) {
                            tabel_list_projek4.ajax.reload(null, false);
                        } else if (data.jml_minggu == 5) {
                            tabel_list_projek5.ajax.reload(null, false);
                        } else if (data.jml_minggu == 6) {
                            tabel_list_projek6.ajax.reload(null, false);
                        }
                        
                    }
                })

            })

            // reset
            $('#reset').on('click', function () {

                $('#bulan').datepicker("setDate", null);

                var bulan = $('#bulan').val();

                console.log(bulan);

                $.ajax({
                    url     : "cari_banyak_minggu",
                    type    : "POST",
                    data    : {bulan:bulan},
                    dataType: "JSON",
                    success : function (data) {

                        console.log(data.bulan);

                        if (data.jml_minggu == 4) {
                            tabel_list_projek4.ajax.reload(null, false);
                        } else if (data.jml_minggu == 5) {
                            tabel_list_projek5.ajax.reload(null, false);
                        } else if (data.jml_minggu == 6) {
                            tabel_list_projek6.ajax.reload(null, false);
                        }
                        
                    }
                })

            })

            // aksi bulan
            $('#bulan').on('change', function () {

                var bulan = $(this).val();

                console.log(bulan);

                $.ajax({
                    url     : "cari_banyak_minggu",
                    type    : "POST",
                    data    : {bulan:bulan},
                    dataType: "JSON",
                    success : function (data) {

                        console.log(data.bulan);

                        if (data.bulan == null) {
                            $('.t_empat').slideDown('fast');
                            $('.t_enam').slideUp('fast');
                            $('.t_lima').slideUp('fast');
                        } else {
                            if (data.jml_minggu == 4) {
                                $('.t_empat').slideDown('fast');
                                $('.t_enam').slideUp('fast');
                                $('.t_lima').slideUp('fast');
                            } else if (data.jml_minggu == 5) {
                                $('.t_lima').slideDown('fast');
                                $('.t_empat').slideUp('fast');
                                $('.t_enam').slideUp('fast');
                            } else if (data.jml_minggu == 6) {
                                $('.t_enam').slideDown('fast');
                                $('.t_empat').slideUp('fast');
                                $('.t_lima').slideUp('fast');
                            }
                        } 
                        
                    }
                })

            })
        
    })
</script>