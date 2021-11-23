<style>
    .btn::before {
        background: #ecc410;
    }
    @media (min-width: 500px) {
        .available-app-area {
            margin-top: 80px !important; 
            height: 700px !important;
        }

        #donut-example {
            margin-top: 60px;
        }
    }
    @media (min-width: 300px) {
        .available-app-area {
            margin-top: 80px !important; 
            height: 700px !important;
        }
        .gm {
            margin-top: -150px;
        }
        #donut-example {
            margin-top: 60px;
        }
    }
    @media (min-width: 1200px) {
        .available-app-area {
            margin-top: 150px !important; 
            height: 500px !important;
        }
        .gm {
            margin-top: -150px;
        }
        #donut-example {
            margin-top: 15px;
        }
    }
</style>
<!-- <div class="available-app-area" style="margin-top: 150px;height: 500px;">
    <div class="container" style="margin-top: -150px;"> -->
<div class="available-app-area" style="margin-top: 150px;height: 500px;">
    <div class="container gm" style="margin-top: -150px;">
        <div class="row d-flex justify-content-between">
            <div class="col-xl-5 col-lg-6">
                <div id="donut-example"></div>
            </div>
            <div class="col-xl-6 col-lg-6 text-center">
                <div class="hero__caption mt-5">
                    <h1 style="color: white">Diagram Status Projek</h1>
                    <h5 style="color: white" class="mt-5">Menampilkan seluruh projek dengan menampilkan status projek yang meliputi status projek prospek, penawaran harga, on progress, waiting list, sampai clear projek.</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Shape -->
    <div class="app-shape">
        <img src="<?= base_url() ?>template/assets_frontend/img/shape/app-shape-top.png" alt="" class="app-shape-top heartbeat d-none d-lg-block">
        <img src="<?= base_url() ?>template/assets_frontend/img/shape/app-shape-left.png" alt="" class="app-shape-left d-none d-xl-block">
        <!-- <img src="assets/img/shape/app-shape-right.png" alt="" class="app-shape-right bounce-animate "> -->
    </div>
</div>
<div class="say-something-aera pt-50 pb-50 fix">
    <div class="container">
        <div class="row justify-content-between align-items-center">
            <div class="offset-xl-1 offset-lg-1 col-xl-12 col-lg-12">
                <div class="say-something-cap">
                    <h2 class="mb-3">List Status Projek</h2>

                    <div class="accordion" id="accordionExample">
                        <?php $no=1; foreach ($st_projek as $s) : ?>
                        <div class="card">
                            <div class="card-header" id="heading<?= $no ?>">
                                <h2 class="mb-0">
                                    <button class="btn btn-block text-left" style="background-color: #2461AA" type="button" data-toggle="collapse" data-target="#collapse<?= $no ?>" aria-expanded="true" aria-controls="collapse<?= $no ?>">
                                    <?= $s['nama_status'] ?>
                                    </button>
                                </h2>
                            </div>

                            <div id="collapse<?= $no ?>" class="collapse <?= ($no == 1) ? 'show' : '' ?>" aria-labelledby="heading<?= $no ?>" data-parent="#accordionExample">
                                <div class="card-body">
                                    <?php $list = $this->M_frontend->get_projek($s['id_status_projek'])->result_array() ?>
                                    <table class="table table-bordered table-hover" width="100%" cellspacing="0">
                                        <thead class="thead-light text-center">
                                            <tr>
                                                <th width="5%">No</th>
                                                <th width="10%">Nama Projek</th>
                                                <th width="10%">Instansi</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $i=1; foreach ($list as $l): ?>
                                                <tr>
                                                    <td align="center"><?= $i ?></td>
                                                    <td><?= $l['nama_sub_projek'] ?></td>
                                                    <td><?= $l['instansi'] ?></td>
                                                </tr>
                                            <?php $i++; endforeach; ?>    
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <?php $no++; endforeach; ?>

                    </div>

                    <h2 class="mb-3" style="margin-top: 50px;">Projek Perbulan</h2>
                    <mark>Bulan <?= $bln_krg ?> s/d <?= $bln_skrg ?></mark>

                    <div class="pricing-card-area mt-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-12 col-lg-12 col-md-12">
                                    <div class="card">
                                        <div class="card-body table-responsive">
                                            <table class="table table-bordered table-hover tabel_bulan" width="100%" cellspacing="0">
                                                <thead class="thead-light text-center">
                                                    <tr>
                                                        <th>No</th>
                                                        <th>Bulan</th>
                                                        <th>Jumlah Projek</th>
                                                        <th>Detail</th>
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
    <!-- shape -->
    <div class="say-shape">
        <img src="<?= base_url() ?>template/assets_frontend/img/shape/say-shape-left.png" alt="" class="say-shape1 rotateme d-none d-xl-block">
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="modal_projek" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
        <div class="modal-header text-white">
            <h5 class="modal-title font-weight-bold" id="judul_modal"></h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" class="mr-2 text-dark">&times;</span>
            </button>
        </div>
        <div class="modal-body table-responsive">
            <input type="hidden" name="id_pegawai" id="id_pegawai">
            <table class="table table-bordered table-hover tabel_list_projek" width="100%" cellspacing="0">
                <thead class="thead-light text-center">
                    <tr>
                        <th width="5%">No</th>
                        <th width="20%">Nama Projek</th>
                        <th width="20%">Instansi</th>
                        <th width="20%">Persentase</th>
                    </tr>
                </thead>
                <tbody>
                        
                </tbody>
            </table>
        </div>
        <div class="modal-footer">
            <!-- <button type="button" class="btn h-50" style="background-color: #2461AA" data-dismiss="modal">Close</button> -->
            <!-- <button class="button rounded-0 primary-bg text-white w-50 btn_1 boxed-btn" type="button" data-dismiss="modal">Close</button> -->
        </div>
    </div>
  </div>
</div>

<script>

    $(document).ready(function () {

        // 18-05-2020
        Morris.Donut({
            element: 'donut-example',
            data: <?= $detail ?>,
            labelColor: 'white',
            colors: [
                '#2461AA',
                '#D31122',
                '#ecc410',
                '#00b300'
            ],
            formatter: function (y, data) { return y+" Projek" }
        });

        // 19-05-2020
            // menampilkan data tim projek
            var tabel_bulan  = $('.tabel_bulan').DataTable({
                "processing"    : true,
                "ajax"          : "tampil_list_bulan_projek",
                stateSave       : true,
                "order"         : [[ 0, 'asc']],
                "columnDefs"     : [{
                    "targets"       : [3],
                    "orderable"     : false
                }, {
                    "targets"       : [3],
                    "className"     : "text-center"
                }]
            });

            // menampilkan detail projek
            $('.tabel_bulan').on('click', '.detail', function () {

                var bln     = $(this).data('id');
                var bulan   = $(this).attr('bulan');

                // menampilkan data list modul
                var tabel_list_projek  = $('.tabel_list_projek').DataTable({
                    "processing"    : true,
                    "serverSide"    : true,
                    "ajax"          : {
                        "url"   : "tampil_list_projek_bulan",
                        "type"  : "POST",
                        "data"  : function (data) {
                            data.bln = bln;
                        }
                    },
                    "order"         : [[ 0, 'asc']],
                    "columnDefs"     : [{
                        "targets"       : [0],
                        "orderable"     : false
                    }, {
                        "targets"       : [0],
                        "className"     : "text-center"
                    }],
                    "bDestroy": true
                });

                $('#modal_projek').modal('show');
                $('#judul_modal').text('Projek Bulan '+bulan);

            })

        // 18-05-2020
        Highcharts.chart('container', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            title: {
                text: 'Total Projek'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.y}</b>'
            },
            accessibility: {
                point: {
                valueSuffix: '%'
                }
            },
            plotOptions: {
                pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.y}'
                }
                }
            },
            series: [{
                name: 'Total',
                colorByPoint: true,
                data: <?= $detail ?>
                }]
        });

    })
    
</script>