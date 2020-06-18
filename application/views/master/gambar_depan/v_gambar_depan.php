<?php require_once ('application/views/kotak/kotak.php');?>
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Master Kelola background Login</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("master/gambar_depan/form/base","#modal")','Add Background','btn btn-success');
              } else {
                # code...
              }
              ?>
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="lab" class="table table-striped">
              <thead>
                <th>Background</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($gambar_depan->result() as $row): ?>
          <tr>
            <td align="center"><img src="<?php echo base_url().$row->foto; ?>" class="file-preview-image"></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("master/gambar_depan/form/sub/'.$row->id.'","#modal")','','btn btn-success fa fa-pencil','data-toggle="tooltip" title="Edit"');
              } else {
                
              }
              ?> 
              <a href="<?= site_url('master/gambar_depan/delete/'.$row->id) ?>" class="btn btn-danger fa fa-trash" onclick="return confirm('Apakah Anda Yakin?')"></a>
              </a>
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
    var table = $('#lab').DataTable( {
      "ordering": false,
    } );
  });
</script>
