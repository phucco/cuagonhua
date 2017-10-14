<div class="row">
    <div class="col-xs-12">
      	<div class="box">
            <div class="box-header">
              	<h3 class="box-title">Có <?php echo $total; ?> danh mục sản phẩm</h3>
            </div>
            <div class="box-body table-responsive no-padding">
              	<table class="table table-hover table-center">
                	<thead>
						<th class="col-md-1">ID</th>
						<th class="col-md-2">Tên danh mục</th>
						<th class="col-md-2">Danh mục lớn</th>
						<th class="col-md-1">Mô tả ngắn</th>
						<th class="col-md-3">Mô tả dài</th>
						<th class="col-md-2">Hành động</th>
					</thead>
					<tbody>
						<?php foreach ($list as $row) : ?>
							<tr>
								<td><?php echo $row->id;?></td>
								<td><?php if ($row->parent_id == '0') { echo '<strong>' . $row->name . '</strong>'; } else { echo $row->name; } ?></td>
								<td><?php echo $row->parent_name;?></td>
								<td><?php echo $row->short_description;?></td>
								<td><?php echo $row->long_description;?></td>
								<td>
	                                <a href="<?php echo base_url('danh-muc/' . $row->slug); ?>" class="btn btn-success" title="Xem" target="_blank">
	                                    <i class="fa fa-caret-square-o-right"></i>
	                                </a>                              
	                                <a href="<?php echo base_url('admin/category/edit/' . $row->id); ?>" class="btn btn-info" title="Sửa">
	                                    <i class="fa fa-edit"></i>
	                                </a>
	                                <a href="<?php echo base_url('admin/category/del/' . $row->id); ?>" class="btn btn-danger" title="Xóa" onclick="return confirm('Xác nhận xóa?');">
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
