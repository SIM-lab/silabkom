<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
    
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Alat</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="nama_alat">
                <?php foreach ($nama_alat->result() as $nama_alat): ?>
                    <option value="<?= $nama_alat->id ?>"><?= $nama_alat->nama_alat ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('nama_alat');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Satuan</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="nama_satuan">
                <?php foreach ($nama->result() as $nama): ?>
                    <option value="<?= $nama->id ?>"><?= $nama->nama?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('nama_satuan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jenis</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="jenis">
                <?php foreach ($jenis->result() as $jenis): ?>
                    <option value="<?= $jenis->id ?>" ><?= $jenis->jenis ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('jenis');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Merk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'merk','class'=>'form-control'));?>
            <?php echo form_error('merk');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stok</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok','class'=>'form-control'));?>
            <?php echo form_error('stok');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kondisi</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kondisi','class'=>'form-control'));?>
            <?php echo form_error('kondisi');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_alat/show_addForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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