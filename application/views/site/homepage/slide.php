<div id="maximage">
    <?php foreach ($list_slide as $row) : ?>

        <div class="first-image">
            <img src="<?php echo base_url('upload/slide/') . $row->file_name; ?>" alt="<?php echo $row->alt; ?>" />
        </div>
    
    <?php endforeach; ?>
</div>