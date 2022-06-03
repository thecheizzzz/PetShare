<header class="header-one header-two">
    <!-- <div class="header-top-two">
        <div class="container text-center">
            <div class="row">
                <div class="col-sm-12">
                    <div class="middel-top">
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <div class="container-fluid text-center">
        <div class="row">
            <div class="col-sm-2">
                <div class="logo">
                    <a href="?act=home"><img src="public/img/logo.jpg" alt="petshare" /></a>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="header-middel">
                    <div class="mainmenu">
                        <nav>
                            <ul>
                                <li><a href="?act=home">Trang chủ</a></li>
                                <li><a href="?act=shop">Thú cưng</a>
                                    <ul class="magamenu">
                                        <li class="banner"></li>
                                        <?php    $i = 1; foreach ($data_chitietDM as $row) { ?>
                                            <li>
                                                <a href="?act=shop&sp=<?=$i?>"><h5><?= $data_danhmuc[$i-1]['TenDM'] ?></h5></a>
                                                <ul>
                                                    <?php foreach ($row as $value) { ?>
                                                    <li><a href="?act=shop&sp=<?=$value['MaDM']?>&loai=<?=$value['TenLSP']?>"><?=$value['TenLSP']?></a></li>
                                                    <?php }?>
                                                </ul>
                                            </li>
                                        <?php $i++; } ?>
                                        <li class="banner"></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="?act=about">Giới Thiệu</a>
                                </li>
                                 
                                <li><a href="?act=contact">Liên hệ</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!-- mobile menu start -->
                    <div class="mobile-menu-area">
                        <div class="mobile-menu">
                            <nav id="dropdown">
                                <ul>
                                    <li><a href="?act=home">Trang chủ</a>
                                    </li>
                                    <li><a href="?act=shop">Thú cưng</a>
                                        <ul>
                                        <?php $i = 1; foreach ($data_chitietDM as $row) { ?>
                                            <li>
                                                <a href="?act=shop&sp=<?=$i?>"><h5><?= $data_danhmuc[$i-1]['TenDM'] ?></h5></a>
                                                <ul>
                                                    <?php foreach ($row as $value) { ?>
                                                    <li><a href="?act=shop&sp=<?=$value['MaDM']?>&loai=<?=$value['TenLSP']?>"><?=$value['TenLSP']?></a></li>
                                                    <?php }?>
                                                </ul>
                                            </li>
                                        <?php $i++; } ?>
                                        </ul>
                                    </li>
                                     <li>
                                        <a href="?act=about">Giới Thiệu</a>
                                    </li>
                                     
                                    <li><a href="?act=contac">Liên hệ</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="cart-itmes">
                    <a class="cart-itme-a" href="?act=cart">
                        <?php 
                            $soluong = 0;
                            $thanhtien = 0;
                            if(isset($_SESSION['sanpham'])){
                            foreach ($_SESSION['sanpham'] as $value) {
                                $soluong +=1;
                                $thanhtien +=$value['ThanhTien'];
                            }}
                        ?>
                        <i class="mdi mdi-heart-outline"></i>
                        <strong>Yêu Thích: </strong><?=$soluong?>
                    </a>
        
                </div>
            </div>
            <div class="col-sm-2">
            <div class="middel-top clearfix">
            <ul class="clearfix right floatleft">
                            <li>
                                <a href="?act=taikhoan"><i class="mdi mdi-account"></i></a>
                                <ul>
                                    <?php  if(isset($_SESSION['login'])){ ?>
                                    <li><b>Chào <?=$_SESSION['login']['Ten']?></b></li>
                                    <li><a href="?act=taikhoan&xuli=account">Tài khoản</a></li>
                                    <li><a href="?act=taikhoan&xuli=dangxuat">Đăng xuất</a></li>
                                    <?php
                                        if(isset($_SESSION['isLogin_Admin']) || isset($_SESSION['isLogin_Nhanvien'])){ ?>
                                        <li><a href="admin/?mod=login">Trang quản lý</a></li>
                                  <?php }}else{ ?>
                                    <?php } ?>
                                </ul>
                            </li>
                        </ul>
                            </div>
                            </div>
        </div>
    </div>
</header>