<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Simon Pro</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="<?= base_url() ?>template/assets/images/icon simon-01.png">

		<!-- CSS here -->
        <?php $this->load->view('layout_frontend/css'); ?>

        <script src="<?= base_url() ?>template/assets_frontend/js/vendor/jquery-1.12.4.min.js"></script>

   </head>

   <body>
       
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="<?= base_url() ?>template/assets/images/LOGO SIMON PRO-02d.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->

    <!-- Header -->
    <?php $this->load->view('layout_frontend/header'); ?>

    <main>

        <?= $konten ?>
     
    </main>

    <!-- Footer -->
    <?php $this->load->view('layout_frontend/footer'); ?>
   
    <!-- JS here -->
    <?php $this->load->view('layout_frontend/js'); ?>
        
    </body>
</html>