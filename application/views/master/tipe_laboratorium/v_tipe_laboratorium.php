<div class="col-md-12">
<section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-blue">
              <div class="inner">
             <h3>0</h3>

                <p>Data Lab</p>
              </div>
              <div class="icon">
              <ion-icon name="desktop-sharp"></ion-icon>
              </div>
              <a  href="<?php echo base_url('master/nama_alat'); ?> " 
              class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-green">
              <div class="inner">
                <h3>0</sup></h3>

                <p>Data Alat</p>
              </div>
              <div class="icon">
              <ion-icon name="construct-sharp"></ion-icon>
              </div>
              <a href="<?= site_url("master/nama_alat") ?>"  class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
              <div class="inner">
                <h3>0</h3>

                <p>Data Bahan</p>
              </div>
              <div class="icon">
              <ion-icon name="flask-sharp"></ion-icon>
              </div>
              <a class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-red">
              <div class="inner">
                <h3>0</h3>

                <p>Data Modul</p>
              </div>
              <div class="icon">
              <ion-icon name="journal-sharp"></ion-icon>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
<?php require ('application/views/kotak.php') ?>
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Master Kelola Tipe Laboratorium </h3>

            <div class="box-tools pull-right">
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
            <td align="center"><img src="<?php echo base_url().$row->foto; ?>" class="file-preview-image"></td>
            <td align="center"><?=$row->koordinator?></td>
            <td align="center"><?=$row->laboran?></td>
            <td align="center"><?=$row->alamat?></td>
            <td align="center"><?=$row->email?></td>
            <td align="center"><?=$row->anggota?></td>
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
