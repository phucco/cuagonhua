<div class="col-beta">
    <div class="sanpham">
        <div class="text-centered title-heart">
            <h1>
                <label><?php echo $category->name; ?></label>
            </h1>
            <div class="traitim">
                <span class="heart">
                    <img src="<?php echo site_assets(); ?>assets/css/images/heat.png"></span>
            </div>
        </div>
        <link rel="stylesheet" type="text/css" href="<?php echo site_assets(); ?>assets/css/slick.css"/>
<link rel="stylesheet" type="text/css" href="<?php echo site_assets(); ?>assets/css/slick-theme.css"/>
<script type="text/javascript" src="<?php echo site_assets(); ?>assets/js/slick.min.js"></script>
<script type="text/javascript">
    $('.blocks-4').slick({
  });
</script>
        <ul class="blocks-4">
            
            <?php foreach ($list as $row) : ?>

                <li>
                    <a class="fancybox-thumbs" data-fancybox-group="thumb" href="<?php echo base_url('san-pham/' . $row->slug); ?>" title="<?php echo 'Xem chi tiết sản phẩm ' . $row->name; ?>">
                        <img src="<?php echo base_url('upload/product/' . $row->image); ?>" alt="" />
                        <span><font><?php echo $row->name; ?></font></span>
                    </a>
                </li>

            <?php endforeach; ?>
            
        </ul>
    </div>
</div>