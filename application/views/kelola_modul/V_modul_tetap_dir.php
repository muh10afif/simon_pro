<div class="row f_modul_tetap">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header p-3">
                <h4 id="judul" class="font-weight-bold">Data Modul Tetap</h4>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-bordered table-hover" id="tabel_modul_tetap" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th width="5%">No</th>
                            <th width="20%">Nama Posisi</th>
                            <th width="7%">Jumlah Modul</th>
                            <th width="5%">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="modal_detail_modul" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg w-50" role="document">
    <div class="modal-content isi_modal">
      
    </div>
  </div>
</div>

<script>

    $(document).ready(function() {

        // 24-04-2020

            // menampilkan data projek
            var tabel_modul_tetap = $('#tabel_modul_tetap').DataTable({
                "processing"        : true,
                "serverSide"        : true,
                "order"             : [],
                "ajax"              : {
                    "url"   : "tampil_modul_tetap",
                    "type"  : "POST"
                },

                "columnDefs"        : [{
                    "targets"   : [0,3],
                    "orderable" : false
                }, {
                    'targets'   : [0,2,3],
                    'className' : 'text-center',
                }]

            })

            // menampilkan detail dengan modul
            $('#tabel_modul_tetap').on('click', '.lihat-modul', function () {

                var id_posisi = $(this).data('id');

                console.log(id_posisi);

                $.ajax({
                    url     : "ambil_detail_modul_tetap",
                    type    : "POST",
                    beforeSend  : function () {
                        swal({
                            title   : 'Menunggu',
                            html    : 'Memproses Data',
                            onOpen  : () => {
                                swal.showLoading();
                            }
                        })
                    },
                    data    : {id_posisi:id_posisi},
                    success : function (data) {

                        swal.close();

                        $('.isi_modal').html(data);
                        
                        $('#modal_detail_modul').modal('show');

                    }
                })

            })

    });

</script>