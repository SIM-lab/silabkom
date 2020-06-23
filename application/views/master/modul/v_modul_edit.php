<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>
<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Modul</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_modul','value'=>$row->nama_modul,'class'=>'form-control'));?>
            <?php echo form_error('nama_modul');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'keterangan','value'=>$row->keterangan,'class'=>'form-control'));?>
            <?php echo form_error('keterangan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Modul</label>
            <div class="col-sm-8">
            <?php echo form_upload(array('name'=>'modul','id'=>'document','value'=>$row->modul,'class'=>'form-control'));?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tipe</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tipe','value'=>$row->tipe,'class'=>'form-control'));?>
            <?php echo form_error('tipe');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Ukuran</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'ukuran','value'=>$row->ukuran,'class'=>'form-control'));?>
            <?php echo form_error('ukuran');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/modul/show_editForm/","#divsubcontent")','simpan','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
</script>