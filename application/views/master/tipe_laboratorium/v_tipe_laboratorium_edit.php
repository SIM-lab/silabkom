<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Jenis Laboratorium</label>
            <div class="col-sm-8">
                <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'jenis','value'=>$row->jenis,'class'=>'form-control'));?>
            <?php echo form_error('jenis');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label" for="userfile">Foto</label>
            <div class="col-sm-8">
            <?php echo form_upload(array('name'=>'foto','id'=>'foto','class'=>'form-control'));?>
            <?php echo form_error('foto');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Koordinator</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'koordinator','value'=>$row->koordinator,'class'=>'form-control'));?>
            <?php echo form_error('koordinator');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Laboran</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'laboran','value'=>$row->laboran,'class'=>'form-control'));?>
            <?php echo form_error('laboran');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Alamat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'alamat','value'=>$row->alamat,'class'=>'form-control'));?>
            <?php echo form_error('alamat');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Email</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'email','value'=>$row->email,'class'=>'form-control'));?>
            <?php echo form_error('emailt');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Anggota</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'anggota','value'=>$row->anggota,'class'=>'form-control'));?>
            <?php echo form_error('anggota');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label"></label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/tipe_laboratorium/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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
