<!DOCTYPE html>
<html>
<head>

    <?php $this->load->view('admin/layouts/head', $this->data); ?>

</head>
<body class="hold-transition skin-green sidebar-mini">
    <div class="wrapper">

        <?php $this->load->view('admin/layouts/header', $this->data); ?>

        <?php $this->load->view('admin/layouts/sidebar', $this->data); ?>


        <!-- Content Wrapper -->
        <div class="content-wrapper" style="padding-top: 50px;">

            <!-- Subnav -->
            <?php $this->load->view($subnav, $this->data); ?>

            <!-- Main content -->
            <section class="content">

                <?php $this->load->view('admin/layouts/alert', $this->data); ?>

                <?php $this->load->view($temp, $this->data); ?>

            </section>

            <!-- /.content -->

        </div>
        <!-- /.Content-wrapper -->

        <?php $this->load->view('admin/layouts/footer', $this->data); ?>

    </div>
    <!-- ./wrapper -->

    <?php $this->load->view('admin/layouts/js_footer', $this->data); ?>

</body>
</html>
