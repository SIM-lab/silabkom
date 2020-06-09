<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">No Induk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'no_induk','class'=>'form-control'));?>
            <?php echo form_error('no_induk');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Username</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'username','class'=>'form-control'));?>
            <?php echo form_error('username');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama','class'=>'form-control'));?>
            <?php echo form_error('nama');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Email</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'email','class'=>'form-control'));?>
            <?php echo form_error('email');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">No Telpon</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'no_telpon','class'=>'form-control'));?>
            <?php echo form_error('no_telpon');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Level</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'level','class'=>'form-control'));?>
            <?php echo form_error('level');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/user/show_addForm/","#divsubcontent")','simpan','btn btn-success')." ";
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