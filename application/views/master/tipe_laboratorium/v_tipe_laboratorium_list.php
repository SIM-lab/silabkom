<?php require ('application/views/kotak.php') ?>
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Master Kelola Tipe Laboratorium </h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("master/tipe_laboratorium/form/base",)','Add New Laboratorium','btn btn-success');
              } else {
                # code...
              }
              ?>
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="lab" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Jenis Laboratorium</th>
                <th>Foto</th>
                <th>Koordinator</th>
                <th>Laboran</th>
                <th>Alamat</th>
                <th>Email</th>
                <th>Anggota</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($tipe_laboratorium->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->jenis?></td>
            <td align="center"><img src="<?php echo base_url().$row->foto ?>" class="file-preview-image"height="50" width="220"></td>
            <td align="center"><?=$row->koordinator?></td>
            <td align="center"><?=$row->laboran?></td>
            <td align="center"><?=$row->alamat?></td>
            <td align="center"><?=$row->email?></td>
            <td align="center"><?=$row->anggota?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("master/tipe_laboratorium/form/sub/'.$row->id.'","#modal")','','btn btn-success fa fa-pencil','data-toggle="tooltip" title="Edit"');
              } else {
                
              }
              ?> 
              <a href="<?= site_url('master/tipe_laboratorium/delete/'.$row->id) ?>" class="btn btn-danger fa fa-trash" onclick="return confirm('Apakah Anda Yakin?')"></a>
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
