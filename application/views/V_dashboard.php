<div class="row">
    <div class="col-md-6 grid-margin stretch-card">
        <div class="card text-white bg-primary shadow">
            <div class="card-body">
            <div class="d-flex justify-content-between pb-2 align-items-center">
                <h2 class="font-weight-semibold mb-0"><?= $induk_projek ?></h2>
                <div class="icon-holder">
                    <i class="mdi mdi-monitor mdi-36px" style="font-size: 25px;"></i>
                </div>
            </div>
            <div class="d-flex justify-content-between">
                <h5 class="font-weight-semibold mb-0">Data Induk Projek</h5>
            </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 grid-margin stretch-card">
        <div class="card text-white bg-success shadow">
            <div class="card-body">
            <div class="d-flex justify-content-between pb-2 align-items-center">
                <h2 class="font-weight-semibold mb-0"><?= $data_projek ?></h2>
                <div class="icon-holder">
                    <i class="mdi mdi-monitor-multiple mdi-36px" style="font-size: 25px;"></i>
                </div>
            </div>
            <div class="d-flex justify-content-between">
                <h5 class="font-weight-semibold mb-0">Data Projek</h5>
            </div>
            </div>
        </div>
    </div>
</div>

<div class="row">

    <?php $i=0; foreach ($status as $s):

        $warna  = ['primary', 'danger', 'info', 'warning', 'info', 'warning', 'success', 'danger', 'dark'];
        $icon   = ['mdi-human-handsup', 'mdi-human-greeting', 'mdi-bell-ring-outline', 'mdi-play-circle-outline', 'mdi-bell-ring-outline', 'mdi-play-circle-outline', 'mdi-marker-check', 'mdi-cancel', 'mdi-lightbulb-on'];

        // $jml = $this->M_dashboard->cari_data_projek('data_projek', array('t.status' => $s['id_status_projek']))->num_rows();
        $jml = $this->M_dashboard->cari_data_projek('data_projek', $s['id_status_projek'])->num_rows();

        ?>
        <div class="col-md-4 grid-margin stretch-card">
            <div class="card <?= "text-".$warna[$i] ?> shadow">
                <div class="card-body">
                <div class="d-flex justify-content-between pb-2 align-items-center">
                    <h2 class="font-weight-semibold mb-0"><?= $jml ?></h2>
                    <div class="icon-holder">
                        <i class="mdi <?= $icon[$i] ?> mdi-36px" style="font-size: 25px;"></i>
                    </div>
                </div>
                <div class="d-flex justify-content-between">
                    <h5 class="font-weight-semibold mb-0"><?= $s['nama_status'] ?></h5>
                </div>
                <div class="progress progress-md mt-3">
                    <div class="progress-bar <?= "bg-".$warna[$i] ?>" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                </div>
            </div>
        </div>
    <?php $i++; endforeach; ?>

    
    <!-- <div class="col-md-3 grid-margin stretch-card">
        <div class="card text-danger shadow">
            <div class="card-body">
            <div class="d-flex justify-content-between pb-2 align-items-center">
                <h2 class="font-weight-semibold mb-0"><?= $postponed ?></h2>
                <div class="icon-holder">
                    <i class="mdi mdi-close-circle mdi-36px" style="font-size: 25px;"></i>
                </div>
            </div>
            <div class="d-flex justify-content-between">
                <h5 class="font-weight-semibold mb-0">Postponed</h5>
            </div>
            <div class="progress progress-md mt-3">
                <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            </div>
        </div>
    </div>
    <div class="col-md-3 grid-margin stretch-card">
        <div class="card text-warning shadow">
            <div class="card-body">
            <div class="d-flex justify-content-between pb-2 align-items-center">
                <h2 class="font-weight-semibold mb-0"><?= $waiting_list ?></h2>
                <div class="icon-holder">
                    <i class="mdi mdi-clock-alert mdi-36px" style="font-size: 25px;"></i>
                </div>
            </div>
            <div class="d-flex justify-content-between">
                <h5 class="font-weight-semibold mb-0">Waiting List</h5>
            </div>
            <div class="progress progress-md mt-3">
                <div class="progress-bar bg-warning" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            </div>
        </div>
    </div>
    <div class="col-md-3 grid-margin stretch-card">
        <div class="card text-primary shadow">
            <div class="card-body">
            <div class="d-flex justify-content-between pb-2 align-items-center">
                <h2 class="font-weight-semibold mb-0"><?= $clear_project ?></h2>
                <div class="icon-holder">
                    <i class="mdi mdi-checkbox-multiple-marked-circle mdi-36px" style="font-size: 25px;"></i>
                </div>
            </div>
            <div class="d-flex justify-content-between">
                <h5 class="font-weight-semibold mb-0">Clear Project</h5>
            </div>
            <div class="progress progress-md mt-3">
                <div class="progress-bar bg-primary" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            </div>
        </div>
    </div> -->
</div>