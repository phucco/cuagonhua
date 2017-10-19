<div class="row">
    <form role="form" method="post" action="" autocomplete="off">
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin về bản thân</h3>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="old_password">Mật khẩu cũ</label>
                        <?php echo form_error('old_password', '<span class="help-block"> ', '</span>'); ?>
                        <input type="password" class="form-control" name="old_password">
                    </div>

                    <div class="form-group">
                        <label for="password">Mật khẩu mới</label>
                        <?php echo form_error('password', '<span class="help-block"> ', '</span>'); ?>
                        <input type="password" class="form-control" name="password">
                    </div>

                    <div class="form-group">
                        <label for="repassword">Nhập lại mật khẩu mới</label>
                        <?php echo form_error('repassword', '<span class="help-block"> ', '</span>'); ?>
                        <input type="password" class="form-control" name="repassword">
                    </div>  
                </div>
                <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Đổi mật khẩu</button>
                </div>
            </div>
        </div>       
    </form>
</div>