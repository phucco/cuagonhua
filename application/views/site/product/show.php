<div class="col-beta">
    <div class="sanpham">
        <div class="text-centered title-heart">
            <h1>
                <?php echo $product->name; ?>
            </h1>
            <div class="traitim">
                <span class="heart">
                    <img src="<?php echo site_assets(); ?>assets/css/images/heat.png"></span>
            </div>
        </div>

        <div class="clear"></div>

        <div class="units-row end">
            <div class="unit-20 col-alpha">
                <br>
                <img src="<?php echo base_url('upload/product/' . $product->image); ?>" alt="" />

            </div>

            <div class="unit-80 colright">
                <h4>Danh mục: 
                    <a href="<?php echo base_url('danh-muc/' . $product->category->slug); ?>" title="Xem danh mục <?php echo $product->category->name; ?>" class="category-name">
                        <?php echo $product->category->name; ?>                        
                    </a>
                </h4>

                <br>
                <h4>Mô tả sản phẩm: </h4>
                <p><?php echo $product->short_description; ?></p>

                <br>
                <h4>Mô tả chi tiết: </h4>
                <p><?php echo $product->long_description; ?></p>
            </div>

        </div>

    </div>
</div>