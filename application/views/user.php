<div class="col-md-4 border-center" >
          <!-- Widget: user widget style 1 -->
          <div class="box box-widget widget-user">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-blue" style="background: url('') center center;">
              <h3 class="widget-user-username"><?php echo from_session('nama');?></h3>
              <h5 class="widget-user-desc"><?php echo from_session('nama_level');?></h5>
            </div>
            <div class="widget-user-image">
            <?php
              echo $avatar = parse_avatar(from_session('gambar'),from_session('nama'),50,'img-circle ');
                ?>
            </div>
            <div class="box-footer">
              <div class="row">
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                 
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                  <?php echo button('load_silent("cms/user/show_editForm_user/'.from_session('id').'","#content")','Edit User',' btn .btn-lg ');?> 
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4">
                  <div class="description-block">
                    iki gek rencana ya 
                  <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("cms/user/show_editForm_user/'.from_session('id').'","#content")','Buat Pengunguman',' btn .btn-lg ');
              } else {
                
              }?>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
          </div>
          <!-- /.widget-user -->
        </div>