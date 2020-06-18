<section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="box box-info">
            <div class="box-header">
              <h3 class="box-title">CK Editor
                <small>Advanced and full of features</small>
              </h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip"
                        title="Collapse">
                  <i class="fa fa-minus"></i></button>
                <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip"
                        title="Remove">
                  <i class="fa fa-times"></i></button>
              </div>
              <!-- /. tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body pad">
              <form>
                    <textarea class="textarea" id="ckeditor" name="berita" rows="20" cols="140">
                     
                    </textarea>
              </form>
              
            </div>
          </div>
     
        </div>
        <!-- /.col-->
      </div>
      <!-- ./row -->
    </section>
    
    <script type="text/javascript">
        $(function () {
                CKEDITOR.replace('ckeditor',{
                    filebrowserImageBrowseUrl : '<?php echo base_url('assets/kcfinder/browse.php');?>',
                    height: '400px'  
                    
                    
                });
               
                $('.textarea').wysihtml5()
            });   

            
 
    </script>
