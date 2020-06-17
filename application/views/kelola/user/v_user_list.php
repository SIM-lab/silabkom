<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola User</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("kelola/user/form/base","#modal")','Add New Kelola User','btn btn-success');
              } else {
                # code...
              }
              ?>
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>No Induk</th>
                <th>Username</th>
                <th>Nama</th>
                <th>Email</th>
                <th>No Telpon</th>
                <th>Level</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($user->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->no_induk?></td>
            <td align="center"><?=$row->username?></td>
            <td align="center"><?=$row->nama?></td>
            <td align="center"><?=$row->email?></td>
            <td align="center"><?=$row->no_telpon?></td>
            <td align="center"><?=$row->level?></td>
            <td align="center">         
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("kelola/user/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-pencil','data-toggle="tooltip" title="Edit"');
              } else { 
              }
              ?>
              <a href="<?= site_url("kelola/user/delete/".$row->id."","#modal") ?>" class="btn btn-danger fa fa-trash"
              onclick="return confirm('Apa anda Yakin ?')">
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
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>
