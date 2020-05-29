<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
<?php echo form_open('',array('name'=>'fdeletemenugrup','class'=>'form-horizontal','role'=>'form'));?>
    <h4> Apakah Anda yakin ?</h4>
        <div class="form-group">           
            <div class="col-sm-8 ">
            <label class="col-sm-4 control-label">Hapus</label>
            <?php
            echo button('delete_form(document.fdeletemenugrub,"master/satuan/show_deleteForm/","#divsubcontent")','hapus','btn btn-danger')." ";
            ?>
            </div>
            <div class="col-sm-8 ">
            <label class="col-sm-4 control-label Kembali">Kembali</label>
        </div>
    </form>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $('.Kembali').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>