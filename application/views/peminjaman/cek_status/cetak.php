<div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
        <center> <div class="cel head-title">
                
                <h3>Status Peminjaman</h3>
                    <div>
                    <td>Universitas Negeri Semarang</td>
                    </div>
                    <div>
                    <td>Semarang</td>
                    </div>
                    <div>
                    <td>NO.Telp 08983924536</td>
                    </div>
            </div></center>

            <div class="box-body">
            <table border="1" style="width: 100%">
              <thead>
                <th width="3%">No</th>
                <th width="6%">ID Peminjaman</th>
                <th width="6%">Kategori Peminjaman</th>
                <th width="6%">Tanggal Pinjam</th>
                <th width="6%">Tanggal kembali</th>
                <th width="5%">Status Peminjaman</th>
                <th width="4%">Status</th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($id->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id_peminjaman?></td>
            <td align="center"><?=$row->kategori_peminjaman?></td>
            <td align="center"><?=$row->tanggal_peminjaman?></td>
            <td align="center"><?=$row->tanggal_kembali?></td>
            <td align="center"><?=$row->status_peminjaman?></td>
            <td align="center"><span class="badge bg-green"><?=$row->status?></td>
          </tr>
        <?php endforeach;?>
        </tbody>
        </table>
      </div>
      </div>
    </div>
    <div class="cel head-title">
                <h5>Terima Kasih Meminjam Alat Di Lab</h5>
    </div>
  <div>
</div>
<script type="text/javascript"> window.print(); 
</script>