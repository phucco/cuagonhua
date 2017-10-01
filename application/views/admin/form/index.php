<div class="row">
    <div class="col-xs-12">
      	<div class="box">
            <div class="box-header">
              	<h3 class="box-title">Có <?php echo $total; ?> yêu cầu liên hệ</h3>
            </div>
            <div class="box-body table-responsive no-padding">
              	<table class="table table-hover table-center">
                	<thead>
						<th class="col-md-1">STT</th>
						<th class="col-md-2">Người gửi</th>
						<th class="col-md-1">Công ty</th>
						<th class="col-md-6">Nội dung</th>
						<th class="col-md-2">Thời gian gửi</th>
					</thead>
					<tbody>
						<?php foreach ($list as $row) : ?>
							<tr>
								<td><?php echo $row->id;?></td>
								<td><?php echo $row->name;?><br><?php echo $row->phone;?><br><?php echo $row->email;?></td>
								<td><?php echo $row->company;?></td>
								<td><strong><?php echo $row->title;?></strong><br><?php echo $row->message;?></td>
								<td><?php echo $row->created_at; ?></td>
							</tr>
						<?php endforeach; ?>
					</tbody>
              	</table>
            </div>
		</div>
    </div>
</div>
