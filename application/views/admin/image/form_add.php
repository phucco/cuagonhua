<div class="row">
    <form role="form" method="post" action="" autocomplete="off" enctype="multipart/form-data">
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thông tin danh mục</h3>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="alt">Thẻ alt</label>
                        <input type="text" class="form-control" placeholder="" name="alt" value="">
                    </div>
                    <div class="form-group">
                        <label for="image">Chọn ảnh tải lên</label>
                        <input type="file" id="image" name="image" class="form-control">
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

        <div class="col-md-6">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Xem trước</h3>
                </div>
                <div class="box-body">
                    
                    <span class="help-block" id="help-sentence">Ảnh sẽ được hiển thị tại đây</span>
                    <img id="image_upload" src="#" alt="" style="max-width: 100%;" />
                </div>

            </div>
        </div>

    </form>
</div>