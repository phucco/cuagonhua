<!DOCTYPE html>
<html>
<head>

	<?php $this->load->view('site/layouts/head', $this->data); ?>

</head>
<body>
   	<form name="" method="post" action="" id="">

    	<div id="innerpage">

			<div id="banner">
			    <img src="<?php echo site_assets(); ?>DataUpload/Banner/1115121115bn2.jpg" style="border-width:0px;" />
			    <div class="slogan">
			        <img src="<?php echo site_assets(); ?>assets/css/images/slogan.png">
			    </div>
			</div>
    
			<?php $this->load->view('site/layouts/header', $this->data); ?> 

	        <div id="main">

	        	<?php $this->load->view('site/layouts/breadcrumbs', $this->data); ?>
			
				<div class="clear"></div>

				<div class="units-row end">
				    <div class="unit-20 col-alpha">        

						<?php $this->load->view($sidebar, $this->data); ?>

				    </div>

				    <div class="unit-80 colright">

				        <?php $this->load->view($temp, $this->data); ?>

				    </div>

				</div>

	        </div>
	        
	        <?php $this->load->view('site/layouts/footer', $this->data); ?>

    	</div>

    </form>
</body>

</html>
