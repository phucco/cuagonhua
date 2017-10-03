<section class="invoice">
    <div class="row">
        <div class="col-xs-12">
            <h2 class="page-header">
                <i class="fa fa-file"></i> <?php echo $form->title; ?>
                <small class="pull-right">Gửi bởi <strong><?php echo $form->name; ?></strong> vào lúc <?php echo $form->created_at; ?></small>
            </h2>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12">
            <?php echo $form->message; ?>
        </div>
    </div>

    <hr>

    <div class="row">
        <div class="col-xs-12">
            <a href="<?php echo base_url('admin/form/'); ?>" class="btn btn-default"><i class="fa fa-bell"></i> Tất cả thông báo</a>
            <a href="<?php echo base_url('admin/form/'); ?>" class="btn btn-primary pull-right">Thông báo tiếp theo <i class="fa fa-arrow-right"></i></a>
            <a href="<?php echo base_url('admin/form/'); ?>" class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-arrow-left"></i> Thông báo trước</a>
        </div>
    </div>
</section>