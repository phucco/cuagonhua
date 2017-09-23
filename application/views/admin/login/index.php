<!DOCTYPE html>
<html>
<head>
<?php $this->load->view('admin/layouts/head', $this->data); ?>
</head>
<body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            <?php echo $page_title; ?>
        </div>
      
        <div class="login-box-body">
            <?php echo form_error('password') ? form_error('password', '<p class="login-box-msg">', '</p>') : '<p class="login-box-msg">Đăng nhập để tiếp tục.</p>'; ?>

            <form action="" method="post" autocomplete="off">
                <input type="hidden" name="token" value="<?php //echo $token; ?>">
                <div class="form-group has-feedback">
                    <input type="text" class="form-control" placeholder="Username" name="username">
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" class="form-control" placeholder="Password" name="password">
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" class="form-control" placeholder="Code" name="code">
                    <span class="glyphicon glyphicon-ban-circle form-control-feedback"></span>
                </div>
                <div class="row">
                    <div class="col-xs-4 col-xs-offset-4">
                        <button type="submit" class="btn btn-primary btn-block btn-flat">Đăng nhập</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <?php $this->load->view('admin/layouts/js_footer', $this->data); ?>

</body>
</html>
