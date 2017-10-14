<?php foreach ($list_category as $category) : ?>

<div class="col-beta">
    <div class="sanpham">
        <div class="title-heart text-centered">
            <h1>
                <a href="<?php echo base_url('danh-muc/') . $category->slug; ?>"><?php echo $category->name; ?></a>
            </h1>
            <div class="traitim">
                <span class="heart">
                    <img src="<?php echo site_assets(); ?>assets/css/images/heat.png"></span>
            </div>
        </div>

        <ul class="blocks-4">
            <?php foreach ($category->list_product as $row) : ?>

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

<?php endforeach; ?>