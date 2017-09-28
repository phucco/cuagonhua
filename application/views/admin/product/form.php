<div class="row">
    <div class="col-md-12">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Viết thông báo mới</h3>
            </div>
            <form role="form" method="post" action="" autocomplete="off" enctype="multipart/form-data">
                <div class="box-body">
                    <div class="form-group">
                        <label for="title">Tiêu đề thông báo</label>
                        <?php echo form_error('title', '<span class="help-block"> ', '</span>'); ?>
                        <input type="text" class="form-control" placeholder="" name="title" value="<?php echo (isset($post)) ? $post->title : ''; ?>">
                    </div>
                    
                    <label for="content">Nội dung thông báo</label>
                    <textarea id="summernote" name="content" data-height="500"><?php echo (isset($post)) ? htmlspecialchars_decode($post->content) : ''; ?></textarea>
                </div>
                <div class="box-footer">
                    <div class="pull-right">
                        <button type="submit" class="btn btn-primary">Gửi thông báo</button>
                    </div>
                    <button type="reset" class="btn btn-default"><i class="fa fa-times"></i> Hủy bỏ</button>
                    <button class="btn btn-default" onclick="window.history.back();">Quay lại</button>
                </div>
            </form>
        </div>

    </div>
</div>