<?php require_once ('application/views/kotak/kotak.php') ?>
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label" for="userfile">Foto</label>
            <div class="col-sm-8">
            <?php echo form_upload(array('name'=>'foto','id'=>'foto','class'=>'form-control'));?>
            <?php echo form_error('foto');?>
            </div>
        </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/tipe_laboratorium/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $("#foto").fileinput({
    'showImage'            :true,
      initialPreview: '<img src="<?php echo base_url().$row->foto; ?>" class="file-preview-image">'
    });
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>
