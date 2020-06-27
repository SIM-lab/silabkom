<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Modul</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_modul','class'=>'form-control'));?>
            <?php echo form_error('nama_modul');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'keterangan','class'=>'form-control'));?>
            <?php echo form_error('keterangan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">File</label>
            <div class="col-sm-8">
            <?php echo form_upload(array('name'=>'file','id'=>'modul','class'=>'form-control'));?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tipe</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tipe','class'=>'form-control'));?>
            <?php echo form_error('tipe');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Ukuran</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'ukuran','class'=>'form-control'));?>
            <?php echo form_error('ukuran');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/modul/show_addForm/","#divsubcontent")','simpan','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
$(document).ready(function() {
    $("#file").fileinput({
    'showUpload'            :true,
      initialPreview: '<img src="<?php echo base_url().$row->modul; ?>" class="file-preview-image">'
    });
    $(".select2").select2();
    $('.fileinput-upload-button').hide();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});

function save()
{
    var path = $("#file").val().replace('C:\\fakepath\\', '');
    if (path == '') {
        $.ajax({
        type: "POST",
        //url: "<?= site_url('master/modul/show_addForm/"+id+"')?>",
        dataType:'json',
        data: {
            nama_modul    : $("#nama_modul").val(),
            keterangan    : $("#username").val(),
            modul          : $("#file").val(),
            tipe         : $("#tipe").val(),
            ukuran        : $("#ukuran").val()
          
        },
        success   : function(data)
        {
          $.growl.notice({ title: 'Sukses', message: data['msg']});      
          load_silent("master/modul/show_addForm/","#divsubcontent");
        }
      });

    } else{
        $.ajaxFileUpload
          ({
           // url: "<?= site_url('master/modul/show_addForm/"+id+"')?>",
            secureuri:false,
            fileElementId:'file',
            dataType: 'json',
            data: {
                nama_modul    : $("#nama_modul").val(),
            keterangan    : $("#username").val(),
            modul          : $("#file").val(),
            tipe         : $("#tipe").val(),
            ukuran        : $("#ukuran").val()
              },
            success: function (data)
            {
              $.growl.notice({ title: 'Berhasil', message: data['msg'] });
              load_silent("master/modul/show_addForm/","#divsubcontent");
            },
            error: function (data, e)
            {
              $("#info").html(e);
            }
          })

    };
  
  return false;
}
</script>