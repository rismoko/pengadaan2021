<!-- Modal -->
<div class="modal fade" id="pengajuanModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Pengajuan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="/tambahPengajuan" method="post" role="form" enctype="multipart/form-data">
              {{csrf_field()}}
              <input type="hidden" name="id_pengadaan" id="id_pengadaan" class="id_pengadaan">
            <div class="modal-body">
              <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail">Nama Pengadaan</label>
                    <input type="text" name="nama_pengadaan" class="form-control nama_pengadaan" id="nama_pengadaan" placeholder="Masukan Nama Pengadaan" disabled>
                  </div>

                   <div class="form-group">
                    <label>Anggaran: <input type="" class="labelRp" disable style="border:none; background-color: white; color: black;"></label>
                    <input type="text" name="anggaran" class="form-control anggaran" id="anggaran" placeholder="Masukan Anggaran" onkeyup="curency()">
                  </div>

                 
                  <div class="form-group">
                    <label for="exampleInputPassword1">Proposal</label>
                    <input type="file" name="proposal" class="form-control" id="proposal" placeholder="Password" accept="application/pdf">
                  </div>

                  
                 
              
            </div>
          </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
              <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
            </form>
    </div>
  </div>
</div>