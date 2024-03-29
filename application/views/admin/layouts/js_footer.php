<script src="<?php echo admin_assets(); ?>bower_components/jquery/dist/jquery.min.js"></script>
<script src="<?php echo admin_assets(); ?>bower_components/jquery-ui/jquery-ui.min.js"></script>
<script src="<?php echo admin_assets(); ?>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="<?php echo admin_assets(); ?>bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<?php echo admin_assets(); ?>bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo admin_assets(); ?>dist/js/adminlte.min.js"></script>
<?php foreach($extra_js as $js) : ?>
	<script type="text/javascript" src="<?php echo admin_assets($js); ?>"></script>
<?php endforeach; ?>
<script type="text/javascript">
	function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#image_upload').attr('src', e.target.result);
            }
            
            reader.readAsDataURL(input.files[0]);
        }
    }
    
    $("#image").change(function(){
    	$("#help-sentence").hide();
        readURL(this);
    });

	$(function () {

		<?php echo htmlspecialchars_decode($write_js); ?>
	});
</script>
