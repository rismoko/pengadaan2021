<!-- Modal -->
<div class="modal fade" id="ubahPasswordSup">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ganti Password</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
           <form action="/ubahPasswordSup" method="post" role="form">
              {{csrf_field()}}
            <div class="modal-body">
              <div class="card-body">
                 
                  <div class="form-group">
                    <label>Password Lama</label>
                    <input type="password" name="passwordlama" class="form-control" id="passwordlama" placeholder="Masukan Password">
                  </div>

                   <div class="form-group">
                    <label>Password Baru</label>
                    <input type="password" name="password" class="form-control" id="password" placeholder="Masukan Password">
                  </div>
                 
              
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
              <button type="submit" class="btn btn-primary">Simpan Data</button>
            </div>
          </div>
            </form>
      </div>
      
    </div>
  </div>
</div>