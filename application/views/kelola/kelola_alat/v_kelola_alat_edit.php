<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<?php $row = fetch_single_row($edit); ?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>

        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Alat</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
                <select class="form-control" name="nama_alat">
                <?php foreach ($nama_alat->result() as $nama_alat): ?>
                    <option value="<?= $nama_alat->id ?>" <?= $nama_alat->id == $row->nama_alat ? "selected" : null ?>><?= $nama_alat->nama_alat ?></option>
                <?php endforeach; ?>
                </select>
            <?php echo form_error('nama_alat');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Satuan</label>
            <div class="col-sm-8">
                <select class="form-control" name="nama_satuan">
                <?php foreach ($nama->result() as $nama): ?>
                    <option value="<?= $nama->id ?>" <?= $nama->id == $row->nama_satuan ? "selected" : null ?>><?= $nama->nama ?></option>
                <?php endforeach; ?>
                </select>
            <?php echo form_error('nama_satuan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jenis</label>
            <div class="col-sm-8">
                <select class="form-control" name="jenis">
                <?php foreach ($jenis->result() as $jenis): ?>
                    <option value="<?= $jenis->id ?>" <?= $jenis->id == $row->jenis ? "selected" : null ?>><?= $jenis->jenis ?></option>
                <?php endforeach; ?>
                </select>
            <?php echo form_error('jenis');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Merk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'merk','class'=>'form-control', 'value'=>$row->merk));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stok</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok','class'=>'form-control', 'value'=>$row->stok));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kondisi</label>
            <div class="col-sm-8">
                <select class="form-control" name="kondisi">
                <?php foreach ($kondisi->result() as $kondisi): ?>
                    <option value="<?= $kondisi->id ?>" <?= $kondisi->id == $row->kondisi ? "selected" : null ?>><?= $kondisi->kondisi ?></option>
                <?php endforeach; ?>
                </select>
            <?php echo form_error('jenis');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_alat/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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