<?php $style_1 = 'style="color: #fff; background: #2461AA;"'; 
      $style_2 = 'style="color: #2461AA; font-weight: bold"';
?>
<nav class="sidebar sidebar-offcanvas shadow" id="sidebar" style="position: fixed;">
    <ul class="nav">
    <li class="nav-item nav-profile">
        <a href="#" class="nav-link">
        <div class="profile-image">
            <img class="img-xs rounded-circle" src="<?= base_url() ?>template/assets/images/logo_face.png" alt="profile image">
            <div class="dot-indicator bg-success"></div>
        </div>
        <div class="text-wrapper">
            <?php $us = $this->session->userdata('userdata');?>

            <p class="profile-name"><?= wordwrap($us['nama_pegawai'],20,"<br>\n"); ?></p>
            <p class="designation"><?= ucwords($us['nama_posisi']) ?></p>
            <p class="designation mt-2"><?= ucwords($us['nama_jabatan']) ?></p>
        </div>
        </a>
    </li>
    <!-- style="color: #fff; background: #2461AA;" -->
    <li class="nav-item nav-category mb-3">Main Menu</li>
    <li class="nav-item" style="margin-top: -10px;">
        <a class="nav-link" <?= ($menu == 'Dashboard') ? $style_1 : '' ?> href="<?= base_url('C_dashboard') ?>">
        <i class="menu-icon typcn typcn-document-text"></i>
        <span class="menu-title">Dashboard</span>
        </a>
    </li>

    <?php $id_posisi    = $this->session->userdata('posisi'); ?>
    <?php $jenis_modul  = $this->session->userdata('jenis_modul'); ?>
    <?php $nm_jabatan   = $this->session->userdata('nama_jabatan'); ?>

    <!-- master -->
    <?php if ($nm_jabatan == 'Manager'): ?>

        <li class="nav-item">
            <a class="nav-link" <?= ($menu == 'Master') ? $style_1 : '' ?> data-toggle="collapse" href="#master" aria-expanded="false" aria-controls="master">
            <i class="menu-icon typcn typcn-coffee"></i>
            <span class="menu-title">Master Data</span>
            <i class="menu-arrow"></i>
            </a>
            <div class="collapse mt-3 mb-3" id="master">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Master Jabatan') ? $style_2 : '' ?> href="<?= base_url('C_master/jabatan') ?>">Jabatan</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Master Posisi') ? $style_2 : '' ?> href="<?= base_url('C_master/posisi') ?>">Posisi</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Master Pegawai') ? $style_2 : '' ?> href="<?= base_url('C_master/pegawai') ?>">Pegawai</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Master User') ? $style_2 : '' ?> href="<?= base_url('C_master/user') ?>">User</a>
                    </li>
                    <!-- <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Master Role') ? $style_2 : '' ?> href="<?= base_url('C_master/role') ?>">Role</a>
                    </li> -->
                </ul>
            </div>
        </li>

    <?php endif; ?>

    <?php if ($nm_jabatan == 'Direktur'): ?>

        <li class="nav-item">
            <a class="nav-link" <?= ($menu == 'Kelola Projek') ? $style_1 : '' ?> data-toggle="collapse" href="#kelola_projek" aria-expanded="false" aria-controls="kelola_projek">
            <i class="menu-icon typcn typcn-document-add"></i>
            <span class="menu-title">Data Projek</span>
            <i class="menu-arrow"></i>
            </a>
            <div class="collapse mt-3 mb-3" id="kelola_projek">
            <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Data Induk Projek') ? $style_2 : '' ?> href="<?= base_url('C_kelola_projek/data_induk_projek') ?>">Data Induk Projek</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Data Projek') ? $style_2 : '' ?> href="<?= base_url('C_kelola_projek/data_projek') ?>">Data Projek</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Tim Projek') ? $style_2 : '' ?> href="<?= base_url('C_kelola_projek/tim_projek') ?>">Tim Projek</a>
                </li>
            </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" <?= ($menu == 'Kelola Modul') ? $style_1 : '' ?> data-toggle="collapse" href="#kelola_modul" aria-expanded="false" aria-controls="kelola_modul">
            <i class="menu-icon typcn typcn-document-add"></i>
            <span class="menu-title">Data Modul</span>
            <i class="menu-arrow"></i>
            </a>
            <div class="collapse mt-3 mb-3" id="kelola_modul">
            <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Modul Tetap') ? $style_2 : '' ?> href="<?= base_url('C_kelola_modul/modul_tetap') ?>">Modul Tetap</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Modul Projek') ? $style_2 : '' ?> href="<?= base_url('C_kelola_modul/modul_projek') ?>">Modul Projek</a>
                </li>
            </ul>
            </div>
        </li>

    <?php endif; ?>

    <?php if ($nm_jabatan == 'Staff' || $nm_jabatan == 'Manager'): ?>

    <li class="nav-item">
        <a class="nav-link" <?= ($menu == 'Kelola Projek') ? $style_1 : '' ?> data-toggle="collapse" href="#kelola_projek" aria-expanded="false" aria-controls="kelola_projek">
        <i class="menu-icon typcn typcn-document-add"></i>
        <span class="menu-title">Kelola Projek</span>
        <i class="menu-arrow"></i>
        </a>
        <div class="collapse mt-3 mb-3" id="kelola_projek">
        <ul class="nav flex-column sub-menu">
            <li class="nav-item">
            <a class="nav-link" <?= ($page == 'Data Induk Projek') ? $style_2 : '' ?> href="<?= base_url('C_kelola_projek/data_induk_projek') ?>">Data Induk Projek</a>
            </li>
            <?php if ($nm_jabatan == 'Manager'): ?>
                <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Data Projek') ? $style_2 : '' ?> href="<?= base_url('C_kelola_projek/data_projek') ?>">Data Projek</a>
                </li>
            <?php else : ?>
                <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Modul Projek') ? $style_2 : '' ?> href="<?= base_url('C_kelola_modul/modul_projek') ?>">Data Projek</a>
                </li>
            <?php endif; ?>
            <li class="nav-item">
            <a class="nav-link" <?= ($page == 'Tim Projek') ? $style_2 : '' ?> href="<?= base_url('C_kelola_projek/tim_projek') ?>">Tim Projek</a>
            </li>
        </ul>
        </div>
    </li>

    <?php endif; ?>

    <?php if ($nm_jabatan == 'Manager'): ?>

        <li class="nav-item">
            <a class="nav-link" <?= ($menu == 'Kelola Modul') ? $style_1 : '' ?> data-toggle="collapse" href="#kelola_modul" aria-expanded="false" aria-controls="kelola_modul">
            <i class="menu-icon typcn typcn-document-add"></i>
            <span class="menu-title">Kelola Modul</span>
            <i class="menu-arrow"></i>
            </a>
            <div class="collapse mt-3 mb-3" id="kelola_modul">
            <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Modul Tetap') ? $style_2 : '' ?> href="<?= base_url('C_kelola_modul/modul_tetap') ?>">Modul Tetap</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Modul Projek') ? $style_2 : '' ?> href="<?= base_url('C_kelola_modul/modul_projek') ?>">Modul Projek</a>
                </li>
            </ul>
            </div>
        </li>
        
    <?php endif; ?>

    <li class="nav-item">
        <a class="nav-link" <?= ($menu == 'Progress Projek') ? $style_1 : '' ?> data-toggle="collapse" href="#progres_projek" aria-expanded="false" aria-controls="progres_projek">
        <i class="menu-icon typcn typcn-document-add"></i>
        <span class="menu-title">Progress Projek</span>
        <i class="menu-arrow"></i>
        </a>
        <div class="collapse mt-3 mb-3" id="progres_projek">
        <ul class="nav flex-column sub-menu">
            <li class="nav-item">
            <a class="nav-link" <?= ($page == 'Persentase Projek') ? $style_2 : '' ?> href="<?= base_url('C_progress_projek/presentase_projek') ?>">Persentase Projek</a>
            </li>
            <?php if ($nm_jabatan == 'Manager' || $nm_jabatan == 'Direktur'): ?>
                <li class="nav-item">
                <a class="nav-link" <?= ($page == 'Progress Karyawan') ? $style_2 : '' ?> href="<?= base_url('C_progress_projek/progress_karyawan') ?>">Progress Karyawan</a>
                </li>
            <?php endif; ?>
        </ul>
        </div>
    </li>
    <li class="nav-item">
        <a class="nav-link" <?= ($menu == 'Pelaporan Harian') ? $style_1 : '' ?> data-toggle="collapse" href="#pelaporan_harian" aria-expanded="false" aria-controls="pelaporan_harian">
        <i class="menu-icon typcn typcn-document-add"></i>
            <span class="menu-title">Pelaporan Harian</span>
        <i class="menu-arrow"></i>
        </a>
        <div class="collapse mt-3 mb-3" id="pelaporan_harian">
            <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                <a class="nav-link" <?= ($page == 'Laporan Per Projek') ? $style_2 : '' ?> href="<?= base_url('C_pelaporan_harian/laporan_per_projek') ?>">Laporan Per Projek</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Laporan Per Pegawai') ? $style_2 : '' ?> href="<?= base_url('C_pelaporan_harian/laporan_per_pegawai') ?>">Laporan Per Pegawai</a>
                </li>
                <!-- <?php if ($nm_jabatan == 'Staff'): ?>
                <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'List Laporan') ? $style_2 : '' ?> href="<?= base_url('C_pelaporan_harian/list_laporan') ?>">List Laporan</a>
                </li>
                <?php endif; ?> -->
                <?php if ($nm_jabatan == 'Manager'): ?>
                    <li class="nav-item">
                    <a class="nav-link" <?= ($page == 'Input Laporan') ? $style_2 : '' ?> href="<?= base_url('C_pelaporan_harian/input_laporan') ?>">Input Laporan</a>
                    </li>
                <?php endif; ?>
            </ul>
        </div>
    </li>
    <li class="nav-item">
        <a class="nav-link" <?= ($menu == 'Rekap') ? $style_1 : '' ?> data-toggle="collapse" href="#rekap" aria-expanded="false" aria-controls="rekap">
        <i class="menu-icon typcn typcn-document-add"></i>
            <span class="menu-title">Rekap</span>
        <i class="menu-arrow"></i>
        </a>
        <div class="collapse mt-3 mb-3" id="rekap">
            <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                <a class="nav-link" <?= ($page == 'Rekap Mingguan') ? $style_2 : '' ?> href="<?= base_url('C_rekap/rekap_mingguan') ?>">Rekap Mingguan</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" <?= ($page == 'Rekap Bulanan') ? $style_2 : '' ?> href="<?= base_url('C_rekap/rekap_bulanan') ?>">Rekap Bulanan</a>
                </li>
            </ul>
        </div>
    </li>
    </ul>
</nav>