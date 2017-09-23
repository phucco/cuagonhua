<?php if ($this->session->flashdata('message') !== NULL) : ?>
	<?php $type_message = $this->session->flashdata('type');
			$message = $this->session->flashdata('message');
	switch ($type_message) {
		case 'danger': ?>

			<div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-ban"></i> Lỗi!</h4>
                <?php echo $message; ?>
         	</div>

		<?php
			break;

		case 'warning' : ?>

			<div class="alert alert-warning alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-warning"></i> Cảnh báo!</h4>
                <?php echo $message; ?>
              </div>

		<?php
			break;

		case 'success' : ?>

			<div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-check"></i> Thành công!</h4>
                <?php echo $message; ?>
              </div>

		<?php
			break;

		default: ?>

			<div class="alert alert-info alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-info"></i> Thông tin!</h4>
                <?php echo $message; ?>
          	</div>

		<?php
			break;
	} ?>
<?php endif; ?>

