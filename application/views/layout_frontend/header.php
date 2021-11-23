<style>
    @media (min-width: 500px) {
        #foto {
            width: 20%; 
        }
    }
    @media (min-width: 300px) {
        #foto {
            width: 35%; 
        }
    }
    @media (min-width: 1200px) {
        #foto {
            width: 120%; 
        }
    }
</style>
<header>
    <!-- Header Start -->
    <div class="header-area header-transparrent ">
        <div class="main-header header-sticky">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Logo -->
                    <div class="col-xl-2 col-lg-2 col-md-2">
                        <div class="logo">
                            <a href="<?= base_url() ?>"><img id="foto" src="<?= base_url() ?>template/assets/images/LOGO SIMON PRO-02d.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-xl-10 col-lg-10 col-md-10 mt-2">
                        <!-- Main-menu -->
                        <div class="main-menu f-right d-none d-lg-block">
                            <?php ($judul != '') ? $judul = $judul : $judul = '' ?>
                            <nav class="navbar">
                                <ul id="navigation">    
                                    <li class="<?= ($judul == 'home') ? 'active' : '' ?>"><a href="<?= base_url('C_front_end') ?>">Home</a></li>
                                    <li class="<?= ($judul == 'projek') ? 'active' : '' ?>"><a href="<?= base_url('C_front_end/projek') ?>">Projek</a></li>
                                    <!-- <li class="dropdown <?= ($judul == 'progres' || $judul == 'list_pegawai') ? 'active' : '' ?>"><a href="#">Progres<span class="caret"></span></a>
                                        <ul class="submenu">
                                            <li class="<?= ($judul == 'progres') ? 'active' : '' ?>"><a href="<?= base_url('C_front_end/progres') ?>">Keseluruhan</a></li>
                                            <li class="<?= ($judul == 'list_pegawai') ? 'active' : '' ?>"><a href="<?= base_url('C_front_end/list_pegawai') ?>">Pegawai</a></li>
                                        </ul>
                                    </li> -->
                                    <li class="<?= ($judul == 'progres') ? 'active' : '' ?>"><a href="<?= base_url('C_front_end/progres') ?>">Progres Projek</a></li>
                                    <li class="<?= ($judul == 'list_pegawai') ? 'active' : '' ?>"><a href="<?= base_url('C_front_end/list_pegawai') ?>">Progres Pegawai</a></li>
                                    <!-- <li><a href="#section1">Home</a></li>
                                    <li><a href="#section2">Projek</a></li>
                                    <li><a href="#section3">Progres</a></li> -->
                                    <li><a href="<?= base_url('masuk') ?>"><button class="btn btn-info" style="padding: 20px 10px;">Masuk</button></a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!-- Mobile Menu -->
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->
</header>