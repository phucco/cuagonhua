<div class="row">
    <div class="col-xs-12">
      	<div class="box">
            <div class="box-header">
              	<h3 class="box-title">Có <?php echo $total; ?> sản phẩm</h3>
            </div>
            <div class="box-body table-responsive no-padding">
              	<table class="table table-hover table-center">
                	<thead>
						<th class="col-md-1">STT</th>
						<th class="col-md-1">Thứ tự</th>
						<th class="col-md-1">Danh mục</th>
						<th class="col-md-2">Tên</th>
						<th class="col-md-1">Mô tả ngắn</th>
						<th class="col-md-3">Mô tả dài</th>
						<th class="col-md-1">Ảnh</th>
						<th class="col-md-2">Hành động</th>
					</thead>
					<tbody>
						<?php foreach ($list as $row) : ?>
							<tr>
								<td><?php echo $row->id;?></td>
								<td class="order-num-col" id="order-num-col-<?php echo $row->id;?>"><?php echo $row->order_num;?>
									<div class="order-form" id="order-form-<?php echo $row->id;?>" style="display: none;">
										<input type="text" name="order_num_<?php echo $row->id;?>" class="form-control">
									</div>
								</td>
								<td><?php echo $row->category_name;?></td>
								<td class="text-bold text-highlight"><?php echo $row->name;?></td>
								<td><?php echo $row->short_description;?></td>
								<td><?php echo $row->long_description;?></td>
								<td><img src="<?php echo base_url('upload/product/' . $row->image); ?>" width="100%"></td>
								<td>
	                                <a href="<?php echo base_url('san-pham/' . $row->slug); ?>" class="btn btn-success" title="Xem" target="_blank">
	                                    <i class="fa fa-caret-square-o-right"></i>
	                                </a>
	                                <a href="<?php echo base_url('admin/product/edit/' . $row->id); ?>" class="btn btn-info" title="Sửa">
	                                    <i class="fa fa-edit"></i>
	                                </a>
	                                <a href="<?php echo base_url('admin/product/del/' . $row->id); ?>" class="btn btn-danger" title="Xóa" onclick="return confirm('Xác nhận xóa?');">
	                                    <i class="fa fa-trash-o"></i>
	                                </a>
                                </td>
							</tr>
						<?php endforeach; ?>
					</tbody>
              	</table>
            </div>
		</div>
    </div>
</div>
