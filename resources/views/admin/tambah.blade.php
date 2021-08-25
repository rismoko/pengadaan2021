<div class="modal fade" id="tambahModal">
      <form id="tambahAdmin" action="/tambahAdmin" method="post" role="form" >
      {{ csrf_field() }}
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Tambah Data Admin</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="/tambahAdmin" method="post" role="form">
              {{csrf_field()}}
            <div class="modal-body">
              <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail">Nama</label>
                    <input type="text" name="nama" class="form-control" id="nama" placeholder="Masukan Nama">
                  </div>
                  <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" id="email" placeholder="Masukan email">
                  </div>
                  <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" id="password" placeholder="Password">
                  </div>
                  <div class="form-group">
                    <label>Alamat</label>
                    <textarea name="alamat" id="alamat" class="form-control" rows="3" placeholder="Masukan Alamat Lengkap"></textarea>
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
      </div>
