<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header p-3"><h4 id="judul" class="font-weight-bold">Data Projek</h4></div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover" id="tabel_master_dt_projek" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                        <th width="5%">No</th>
                            <th width="20%">Nama Induk Projek</th>
                            <th width="20%">Nama Projek</th>
                            <th width="7%">Status</th>
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

    $(document).ready(function() {

        // 24-04-2020

            // menampilkan list dt_projek
            var tabel_master_dt_projek = $('#tabel_master_dt_projek').DataTable({
                "processing"        : true,
                "serverSide"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_data_dt_projek",
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


    })

</script>