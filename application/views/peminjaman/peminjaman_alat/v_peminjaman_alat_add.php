<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
    <div class="form-group">
            <label class="col-sm-4 control-label">ID-Peminjaman</label>
            <div class="col-sm-8">
                <select class="form-control" name="id_peminjaman">
                <?php foreach ($kode->result() as $kode): ?>
                    <option value="<?= $kode->kode ?>"><?= $kode->kode ?></option>
                <?php endforeach; ?>
                </select>
            <?php echo form_error('id_peminjaman');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4  control-label">Nama Alat</label>
            <div class="col-sm-8">
                <select class="form-control" name="nama_alat">
                <?php foreach ($nama_alat_bahan->result() as $nama_alat_bahan): ?>
                    <option value="<?= $nama_alat_bahan->nama_alat_bahan ?>"><?= $nama_alat_bahan->nama_alat_bahan ?></option>
                <?php endforeach; ?>
                </select>
            <?php echo form_error('nama_alat');?>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">merk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'merk','class'=>'form-control'));?>
            <?php echo form_error('merk');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">seri</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'seri','class'=>'form-control'));?>
            <?php echo form_error('seri');?>
            <span id="check_data"></span>
            </div>
        </div>
       
        <div class="form-group">
        <label class="col-sm-4 control-label">Kondisi</label>
            <div class="col-sm-8">
            <select class="form-control" name="kondisi">
            <option value=""  disabled selected hidden> ---</option>
            <option value="Baik">Baik</option>
            <option value="Rusak">Rusak</option>
                </select>
            </div>
            <?php echo form_error('kondisi');?>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label"></label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"peminjaman/peminjaman_alat/show_addForm/","#divsubcontent")','Simpan','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
$(document).ready(function() {
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
        });
});
</script>
<script>
     $("#kotak").change(function(){
$("#nama_alat").val($(this).val());

}); 
</script>