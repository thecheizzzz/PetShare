<!-- pages-title-start -->
<div class="pages-title section-padding">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="pages-title-text text-center">
					<h2>Yêu thích</h2>
					<ul class="text-left">
						<li><a href="?act=home">Trang chủ</a></li>
						<li><span> // </span>Yêu thích</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- pages-title-end -->
<!-- cart content section start -->
<section class="pages cart-page section-padding">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="table-responsive padding60">
					<table class="wishlist-table text-center" id="dxd">
						<thead>
							<tr>
								<th>Tên thú cưng</th>
								<th>Mô tả</th>
								<th></th>
								<th></th>
								<th>Xóa</th>
							</tr>
						</thead>
						<tbody>
							<?php
							if (isset($_SESSION['sanpham'])) {
								foreach ($_SESSION['sanpham'] as $value) { ?>
									<tr>
										<td class="td-img text-left">
											<a href="?act=detail&id=<?= $value['MaSP'] ?>"><img src="public/<?= $value['HinhAnh1'] ?>" alt="Add Product" /></a>
											<div class="items-dsc">
												<h5><a href="?act=detail&id=<?= $value['MaSP'] ?>"><?= $value['TenSP'] ?></a></h5>
											</div>
										</td>
										<td><?= $value['MoTa'] ?></td>
										<td>
										</td>
										<td>
										</td>
										<td><a href="?act=cart&xuli=deleteall&id=<?= $value['MaSP'] ?>"><i class="mdi mdi-close" title="Remove this product"></i></a></td>
									</tr>
							<?php }
							} ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="row margin-top">
				<div class="single-cart-form padding60">
					<div class="cart-form-text pay-details table-responsive">
						<form action="?act=checkout" method="post">
							
							<div class="submit-text coupon text-center">
								<button type="submit">Mượn</button>
							</div>
						</form>
					</div>
				</div>
		</div>
	</div>
</section>
<!-- cart content section end -->