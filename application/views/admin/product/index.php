<div class="row">
    <div class="col-xs-12">
      	<div class="box">
            <div class="box-header">
              	<h3 class="box-title">Có <?php echo $total; ?> thông báo</h3>

              	<div class="box-tools">
	                <ul class="pagination pagination-sm no-margin pull-right">
	                  	<li><a href="#">&laquo;</a></li>
	                  	<li><a href="#">1</a></li>
	                  	<li><a href="#">2</a></li>
	                  	<li><a href="#">3</a></li>
	                  	<li><a href="#">&raquo;</a></li>
	                </ul>
              	</div>
            </div>
            <div class="box-body table-responsive no-padding">
              	<table class="table table-hover table-center">
                	<thead>
						<th class="col-md-1">STT</th>
						<th class="col-md-7">Tiêu đề</th>
					</thead>
					<tbody>
						<?php foreach ($list as $row) : ?>
							<tr>
								<td><?php echo $row->id;?></td>
								<td><?php echo $row->category_id;?></td>
							</tr>
						<?php endforeach; ?>
					</tbody>
              	</table>
            </div>
		</div>
    </div>
</div>
