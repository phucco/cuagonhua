<script type="text/javascript" src="<?php echo site_assets(); ?>assets/js/jquery.fancybox8cbb.js?v=2.1.5"></script>
<link rel="stylesheet" type="text/css" href="<?php echo site_assets(); ?>assets/css/jquery.fancybox8cbb.css?v=2.1.5"
    media="screen" />


<div class="col-beta">
    <div class="gallery">
        <div class="text-centered title-heart">
            <h1>
                Thư viện ảnh <span>Cửa gỗ nhựa Hoàng Hải</span>
            </h1>
            <div class="traitim">
                <span class="heart">
                    <img src="<?php echo site_assets(); ?>assets/css/images/heat.png"></span>
            </div>
        </div>

        <?php foreach ($list as $row) : ?>

            <a class="fancybox" href="<?php echo base_url('upload/gallery/') . $row->file_name; ?>" title="<?php echo $row->alt; ?>">
                <img src="<?php echo base_url('upload/gallery/') . $row->file_name; ?>" alt="<?php echo $row->alt; ?>" />
            </a>

        <?php endforeach; ?>

       <script type="text/javascript">
            $(".fancybox").fancybox({
                openEffect  : 'none',
                closeEffect : 'none',
                closeBtn: true,
                arrows: true,
                nextClick: true
            });
        </script>


    </div>
</div>