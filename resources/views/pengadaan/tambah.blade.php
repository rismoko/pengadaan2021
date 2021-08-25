<!-- Modal -->
<div class="modal fade" id="pengadaanModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Data Pengadaan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      </div>
      <form action="/tambahPengadaan" method="post" role="form" enctype="multipart/form-data">
              {{csrf_field()}}
            <div class="modal-body">
              <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail">Nama Pengadaan</label>
                    <input type="text" name="nama_pengadaan" class="form-control" id="nama_pengadaan" placeholder="Masukan Nama Pengadaan">
                  </div>

                  <div class="form-group">
                     <label for="exampleInputEmail">Deskripsi</label>
                    <textarea id = "deskripsi" name="deskripsi" class="form-control"></textarea>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputPassword1">Gambar</label>
                    <input type="file" name="gambar" class="form-control" id="gambar" placeholder="Password" accept="image/png, image/gif">
                  </div>

                   <div class="form-group">
                    <label>Anggaran: <input type="" class="labelRp" disable style="border:none; background-color: white; color: black;"></label>
                    <input type="text" name="anggaran" class="form-control" id="anggaran" placeholder="Masukan Anggaran" onkeyup="curency()">
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