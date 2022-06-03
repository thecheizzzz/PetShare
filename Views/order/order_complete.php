<!-- pages-title-start -->
<div class="pages-title section-padding">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="pages-title-text text-center">
					<h2>HOÀN THÀNH HOÁ ĐƠN
					</h2>
					<ul class="text-left">
						<li><a href="index.php?act=home">Trang chủ</a></li>
						<li><span> // </span>HOÀN THÀNH HOÁ ĐƠN</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- pages-title-end -->
<!-- order-complete content section start -->
<section class="pages checkout order-complete section-padding">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 text-center">
				<div class="complete-title">
					<p>Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi. Đơn đặt hàng của bạn đã được nhận; Đã nhận được đơn đặt hàng của bạn.</p>
					<p>Vui Lòng Chờ Xét Duyệt</p>
				</div>
			</div>
		</div>
		<div class="row">
			
			<div class="col-xs-12 col-sm-6">
				<div class="order-details padding60">
					<div class="log-title">
						<h3><strong>ĐƠN HÀNG CỦA BẠN</strong></h3>
					</div>
					<div class="por-dse clearfix">
						<ul>
							<li><span>Tên người mượn:<strong>:</strong></span> <?php echo $_SESSION['login']['Ho']. " " .$_SESSION['login']['Ten']?></li>
							<li><span>Email<strong>:</strong></span> <?=$_SESSION['login']['Email']?></li>
							<li><span>Số ĐT<strong>:</strong></span> <?=$_SESSION['login']['SDT']?></li>
							<li><span>Địa chỉ<strong>:</strong></span> <?=$_SESSION['login']['DiaChi']?></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- order-complete content section end -->