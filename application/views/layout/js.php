<!-- plugins:js -->
<script src="<?= base_url() ?>template/assets/vendors/js/vendor.bundle.base.js"></script>
<script src="<?= base_url() ?>template/assets/vendors/js/vendor.bundle.addons.js"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="<?= base_url() ?>template/assets/js/shared/off-canvas.js"></script>
<script src="<?= base_url() ?>template/assets/js/shared/misc.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="<?= base_url() ?>template/assets/js/demo_1/dashboard.js"></script>
<script type="text/javascript" src="<?= base_url() ?>template/assets/datatable/datatables.js"></script>
<!-- select2 -->
<script src="<?= base_url() ?>template/assets/select2/select2.min.js"></script>
<!--  Plugin for Sweet Alert -->
<script src="<?php echo base_url() ?>template/assets/sweetalert/sweetalert2.js"></script>
<!-- datepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
<script src="<?php echo base_url() ?>template/assets/dateFormat/dateFormat.min.js"></script>
<script src="<?php echo base_url() ?>template/assets/datepicker/bootstrap-datepicker.js"></script>
<!-- boostrap slider -->
<script src="<?php echo base_url() ?>template/assets/bootstrap-slider/js/bootstrap-slider.min.js"></script>
<!-- include summernote css/js -->
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-bs4.min.js"></script>
<!-- mask nnumber -->
<script src="<?php echo base_url() ?>template/assets/mask_number/jquery-mask-as-number.min.js"></script>
<!-- numeric -->
<script src="<?php echo base_url() ?>template/assets/numeric/jquery.numeric-min.js"></script>

<script src="<?php echo base_url() ?>template/assets/spinner/jquery-spinner.min.js" type="text/javascript"></script>

<script>
    $(document).ready( function () {
        // $('.table').DataTable();

        $('.datepicker2').datepicker({
            autoclose     : true,
            format        : "dd-M-yyyy",
            todayHighlight: true
        });

        $('.datepicker3').datepicker({
            autoclose     : true,
            format        : "yyyy-mm-dd",
            todayHighlight: true
        });

        $('.bulan_date').datepicker({
            autoclose       : true,
            format          : "MM yyyy",
            viewMode        : "months", 
            minViewMode     : "months",
            todayHighlight  : true
        });

    } );

    // $('body').tooltip({selector: '[data-toggle="tooltip"]', trigger: "hover"});

    $('select').each(function () {
        $(this).select2({
            theme       : 'bootstrap4',
            width       : 'style',
            placeholder : $(this).attr('placeholder'),
            allowClear  : Boolean($(this).data('allow-clear'))
        });
    });
</script>