<!-- pages-title-start -->
<div class="pages-title section-padding">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="pages-title-text text-center">
					<h2>Tài khoản của tôi</h2>
					<ul class="text-left">
						<li><a href="index.php?act=home">Trang chủ</a></li>
						<li><span> // </span>Tài khoản</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- pages-title-end -->
<!-- My account content section start -->
<section class="pages my-account-page section-padding">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12">
				<div class="padding60">
					<div class="prament-area main-input" id="doitk">
						<ul class="panel-group" id="accordion">
							<li class="panel">
								<!-- <div class="account-title" data-toggle="collapse" data-parent="#accordion" data-target="#collapse1">
									<label>
										<input type="radio" checked value="forever" name="rememberme" />
										Thông tin cá nhân
									</label>
								</div> -->
								<!-- <div id="collapse1" class="panel-collapse collapse in">
									<div class="single-log-info">
										<div class="bulling-title">
											<b>
												<?php if (isset($_COOKIE['doimk'])) {
													echo $_COOKIE['doimk'];
												} ?>
											</b> -->
											<div class="custom-input">
												<form action="?act=taikhoan&xuli=update" method="post">
													<div class="row">
													<div class="col-md-6">
													<form action="#">
  													<img id="jonh" src="https://d25ynr0tqe9wpe.cloudfront.net/assets/missing/avatar-borrower-square-a7cad320ae4bbd984152ebf3a500bda2250ac75b86e4df092f777f06298144a9.svg" alt="John" style="width:300px; height: 300px;">
  													<input type='file' name="Anh" required value="<?= $data['Anh']?>" onchange="readURL(this);"/>
  													</form>
														</div>
														<div class="col-md-6">
															<label>Họ</label><input type="text" name="Ho" placeholder="Họ.." required value="<?= $data['Ho'] ?>" />
															<label>Tên</label><input type="text" name="Ten" placeholder="Tên.." required value="<?= $data['Ten'] ?>" />
															<div class="custom-select">
															<label>Giới tính</label><select class="form-control" name="GioiTinh" title="Giới tính">
															<option <?= ($data['GioiTinh'] == 'Nam') ? 'selected' : '' ?> value="Nam"> Nam</option>
															<option <?= ($data['GioiTinh'] == 'Nữ') ? 'selected' : '' ?> value="Nữ"> Nữ</option>
															<option <?= ($data['GioiTinh'] == 'Khác') ? 'selected' : '' ?> value="Khác"> Khác</option>
														</select>
													</div>
													<label>Email</label><input type="email" name="Email" placeholder="Địa chỉ Email.." required value="<?= $data['Email'] ?>" />
													<label>Số điện thoại</label><input type="text" name="SĐT" placeholder="Số điện thoại.." required pattern="[0-9]+" minlength="10" value="<?= $data['SDT'] ?>" />
													<label>Địa chỉ</label><input type="text" name="DiaChi" placeholder="Địa chỉ.." required value="<?= $data['DiaChi'] ?>" />
													<div class="submit-text">
														<button type="submit_tt">Lưu</button>
													</div>
														</div>
													</div>
													
												</form>
											</div>
										</div>
									</div>
							</li>
							<!-- <li class="panel">
								<div class="account-title" data-toggle="collapse" data-parent="#accordion" data-target="#collapse4">
									<label>
										<input type="radio" value="forever" name="rememberme" />
										Đổi mật khẩu
									</label>
								</div>
								<div id="collapse4" class="panel-collapse collapse">
									<div class="single-log-info">
										<div class="custom-input">
											<form action="?act=taikhoan&xuli=update" method="post">
												<input type="password" placeholder="Mật khẩu hiện tại .. " name="MatKhau" minlength="6" required />
												<input type="password" placeholder="Mật khẩu mới .. " name="MatKhauMoi" />
												<input type="password" placeholder="Xác nhận lại mật khẩu .." name="MatKhauXN" />
												<div class="submit-text text-left">
													<button type="submit_pw" value="submit form">Lưu</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</li> -->
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
	  function readURL(input) {
        if (input.files && input.files[0]) {
          var reader = new FileReader();
            reader.onload = function (e) {
              $('#jonh')
              .attr('src', e.target.result);
            };
            reader.readAsDataURL(input.files[0]);
        }
      }
	</script>
<!-- my account content section end -->