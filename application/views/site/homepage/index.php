<!DOCTYPE html>
<html>
<head>
    <title>Cửa gỗ nhựa</title>

    <meta name="TITLE" content="" />
    <meta name="DESCRIPTION" content="" />
    <meta name="KEYWORDS" content="" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="<?php echo site_assets(); ?>assets/css/kube.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo site_assets(); ?>assets/css/maxs-slide.css">
    <link rel="stylesheet" href="<?php echo site_assets(); ?>assets/css/master.css" />
    <link rel="stylesheet" href="<?php echo site_assets(); ?>assets/css/custom.css" />

    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.js"></script>
    <script type="text/javascript" src="<?php echo site_assets(); ?>assets/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="<?php echo site_assets(); ?>assets/js/jquery.cycle.all.js"></script>
    <script type="text/javascript" src="<?php echo site_assets(); ?>assets/js/jquery.maximage.js"></script>


    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;subset=vietnamese" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,700&amp;subset=vietnamese" rel="stylesheet">

    <script type="text/javascript">
        $(function () {
            $('#maximage').maximage({
                fillElement: '#holder',
                backgroundSize: "contain",
                cycleOptions: {
                    fx: 'fade',
                    speed: 3000,
                    timeout: 6000,
                    pause: 1,
                    prev: '#arrow_left',
                    next: '#arrow_right',
                    pager: '#cycle-nav ul',
                    pagerAnchorBuilder: function (idx, slide) {
                        var imgsrc = jQuery.Slides[idx].url;
                        return '<li><a href="#" rel="nofollow"><img src=' + imgsrc + ' width="50" /></a></li>';
                    }
                },
                onFirstImageLoaded: function () {
                    jQuery('#maximage').fadeIn('fast');
                }
            });

            $('.toggle').bind('click', function (e) {
                e.preventDefault();
                $('#maximage').cycle('toggle');
            });
        });
    </script>
</head>

<body>

    <div id="holder">
        <?php $this->load->view('site/homepage/slide', $this->data); ?>

        <?php $this->load->view('site/layouts/header', $this->data); ?>

        <?php $this->load->view('site/layouts/footer', $this->data); ?>

        <div id="controls">
            <a href="#" id="arrow_left">
                <img src="<?php echo site_assets(); ?>assets/css/images/arrow-left.png" alt="Left" />
            </a>
            <a href="#" id="arrow_right">
                <img src="<?php echo site_assets(); ?>assets/css/images/arrow-right.png" alt="Right" />
            </a>
            <div id="cycle-nav">
                <ul>
                </ul>
            </div>
        </div>
    </div>

</body>
</html>
