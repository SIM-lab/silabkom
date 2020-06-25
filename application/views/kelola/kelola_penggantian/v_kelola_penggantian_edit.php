<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">id_peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'id_peminjaman','value'=>$row->id_peminjaman,'class'=>'form-control'));?>
            <?php echo form_error('id_peminjaman');?> 
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">nama</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama','value'=>$row->nama,'class'=>'form-control'));?>
            <?php echo form_error('nama');?>
            </div>
        </div>
        <div class="form-group">
    <label class="col-sm-4 control-label">Nama_barang</label>
    <div class="col-sm-8">
      <?php echo form_dropdown('nama_barang',$nama_bahan,$row->nama_barang,'id="nama_barang" class="form-control select2"');?>
      <?php echo form_error('nama_barang', '<span class="error-span">', '</span>'); ?>
    </div>
</div>
        <div class="form-group">
    <label class="col-sm-4 control-label">Status</label>
    <div class="col-sm-8">
      <?php echo form_dropdown('status',$status,$row->status,'id="status" class="form-control select2"');?>
      <?php echo form_error('status', '<span class="error-span">', '</span>'); ?>
    </div>
</div>
        </div>
       

        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_penggantian/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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