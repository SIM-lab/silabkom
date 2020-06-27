<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Jadwal</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_jadwal','value'=>$row->nama_jadwal,'class'=>'form-control'));?>
            <?php echo form_error('nama_jadwal');?>
            </div>
        </div>
        <div class="form-group">
        <label class="col-sm-4 control-label" for="file_jadwal">File Jadwal</label>           
                <div class="col-sm-8">
                <?php echo form_upload(array('name'=>'file_jadwal','id'=>'file_jadwal','class'=>'form-control'));?>
                <!-- <span id='info'></span></label> -->
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
                <div class="col-sm-8">
                <?php echo form_dropdown('status',$status,$row->status,'id="status" class="form-control select2"');?>
                 <?php echo form_error('status', '<span class="error-span">', '</span>'); ?>
                </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/jadwal/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>