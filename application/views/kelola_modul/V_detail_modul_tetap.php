<div class="modal-header bg-warning text-white">
    <h5 class="modal-title font-weight-bold" id="judul_modal">Detail Modul Posisi <?= $nama_posisi ?></h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true" class="mr-2 text-dark">&times;</span>
    </button>
</div>

<div class="modal-body isi_modal">

    <table class="table table-bordered table-hover" id="tabel_modul_tetap" width="100%" cellspacing="0">
        <thead class="thead-light">
            <tr>
                <th width="5%">No</th>
                <th width="20%">Nama Modul</th>
                <th width="7%">Persentase</th>
            </tr>
        </thead>
        <tbody>
            <?php $no=1; foreach ($detail as $d): ?>
                <tr>
                    <td align="center"><?= $no ?>.</td>
                    <td><?= $d['nama_modul'] ?></td>
                    <td align="center"><?= $d['persentase'] ?> %</td>
                </tr>
            <?php $no++; endforeach; ?>
        </tbody>
    </table>

</div>
    
<div class="modal-footer">
    <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
</div>