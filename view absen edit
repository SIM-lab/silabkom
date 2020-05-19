<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode Lab</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'Kode_Lab','value'=>$row->Kode_Lab,'class'=>'form-control'));?>
            <?php echo form_error('Kode_Lab');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Tanggal','value'=>$row->Tanggal,'class'=>'form-control'));?>
            <?php echo form_error('Tanggal');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Hadir</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Hadir','value'=>$row->Hadir,'class'=>'form-control'));?>
            <?php echo form_error('Hadir');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tidak Hadir</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tidak_hadir','value'=>$row->tidak_hadir,'class'=>'form-control'));?>
            <?php echo form_error('tidak_hadir');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'keterangan','value'=>$row->keterangan,'class'=>'form-control'));?>
            <?php echo form_error('keterangan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/master_absen/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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
