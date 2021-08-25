<!-- Modal -->
<div class="modal fade" id="ubahModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ubah Data Pengadaan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      </div>
      <form action="/ubahPengadaan" method="post" role="form" enctype="multipart/form-data">
              {{csrf_field()}}
              <input type="hidden" name="id_pengadaan" id="id_pengadaan" class="id_pengadaan">
            <div class="modal-body">
              <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail">Nama Pengadaan</label>
                    <input type="text" name="u_nama_pengadaan" class="form-control nama_pengadaan" id="u_nama_pengadaan" placeholder="Masukan Nama Pengadaan">
                  </div>

                  <div class="form-group">
                     <label for="exampleInputEmail">Deskripsi</label>
                    <textarea id = "u_deskripsi" name="u_deskripsi" class="form-control deskripsi"></textarea>
                  </div>

                   <div class="form-group">
                    <label>Anggaran: <input type="" class="labelRp" disable style="border:none; background-color: white; color: black;"></label>
                    <input type="text" name="u_anggaran" class="form-control anggaran" id="u_anggaran" placeholder="Masukan Anggaran" onkeyup="curency2()">
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