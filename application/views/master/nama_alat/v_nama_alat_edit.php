<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?> 

<div class="box-body big">
    <?php echo form_open('',array('name'=>'feditmenugrup','class'=>'form-horizontal','role'=>'form'));?>
    <?php echo form_hidden('id',$row->id); ?>
    <div class="form-group">
    
            <label class="col-sm-4 control-label">Nama Alat</label>
            <div class="col-sm-8">
         
            <?php echo form_input(array('name'=>'nama_alat','value'=>$row->nama_alat,'class'=>'form-control'));?>
            <?php echo form_error('nama_alat');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Merk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'merk','value'=>$row->merk,'class'=>'form-control'));?>
            <?php echo form_error('merk');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Seri</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'seri','value'=>$row->seri,'class'=>'form-control'));?>
            <?php echo form_error('seri');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stok Minimal</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok_min','value'=>$row->stok_min,'class'=>'form-control'));?>
            <?php echo form_error('stok_min');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stok Saat Ini</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok_ini','value'=>$row->stok_ini,'class'=>'form-control'));?>
            <?php echo form_error('stok_ini');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 Tutup">
            <?php
            echo button('send_form(document.feditmenugrup,"master/nama_alat/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $('.Tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>