<div class="row">
    <form role="form" method="post" action="" autocomplete="off" enctype="multipart/form-data">

        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin sản phẩm</h3>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="name">Tên sản phẩm</label>
                        <?php echo form_error('name'); ?>
                        <input type="text" class="form-control" placeholder="" name="name" value="<?php echo (isset($product)) ? $product->name : ''; ?>">
                    </div>
                    <div class="form-group">
                        <label for="slug">Đường dẫn sản phẩm</label>
                        <span class="help-block">Để trống phần này để tự động tạo đường dẫn.</span>
                        <input type="text" class="form-control" placeholder="" name="slug" value="<?php echo (isset($product)) ? $product->slug : ''; ?>">
                    </div>
                    <div class="form-group">
                        <label for="category_id">Danh mục sản phẩm</label>
                        <select name="category_id" class="form-control">
                            <?php foreach ($list as $row) : ?>
                                <option value="<?php echo $row->id; ?>" <?php if (isset($product) && $row->id == $product->category_id) echo 'selected' ?>><?php echo $row->name; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="image">Tải lên ảnh xem trước</label>
                        <input type="file" id="image" name="image" class="form-control">
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Mô tả sản phẩm</h3>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="short_description">Mô tả ngắn</label>
                        <?php echo form_error('short_description'); ?>
                        <input type="text" class="form-control" placeholder="" name="short_description" value="<?php echo (isset($product)) ? $product->short_description : ''; ?>">
                    </div>
                    <div class="form-group">
                        <label for="long_description">Mô tả chi tiết</label>
                        <?php echo form_error('long_description'); ?>
                        <textarea class="form-control" placeholder="" name="long_description" rows="10"><?php echo (isset($product)) ? $product->long_description : ''; ?></textarea>
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