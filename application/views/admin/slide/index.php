<div class="row">
    <div class="col-xs-12">
      	<div class="box">
            <div class="box-header">
              	<h3 class="box-title">Có <?php echo $total; ?> ảnh slide</h3>

            </div>
            <div class="box-body table-responsive no-padding">
              	<table class="table table-hover table-center">
                	<thead>
                            <th class="col-md-1">ID</th>
                            <th class="col-md-6">Ảnh</th>
                            <th class="col-md-1">Kích thước</th>
                            <th class="col-md-2">Thời gian</th>
                            <th class="col-md-2">Actions</th>
					</thead>
					<tbody>
						<?php foreach ($list as $row) : ?>
							<tr>
								<td><?php echo $row->id; ?></td>
	                            <td><img src="<?php echo base_url('upload/slide/' . $row->file_name); ?>" width="100%" alt="<?php echo $row->alt; ?>"></td>
	                            <td><?php echo $row->image_width; ?> x <?php echo $row->image_height; ?> px</td>
	                            <td><?php echo $row->created_at; ?></td>
								<td>
	                                <a href="<?php echo base_url('upload/slide/' . $row->file_name); ?>" class="btn btn-success" title="Xem kích thước đầy đủ" target="_blank">
	                                    <i class="fa fa-caret-square-o-right"></i>
	                                </a>
	                                <a href="<?php echo base_url('admin/slide/del/' . $row->id); ?>" class="btn btn-danger" title="Xóa" onclick="return confirm('Xác nhận xóa?');">
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
