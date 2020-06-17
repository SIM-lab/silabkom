<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">User</h3>

            <div class="box-tools pull-right">
              <?php echo button('load_silent("cms/berita/show_addForm/","#content")','Add New User','btn btn-success','data-toggle="tooltip" title="Add New User"');?> 
            </div>
          </div>

          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>Waktu</th>
                <th>Judul</th>
                <th>Gambar</th>
                <th>Isi</th>
              </thead>
              <tbody>
          <?php 
          foreach($berita->result() as $row):             
          ?>
          <tr>
            <td><?=$row->waktu?></td>
            <td><?=$row->judul?></td>
            <td><?=$row->gambar?></td>
            <td><?=$row->isi?></td>
            <td>
            <?php echo button('load_silent("cms/berita/show_editForm/'.$row->id.'","#content")','Edit','btn btn-info','data-toggle="tooltip" title="Edit User"');?> 
						</td>
					</tr>

				<?php endforeach;?>
				</tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>