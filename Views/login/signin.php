<!-- pages-title-start -->
<div class="pages-title section-padding">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="pages-title-text text-center">
					<h2>Đăng ký</h2>
					<ul class="text-left">
						<li><a href="?act=home">Trang chủ</a></li>
						<li><span> // </span>Đăng ký</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- pages-title-end -->
<!-- login content section start -->
<section class="pages login-page section-padding">
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
			</div>
			<div class="col-sm-6">
				<div class="main-input padding60 new-customer" id="dangky">
					<div class="log-title text-center">
						<h3><strong>Khách hàng mới</strong></h3>
					</div>
					<?php if (isset($_COOKIE['msg'])) { ?>
						<div class="alert alert-success">
							<strong>Thông báo</strong> <?= $_COOKIE['msg'] ?>
						</div>
					<?php } ?>
					<div class="custom-input">
						<form action="?act=taikhoan&xuli=dangky" method="post" id="form2">
							<label>Họ</label><input type="text" name="Ho" placeholder="Họ.." required />
							<label>Tên</label><input type="text" name="Ten" placeholder="Tên.." required />
							<label>Tên đăng nhập</label><input type="text" name="TaiKhoan" placeholder="Tên tài khoản đăng nhập.." required  minlength="6"/>
							<label>Email</label><input type="email" name="Email" placeholder="Địa chỉ Email.." required />
							<label>Số điện thoại</label><input type="text" name="SĐT" placeholder="Số điện thoại.." required pattern="[0-9]+" minlength="10" />
							<label>Mật khẩu</label><input type="password" name="MatKhau" placeholder="Mật khẩu" minlength="6" required />
							<label>Xác nhận mật khẩu</label><input type="password" name="check_password" placeholder="Xác nhận mật khẩu" minlength="6" required />
							<div class="submit-text coupon text-center">
								<button type="submit" form="form2">Đăng ký</button>
							</div>
						</form>
					</div>
				</div>
			</div>
            <div class="col-sm-3">
                    </div>
		</div>
	</div>
</section>
<script src="public/js/login.js"></script>
<!-- login content section end -->