<nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
    <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
        <a class="navbar-brand brand-logo" style="margin-top: -15px" href="index.html">
        <img src="<?= base_url() ?>template/assets/images/LOGO SIMON PRO-02.png" alt="logo" /> </a>
        <a class="navbar-brand brand-logo-mini" href="index.html">
        <img src="<?= base_url() ?>template/assets/images/icon simon-01.png" alt="logo" /> </a>
        <!-- <h3 class="navbar-brand brand-logo mt-1">SIMON PRO</h3> -->
        <!-- <h3 class="avbar-brand brand-logo-mini mt-1">SIMON PRO</h3> -->
    </div>
    <div class="navbar-menu-wrapper d-flex align-items-center">
        <ul class="navbar-nav">
            <li class="nav-item font-weight-semibold d-lg-block" style="font-size: 22px; color: #2461AA">Sistem Monitoring Projek</li>
        </ul>
        <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown d-xl-inline-block user-dropdown">
            <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
            <img class="img-xs rounded-circle" src="<?= base_url() ?>template/assets/images/logo_face.png" alt="Profile image"> </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                <div class="dropdown-header text-center">
                    <img class="img-md rounded-circle" src="<?= base_url() ?>template/assets/images/logo_face.png" alt="Profile image">
                    <?php $us = $this->session->userdata('userdata');?>
                    <p class="mb-1 mt-3 font-weight-semibold"><?= wordwrap($us['nama_pegawai'],20,"<br>\n"); ?></p>
                    <p class="font-weight-light text-muted mb-0"><?= $this->session->userdata('email'); ?></p>
                </div>
                <a class="dropdown-item d-flex justify-content-center" href="<?= base_url('C_login/logout') ?>">Logout<i class="dropdown-item-icon ti-power-off"></i></a>
            </div>
        </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
        <span class="mdi mdi-menu"></span>
        </button>
    </div>
    </nav>