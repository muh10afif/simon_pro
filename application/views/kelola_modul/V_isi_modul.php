<div class="modal-header bg-warning text-white">
    <h5 class="modal-title font-weight-bold" id="judul_modal">Isi Modul <?= $nama_modul ?></h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true" class="mr-2 text-dark">&times;</span>
    </button>
</div>

<div class="modal-body isi_modal">

    <table class="table table-bordered table-hover" width="100%" cellspacing="0">
        <thead class="thead-light">
            <tr>
                <th width="5%">No</th>
                <th width="20%">Isi Modul</th>
            </tr>
        </thead>
        <tbody>
            <?php $no=1; foreach ($detail as $d): ?>
                <tr>
                    <td align="center"><?= $no ?>.</td>
                    <td><?= $d['isi_modul'] ?></td>
                </tr>
            <?php $no++; endforeach; ?>
        </tbody>
    </table>

</div>
    
<div class="modal-footer">
    <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
</div>