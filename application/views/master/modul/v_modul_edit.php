<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>
    <div class="row">
          <div class="box-body">
            <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
            <?php echo form_hidden('id',$row->id); ?>
            <div class="form-group">
                <label class="col-sm-2 control-label">Nama</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'nama_modul','id'=>'nama_modul','value'=>$row->nama_modul,'class'=>'form-control'));?>
                <?php echo form_error('nama_modul');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Keterangan</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'keterangan','id'=>'keterangan','value'=>$row->keterangan,'class'=>'form-control'));?>
                <?php echo form_error('keterangan');?>
                </div>
            </div>
                <div class="form-group">
                <label class="col-sm-2 control-label" for="userfile">File</label>
                <div class="col-sm-8">
                <?php echo form_upload(array('name'=>'modul','id'=>'file','class'=>'form-control'));?>
                <!-- <span id='info'></span></label> -->
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Tipe</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'tipe','id'=>'tipe','value'=>$row->tipe,'class'=>'form-control'));?>
                <?php echo form_error('tipe');?>
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-sm-2 control-label">Ukuran</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'ukuran','id'=>'ukuran','value'=>$row->ukuran,'class'=>'form-control'));?>
                <?php echo form_error('ukuran');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Save</label>
                <div class="col-sm-8 tutup">
                <?php
                //echo button('send_form(document.faddmenugrup,"master/modul/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
                ?>
                <input onclick="save()" type="submit" value="Save" class="btn btn-success">
                </div>
            </div>
        </form>
        </div>
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
    var id = $('#id').val();
    if (path == '') {
        $.ajax({
        type: "POST",
        url: "<?= site_url('master/modul/show_editForm/')?>",
        dataType:'json',
        data: {
            id        : $("#id").val(),
            nama_modul    : $("#nama_modul").val(),
            keterangan    : $("#username").val(),
            modul          : $("#file").val(),
            tipe         : $("#tipe").val(),
            ukuran        : $("#ukuran").val()
          
        },
        success   : function(data)
        {
          $.growl.notice({ title: 'Sukses', message: data['msg']});      
          load_silent("master/modul","#divsubcontent");
        }
      });

    } else{
        $.ajaxFileUpload
          ({
            url: "<?= site_url('master/modul/show_editForm/')?>",
            secureuri:false,
            fileElementId:'file',
            dataType: 'json',
            data: {
              id        : $("#id").val(),
            nama_modul    : $("#nama_modul").val(),
            keterangan    : $("#username").val(),
            modul          : $("#file").val(),
            tipe         : $("#tipe").val(),
            ukuran        : $("#ukuran").val()
              },
            success: function (data)
            {
              $.growl.notice({ title: 'Berhasil', message: data['msg'] });
              load_silent("master/modul","#divsubcontent");
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