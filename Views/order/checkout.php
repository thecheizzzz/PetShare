<!-- pages-title-start -->
<!-- <div class="pages-title section-padding">
	 <div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="pages-title-text text-center">
					<h2>Hợp đồng</h2>
					<ul class="text-left">
						<li><a href="index.php?act=home">Trang chủ</a></li>
						<li><span> // </span>Hợp đồng</li>
					</ul>
				</div>
			</div>
		</div>
	</div> 
</div> -->
<!-- pages-title-end -->
<!-- Checkout content section start -->
<section class="pages checkout section-padding">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="main-input single-cart-form padding60">
					<div class="log-title  text-center">
						<h3><strong>Thông tin người mượn</strong></h3>
					</div>
					<div class="custom-input">
						<form action="?act=checkout&xuli=save" method="post">
							<label>Họ và tên</label><input type="text" name="NguoiNhan" placeholder="Người nhận" required value="<?php echo $_SESSION['login']['Ho']." ".$_SESSION['login']['Ten']  ?>"/>
							<label>Email</label><input type="email" name="Email" placeholder="Địa chỉ Email.." required  value="<?=$_SESSION['login']['Email']?>"/>
							<label>Số điện thoại</label><input type="text" name="SDT" placeholder="Số điện thoại.." required pattern="[0-9]+" minlength="10"  value="<?=$_SESSION['login']['SDT']?>"/>
							<label>Địa chỉ</label><input type="text" name="DiaChi" placeholder="Đại chỉ giao hàng" required  value="<?=$_SESSION['login']['DiaChi']?>"/>
							</br>
							<div class="submit-text  text-center">
								<button type="submit">Xác nhận</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Checkout content section end -->