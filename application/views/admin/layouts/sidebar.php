<aside class="main-sidebar" style="position: fixed;">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="treeview">
                <a href="<?php echo base_url('/post/'); ?>">
                    <i class="fa fa-bell"></i><span> Thông báo</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li>
                        <a href="<?php echo base_url('/post/'); ?>"><i class="fa fa-bookmark"></i> Tất cả thông báo</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url('/post/add/'); ?>"><i class="fa fa-pencil"></i> Viết thông báo</a>
                    </li>
                </ul>
            </li>
            <li class="treeview">
                <a href="<?php echo base_url('/post/'); ?>">
                    <i class="fa fa-briefcase"></i><span> Tiến độ công việc</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li>
                        <a href="<?php echo base_url('/post/'); ?>"><i class="fa fa-pencil"></i> Team 1</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url('/post/add/'); ?>"><i class="fa fa-pencil"></i> Team 2</a>
                    </li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-comments"></i><span> Trò chuyện</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li>
                        <a href="#"><i class="fa fa-commenting"></i> Hội thoại 1</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-commenting"></i> Hội thoại 2</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-commenting"></i> Hội thoại 3</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-commenting"></i> Hội thoại 4</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-commenting"></i> Hội thoại 5</a>
                    </li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-envelope"></i><span> Thư</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li>
                        <a href="<?php echo base_url('/mail/compose/'); ?>"><i class="fa fa-pencil"></i> Soạn thư</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url('/mail/inbox/'); ?>"><i class="fa fa-inbox"></i> Hộp thư đến</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url('/mail/sent/'); ?>"><i class="fa fa-envelope-o"></i> Thư đã gửi</a>
                    </li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-paperclip"></i><span> Chia sẻ file</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li>
                        <a href="<?php echo base_url('/file/add/'); ?>"><i class="fa fa-upload"></i> Tải lên</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-share-alt"></i> Được chia sẻ</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="<?php echo base_url('/user/edit/'); ?>"><i class="fa fa-user"></i><span> Tài khoản</span></a>
            </li>
            <li>
                <a href="<?php echo base_url('/test/'); ?>"><i class="fa fa-pen"></i><span> Test</span></a>
            </li>
        </ul>
    </section>
</aside>