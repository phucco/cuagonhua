<?php foreach ($list_category as $category) : ?>

<div class="col-beta">
    <div class="sanpham">
        <div class="title-heart">
            <h1>
                <label><?php echo $category->name; ?></label>
            </h1>
            <div class="traitim">
                <span class="heart">
                    <img src="<?php echo site_assets(); ?>assets/css/images/heat.png"></span>
            </div>
        </div>

        <div class="text-centered">
            <h2>
                <label><?php echo $category->name; ?></label>
            </h2>
            <div class="traitim">
                <span class="heart">
                    <img src="<?php echo site_assets(); ?>assets/css/images/heat.png"></span>
            </div>
        </div>

        <ul class="blocks-4">
            
            

                <!-- <li>
                    <a class="fancybox-thumbs" data-fancybox-group="thumb" href="<?php echo base_url('san-pham/' . $row->slug); ?>" title="<?php echo 'Xem chi tiết sản phẩm ' . $row->name; ?>">
                        <img src="<?php echo base_url('upload/product/' . $row->image); ?>" alt="" />
                        <span><font><?php echo $row->name; ?></font></span>
                    </a>
                </li> -->

            
        </ul>
    </div>
</div>

<?php endforeach; ?>