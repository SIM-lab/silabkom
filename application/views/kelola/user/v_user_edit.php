<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
   // $row = fetch_single_row($delete);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'feditmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
    <div class="form-group">
            <label class="col-sm-4 control-label">No Induk</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'no_induk','value'=>$row->no_induk,'class'=>'form-control'));?>
            <?php echo form_error('no_induk');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Username</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'username','value'=>$row->username,'class'=>'form-control'));?>
            <?php echo form_error('username');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama','value'=>$row->nama,'class'=>'form-control'));?>
            <?php echo form_error('nama');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Email</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'email','value'=>$row->email,'class'=>'form-control'));?>
            <?php echo form_error('email');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">No Telpon</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'no_telpon','value'=>$row->no_telpon,'class'=>'form-control'));?>
            <?php echo form_error('no_telpon');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Level</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'level','value'=>$row->level,'class'=>'form-control'));?>
            <?php echo form_error('level');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.feditmenugrup,"kelola/user/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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