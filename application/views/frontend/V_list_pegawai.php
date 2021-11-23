<style>
    .btn::before {
        background: #ecc410;
    }
    @media (min-width: 500px) {
        .available-app-area {
            margin-top: 80px !important; 
            height: 700px !important;
        }

        #donut-pegawai {
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
        #donut-pegawai {
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
        #donut-pegawai {
            margin-top: 15px;
        }
    }
</style> 
<div class="available-app-area" style="margin-top: 150px;height: 500px;">
    <div class="container" style="margin-top: -150px;">
        <div class="row d-flex justify-content-between">
            <div class="col-xl-5 col-lg-6">
                <div class="app-caption">
                    <div id="donut-pegawai"></div>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 text-center">
                <div class="hero__caption mt-5">
                    <h1 style="color: white">Diagram Projek Pegawai</h1>
                    <h5 style="color: white" class="mt-5">Menampilkan banyaknya projek yang dikerjakan pegawai serta progres projeknya.</h5>
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
<!-- Say Something Start -->
<div class="say-something-aera pt-50 pb-50 fix">
    <div class="container">
        <div class="row justify-content-between align-items-center">
            <div class="offset-xl-1 offset-lg-1 col-xl-12 col-lg-12">
                <div class="say-something-cap">
                    <h2 class="mb-3">List Pegawai</h2>
                    <div class="card table-responsive mt-3">
                        <div class="card-body">
                            <table class="table table-bordered table-hover tabel_progres_pegawai" width="100%" cellspacing="0">
                                <thead class="thead-light text-center">
                                    <tr>
                                        <th width="5%">No</th>
                                        <th width="10%">Nama Pegawai</th>
                                        <th width="10%">Jumlah Projek</th>
                                        <th width="10%">Lihat</th>
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
    </div>
  </div>
</div>

<script>

    $(document).ready(function () {

        // 19-05-2020
            // menampilkan chart donut pegawai
            Morris.Donut({
                element: 'donut-pegawai',
                data: <?= $pegawai ?>,
                labelColor: 'white',
                colors: [
                    '#FF4F2D',
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
                formatter: function (y, data) { return y+" Projek" }
            });

        // 08-04-2020
            // menampilkan tabel_progress_pegawai
            var tabel_progres_pegawai = $('.tabel_progres_pegawai').DataTable({
                "processing"        : true,
                "serverSide"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_projek_pegawai",
                    "type"  : "POST"
                },

                "columnDefs"        : [{
                    "targets"   : [0,3],
                    "orderable" : false
                }, {
                    'targets'   : [0,3],
                    'className' : 'text-center',
                }]

            })

            $('.tabel_progres_pegawai').on('click', '.lihat-progres', function () {

                var nm_pegawai = $(this).attr('nm_pegawai');
                var id_pegawai = $(this).data('id');

                // menampilkan data list modul
                var tabel_list_projek  = $('.tabel_list_projek').DataTable({
                    "processing"    : true,
                    "serverSide"    : true,
                    "ajax"          : {
                        "url"   : "tampil_list_projek",
                        "type"  : "POST",
                        "data"  : function (data) {
                            data.id_pegawai = id_pegawai;
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
                $('#judul_modal').text('Projek '+nm_pegawai);

            })

    })

</script>