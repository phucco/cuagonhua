<nav class="breadcrumbs inner">
    <ul>
        <li>
        	<img src="<?php echo base_url(); ?>assets/css/images/icon-home.png" />
        	<a href="<?php echo base_url(); ?>">Trang chủ</a>
    	</li>
        <li>
        	<img src="<?php echo base_url(); ?>assets/css/images/arrow-br.png" />
        </li>
        <li>
            <a href="<?php echo base_url('san-pham/'); ?>">Sản phẩm</a>
        </li>
        <li>
            <img src="<?php echo base_url(); ?>assets/css/images/arrow-br.png" />
        </li>
        <li>
            <a href="<?php echo base_url('danh-muc/' . $product->category->slug); ?>"><?php echo $product->category->name; ?></a>
        </li>
        <li>
            <img src="<?php echo base_url(); ?>assets/css/images/arrow-br.png" />
        </li>
        <li>
        	<span id="ctl00_cph_Content_ctlContact1_ctlSiteLink_lblCurrent"><?php echo $product->name; ?></span>
        </li>
    </ul>
</nav>