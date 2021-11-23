<style>
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
            margin-top: 80px;
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
<div class="available-app-area" style="margin-top: 150px;height: 500px;">
    <div class="container gm" style="margin-top: -150px;">
        <div class="row d-flex justify-content-between">
            <div class="col-xl-5 col-lg-6">
                <div class="app-caption">
                    <div id="donut-example"></div>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 text-center">
                <div class="hero__caption mt-5">
                    <h1 style="color: white">Diagram Progres Projek</h1>
                    <h5 style="color: white" class="mt-5">Menampilkan progres tiap projek yang sedang dikerjakan.</h5>
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
                <h2 class="mb-4">Projek Per Tahap</h2>
                <div class="row mb-5">
                    <div class="col-md-6 mt-3">
                        <div class="grid-margin stretch-card">
                            <div class="card text-success shadow">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between pb-2 align-items-center">
                                        <div class="row">
                                            <div class="col-md-5"><h5 class="font-weight-bold mb-0">Clear Project</h5></div>
                                            <div class="col-md-7"><h5 class="font-weight-semibold mb-0">: <?= $rnd ?> Project</h5></div>
                                            <div class="col-md-5"><h5 class="font-weight-bold mb-0">Incharge Project</h5></div>
                                            <div class="col-md-7"><h5 class="font-weight-semibold mb-0">: <?= $rnd_p ?> Project</h5></div>
                                        </div>
                                        <div class="icon-holder">
                                            <!-- <i class="mdi mdi-google-analytics mdi-36px" style="font-size: 25px;"></i> -->
                                            <div class="percent_rnd" style="width:100px;height:100px;">
                                                <p style="display:none;"><?= ($rnd_p == 0) ? '0' : ($rnd / $rnd_p) * 100 ?>%</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-between">
                                        <!-- <h4 class="font-weight-bold mb-0 text-success">Research and Development</h4> -->
                                        <h4 class="font-weight-bold mb-0 text-success">Analis</h4>
                                    </div>
                                    <div class="progress progress-md mt-3">
                                        <div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mt-3">
                        <div class="grid-margin stretch-card">
                            <div class="card text-primary shadow">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between pb-2 align-items-center">
                                        <div class="row">
                                            <div class="col-md-5"><h5 class="font-weight-bold mb-0">Clear Project</h5></div>
                                            <div class="col-md-7"><h5 class="font-weight-semibold mb-0">: <?= $tech ?> Project</h5></div>
                                            <div class="col-md-5"><h5 class="font-weight-bold mb-0">Incharge Project</h5></div>
                                            <div class="col-md-7"><h5 class="font-weight-semibold mb-0">: <?= $tech_p ?> Project</h5></div>
                                        </div>
                                        <div class="icon-holder">
                                            <!-- <i class="mdi mdi-grease-pencil mdi-36px" style="font-size: 25px;"></i> -->
                                            <div class="percent_tech" style="width:100px;height:100px;">
                                                <p style="display:none;"><?= ($tech_p == 0) ? '0' : ($tech / $tech_p) * 100 ?>%</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-between">
                                        <!-- <h4 class="font-weight-bold mb-0 text-primary">Technology</h4> -->
                                        <h4 class="font-weight-bold mb-0 text-primary">Build</h4>
                                    </div>
                                    <div class="progress progress-md mt-3">
                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mt-3">
                        <div class="grid-margin stretch-card">
                            <div class="card text-danger shadow">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between pb-2 align-items-center">
                                        <div class="row">
                                            <div class="col-md-5"><h5 class="font-weight-bold mb-0">Clear Project</h5></div>
                                            <div class="col-md-7"><h5 class="font-weight-semibold mb-0">: <?= $mkt ?> Project</h5></div>
                                            <div class="col-md-5"><h5 class="font-weight-bold mb-0">Incharge Project</h5></div>
                                            <div class="col-md-7"><h5 class="font-weight-semibold mb-0">: <?= $mkt_p ?> Project</h5></div>
                                        </div>
                                        <div class="icon-holder">
                                            <!-- <i class="mdi mdi-city mdi-36px" style="font-size: 25px;"></i> -->
                                            <div class="percent_mkt" style="width:100px;height:100px;">
                                                <p style="display:none;"><?= ($mkt_p == 0) ? '0' : ($mkt / $mkt_p) * 100 ?>%</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-between">
                                        <!-- <h4 class="font-weight-bold mb-0 text-danger">Marketing</h4> -->
                                        <h4 class="font-weight-bold mb-0 text-danger">Desainer</h4>
                                    </div>
                                    <div class="progress progress-md mt-3">
                                        <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mt-3">
                        <div class="grid-margin stretch-card">
                            <div class="card text-warning shadow">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between pb-2 align-items-center">
                                        <div class="row">
                                            <div class="col-md-5"><h5 class="font-weight-bold mb-0">Clear Project</h5></div>
                                            <div class="col-md-7"><h5 class="font-weight-semibold mb-0">: <?= $opr ?> Project</h5></div>
                                            <div class="col-md-5"><h5 class="font-weight-bold mb-0">Incharge Project</h5></div>
                                            <div class="col-md-7"><h5 class="font-weight-semibold mb-0">: <?= $opr_p ?> Project</h5></div>
                                        </div>
                                        <div class="icon-holder">
                                            <!-- <i class="mdi mdi-arrow-right-drop-circle mdi-36px" style="font-size: 25px;"></i> -->
                                            <div class="percent_opr" style="width:100px;height:100px;">
                                                <p style="display:none;"><?= ($opr_p == 0) ? '0' : ($opr / $opr_p) * 100 ?>%</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-between">
                                        <!-- <h4 class="font-weight-bold mb-0 text-warning">Operational</h4> -->
                                        <h4 class="font-weight-bold mb-0 text-warning">Tester</h4>
                                    </div>
                                    <div class="progress progress-md mt-3">
                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <div class="say-something-cap">
                    <h2 class="mb-4">Data Progres Projek</h2>
                    <div class="card table-responsive mt-3">
                        <div class="card-body">
                            <table class="table table-bordered table-hover tabel_progres" width="100%" cellspacing="0">
                                <thead class="thead-light text-center">
                                    <tr>
                                        <th width="5%">No</th>
                                        <th width="10%">Nama Projek</th>
                                        <th width="10%">Instansi</th>
                                        <th width="10%">Persentase</th>
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
    <!-- shape -->
    <div class="say-shape">
        <img src="<?= base_url() ?>template/assets_frontend/img/shape/say-shape-left.png" alt="" class="say-shape1 rotateme d-none d-xl-block">
    </div>
</div>

<script>
    $(document).ready(function () {

        // 20-05-2020
            $('.percent_rnd').percentageLoader({
                valElement: 'p',
                strokeWidth: 10,
                bgColor: '#d9d9d9',
                ringColor: '#28a745',
                textColor: '#2C3E50',
                fontSize: '20px',
                fontWeight: 'normal'
            });
            $('.percent_tech').percentageLoader({
                valElement: 'p',
                strokeWidth: 10,
                bgColor: '#d9d9d9',
                ringColor: '#007bff',
                textColor: '#2C3E50',
                fontSize: '20px',
                fontWeight: 'normal'
            });
            $('.percent_mkt').percentageLoader({
                valElement: 'p',
                strokeWidth: 10,
                bgColor: '#d9d9d9',
                ringColor: '#dc3545',
                textColor: '#2C3E50',
                fontSize: '20px',
                fontWeight: 'normal'
            });
            $('.percent_opr').percentageLoader({
                valElement: 'p',
                strokeWidth: 10,
                bgColor: '#d9d9d9',
                ringColor: '#ffc107',
                textColor: '#2C3E50',
                fontSize: '20px',
                fontWeight: 'normal'
            });

        // 18-05-2020
            // menampilkan chart donut progres 
            Morris.Donut({
                element: 'donut-example',
                data: <?= $projek ?>,
                labelColor: 'white',
                colors: [
                    '#00D748',
                    '#2461AA',
                    '#D31122',
                    '#ecc410',
                    '#00b300',
                    '#F20C90',
                    '#FE5C36',
                    '#00A9A4',
                    '#072F54',
                    '#58B1CE',
                    '#19C0FF',
                    '#FF4F2D',
                    '#00D748'
                    
                ],
                formatter: function (y, data) { return y+" %" }
            });
        
        // 16-05-2020
            // menampilkan data progres
            var tabel_progres = $('.tabel_progres').DataTable({
                "processing"        : true,
                "serverSide"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_persentase_projek_all",
                    "type"  : "POST"
                },

                "columnDefs"        : [{
                    "targets"   : [0],
                    "orderable" : false
                }, {
                    'targets'   : [0],
                    'className' : 'text-center',
                }]

            })

    })
</script>