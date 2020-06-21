<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">id_peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'id_peminjaman','class'=>'form-control'));?>
            <?php echo form_error('id_peminjaman');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">nama</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama','class'=>'form-control'));?>
            <?php echo form_error('nama');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">nama barang</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_barang','class'=>'form-control'));?>
            <?php echo form_error('nama_barang');?>
            <span id="check_data"></span>
            </div>
        </div>
       
        <div class="form-group">
            <label class="col-sm-4 control-label">status_penggantian</label>
            <div class="col-sm-8">
            <select class="form-control" name="status_penggantian">
            <option value=""  disabled selected hidden> ---</option>
            <option value="Sudah Diganti">Sudah Diganti</option>
            <option value="Belum Diganti">Belum Diganti</option>
                </select>
            </div>
            <?php echo form_error('status_penggantian');?>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Status</label>
                <div class="col-sm-8">
                  <?php echo form_dropdown('status',$status,set_value('id'),'id="status" class="form-control select2"');?>
                  <?php echo form_error('status');?>
                    <span id="check_data"></span>
                </div>
            </div>
            </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label"></label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_penggantian/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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