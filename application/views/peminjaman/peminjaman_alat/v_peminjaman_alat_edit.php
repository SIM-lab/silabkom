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
            <label class="col-sm-4 control-label">nama_alat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_alat','value'=>$row->nama_alat,'class'=>'form-control'));?>
            <?php echo form_error('nama_alat');?>
            </div>
        </div>
      
        <div class="form-group">
            <label class="col-sm-4 control-label">merk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'merk','value'=>$row->merk,'class'=>'form-control'));?>
            <?php echo form_error('merk');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">seri</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'seri','value'=>$row->seri,'class'=>'form-control'));?>
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
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>

        </div>
       

        <div class="form-group">
            <label class="col-sm-4 control-label"></label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"peminjaman/peminjaman_alat/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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