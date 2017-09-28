<section class="invoice">
    <div class="row">
        <div class="col-xs-12">
            <h2 class="page-header">
                <i class="fa fa-file"></i> <?php echo $post->title; ?>
                <small class="pull-right">Tạo bởi <strong><?php echo user_id_to_user_name($post->user_id);?></strong> vào lúc <?php echo $post->created_at; ?></small>
            </h2>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12">
            <?php echo htmlspecialchars_decode($post->content); ?>
        </div>
    </div>

    <hr>

    <div class="row">
        <div class="col-xs-12">
            <?php if ($post->user_id == $user_id) : ?>
                <a href="<?php echo base_url('/post/edit/' . $post->id); ?>" class="btn btn-success"><i class="fa fa-pencil-square-o"></i> Sửa thông báo này</a>
            <?php endif; ?>
            <a href="<?php echo base_url('/post/'); ?>" class="btn btn-default"><i class="fa fa-bell"></i> Tất cả thông báo</a>
            <a href="<?php echo base_url('/post/'); ?>" class="btn btn-primary pull-right">Thông báo tiếp theo <i class="fa fa-arrow-right"></i></a>
            <a href="<?php echo base_url('/post/'); ?>" class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-arrow-left"></i> Thông báo trước</a>
        </div>
    </div>
</section>