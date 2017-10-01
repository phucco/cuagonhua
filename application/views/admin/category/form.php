<div class="row">
    <form role="form" method="post" action="" autocomplete="off">

        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin danh mục</h3>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="name">Tên danh mục</label>
                        <?php echo form_error('name'); ?>
                        <input type="text" class="form-control" placeholder="" name="name" value="<?php echo (isset($category)) ? $category->name : ''; ?>">
                    </div>
                    <div class="form-group">
                        <label for="slug">Đường dẫn danh mục</label>
                        <p class="help-block">Để trống phần này để tự động tạo đường dẫn cho danh mục sản phẩm.</p>
                        <input type="text" class="form-control" placeholder="" name="slug" value="<?php echo (isset($category)) ? $category->slug : ''; ?>">
                    </div>
                    <div class="form-group">
                        <label for="parent_id">Danh mục cha</label>
                        <select name="parent_id" class="form-control">
                            <option value="0">Là danh mục lớn</option>
                            <?php foreach ($list as $row) : ?>
                                <option value="<?php echo $row->id; ?>" <?php if (isset($category) && $row->id == $category->parent_id) echo 'selected' ?>><?php echo $row->name; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Mô tả danh mục</h3>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="short_description">Mô tả ngắn</label>
                        <?php echo form_error('short_description'); ?>
                        <input type="text" class="form-control" placeholder="" name="short_description" value="<?php echo (isset($category)) ? $category->short_description : ''; ?>">
                    </div>
                    <div class="form-group">
                        <label for="long_description">Mô tả chi tiết</label>
                        <?php echo form_error('long_description'); ?>
                        <textarea class="form-control" placeholder="" name="long_description" rows="10"><?php echo (isset($category)) ? $category->long_description : ''; ?></textarea>
                    </div>
                </div>
                <div class="box-footer">
                    <div class="pull-right">
                        <button type="submit" class="btn btn-primary">Xác nhận</button>
                    </div>
                    <button type="reset" class="btn btn-default"><i class="fa fa-times"></i> Hủy bỏ</button>
                    <button class="btn btn-default" onclick="window.history.back();">Quay lại</button>
                </div>
            </div>
        </div>

    </form>
</div>