<h3>Menu</h3>
<nav class="nav navleft">
    <ul>  
    	<li class="big-menu">
        	<a href="<?php echo base_url('gioi-thieu/'); ?>">Giới thiệu chung</a>
    	</li>  

	    <li class="big-menu">
        	<a href="<?php echo base_url('san-pham/'); ?>">Danh mục sản phẩm</a>
    	</li>  
	    	<?php foreach ( $list_category_menu as $category_menu ) : ?>
	        <li class="small-menu">
	        	<a href="<?php echo base_url('danh-muc/') . $category_menu->slug; ?>"><?php echo $category_menu->name; ?></a>
	    	</li>

	        <?php endforeach; ?>

        <li class="big-menu">
        	<a href="<?php echo base_url('thu-vien-anh/'); ?>">Thư viện ảnh</a>
        </li>

        <li class="big-menu">
        	<a href="<?php echo base_url('lien-he/'); ?>">Liên hệ</a>
        </li>

    </ul>
</nav>