<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $page_title; ?></title>
<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
<link rel="stylesheet" href="<?php echo admin_assets(); ?>bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo admin_assets(); ?>bower_components/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="<?php echo admin_assets(); ?>dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="<?php echo admin_assets(); ?>dist/css/skins/skin-green.min.css">
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

<?php foreach($extra_css as $css) : ?>
	<link rel="stylesheet" href="<?php echo admin_assets($css); ?>">
<?php endforeach; ?>

<link rel="stylesheet" href="<?php echo admin_assets(); ?>dist/css/custom.css">