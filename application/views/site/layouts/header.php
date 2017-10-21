<div id="header">

    <div class="wrapper">
        <h1 id="logo">
            <a href="<?php echo base_url(); ?>">
                <img src="<?php echo base_url(); ?>upload/600x600.png" alt="Logo Cửa gỗ nhựa Hoàng Hải" class="logo-circle">
            </a>
        </h1>
        <div class="menutop">
            <ul>
                <li><a href="<?php echo base_url('gioi-thieu/'); ?>">Giới thiệu</a></li>
                <li>|</li>

                <li><a href="<?php echo base_url('san-pham/'); ?>">Tất cả sản phẩm</a></li>
                <li>|</li>

                <li><a href="<?php echo base_url('lien-he/'); ?>">Liên hệ</a></li>
            </ul>
        </div>
    </div>

    <div id="menu">
        <img class="img" src="<?php echo site_assets(); ?>assets/css/images/line-mn.png">
        <div class="nav-intro">
            <div class="one">
                <div class="two">
                    <div class="wrapper">
                        <ul>
                            <?php foreach ( $list_category_menu as $category_menu ) : ?>
                            <li>
                            	<a href="<?php echo base_url('danh-muc/') . $category_menu->slug; ?>"><?php echo $category_menu->name; ?></a>
                        	</li>

                            <?php endforeach; ?>

                            <li>
                                <a href="<?php echo base_url('thu-vien-anh/'); ?>">Thư viện ảnh</a>
                            </li>
                            
                            <!-- <li>
                            	<a href="<?php echo base_url('lien-he/'); ?>">Liên hệ</a>
                        	</li>  -->                           
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <img class="img" src="<?php echo site_assets(); ?>assets/css/images/line-mn.png">
    </div>
    
</div>