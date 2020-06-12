<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $this->config->item('title')?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <?php echo css('assets/bootstrap/css/bootstrap.min.css')?>
    <link rel="shortcut icon" href="<?php echo base_url('assets/img/title.png'); ?>" />
    <!-- Font Awesome -->
    <?php echo css('assets/css/fa.css')?>
    <!-- Ionicons -->
    <?php echo css('assets/css/ionicons.min.css')?>
    <!-- Theme style -->
    <?php echo css('assets/css/AdminLTE.min.css')?>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="hold-transition login-page">
    <div class="login-box">
      <!-- /.login-logo -->
      
      <div class="login-box-body">
        <h4>Lupa Password  <b><?php echo $this->config->item('project')?></b></h4>
        <?php echo form_open('lupa',array('name'=>'lupa')); ?>
          <div class="form-group has-feedback">
            	<input placeholder="Username" type="text" id="username" name="username" value="<?php echo set_value('username'); ?>" class="form-control"  >
				<?php echo form_error('username', '<span class="error-span">', '</span>'); ?>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
				<input placeholder="Email" type="email" class="form-control" id="emailo" name="email" value="<?php echo set_value('email'); ?>">
				<?php echo form_error('email', '<span class="error-span">', '</span>'); ?>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
				<input placeholder="Nomer Telp/Wa" type="text" class="form-control" id="no" name="no" value="<?php echo set_value('no'); ?>">
				<?php echo form_error('no', '<span class="error-span">', '</span>'); ?>
            <span class="glyphicon glyphicon-phone form-control-feedback"></span>
          </div>

          <div class="row">
          <div class="col-xs-6">
          
          </div>
            <div class="col-xs-6">
              <button type="submit" class="btn btn-success btn-block btn-flat">KIRIM</button>
            </div><!-- /.col -->
          </div>
        </form>

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.4 -->
    <?php echo js('assets/plugins/jQuery/jQuery-2.1.4.min.js') ?>
    <?php echo js('assets/js/jquery-ui.min.js') ?>
    <script>
      $(function () {
        $('#username').focus();
      });
    </script>
  </body>
</html>
