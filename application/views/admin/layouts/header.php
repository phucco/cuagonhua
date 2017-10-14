<header class="main-header" style="position: fixed;">
    <a href="<?php echo base_url(); ?>" class="logo">
        <span class="logo-mini">CGN</span>
        <span class="logo-lg">Cửa gỗ nhựa</span>
    </a>

    <nav class="navbar navbar-fixed-top">
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<?php echo admin_assets(); ?>dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">Admin</span>
            </a>
            <ul class="dropdown-menu">
              <li class="user-header">
                <img src="<?php echo admin_assets(); ?>dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                <p>Admin</p>
              </li>
              
              <li class="user-footer">
                <div class="pull-left">
                  <a href="<?php echo base_url('/user/edit/'); ?>" class="btn btn-default btn-flat">Đổi mật khẩu</a>
                </div>
                <div class="pull-right">
                  <a href="<?php echo base_url('/logout/'); ?>" class="btn btn-default btn-flat">Đăng xuất</a>
                </div>
              </li>
            </ul>
          </li>
          
        </ul>
      </div>
    </nav>
  </header>