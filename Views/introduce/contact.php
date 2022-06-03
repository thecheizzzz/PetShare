<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- pages-title-start -->
<!-- <div class="pages-title section-padding">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="pages-title-text text-center">
					<h2>Thông tin liên hệ</h2>
				</div>
			</div>
		</div>
	</div>
</div> -->
<!-- pages-title-end -->
<!-- contact content section start -->
<div class="pages contact-page section-padding">
	<div class="container-fluid">
		<div class="row text-center">
		<h2>Liên hệ với chúng tôi</h2>
</div>
		<div class="row" style="padding-top">
			<div class="col-sm-2 padding-top">
</div>
		<div class="col-sm-4 padding-top">
				<div class="contact-details">
					<div class="row">
						<div class="infos-contact">
                	<p><i class="fa fa-location-arrow" aria-hidden="true"></i> <span class="text">470, Trần Đại Nghĩa, Ngũ Hành Sơn, Đà Nẵng</span></p>
                    <p><i class="fa fa-phone" aria-hidden="true"></i> <span class="text">0123.456.789</span></p>
                    <p><i class="fa fa-envelope-o" aria-hidden="true"></i> <span class="text">petshare@gmail.com</span></p>
					</div>
					<p><label> Tên của bạn (bắt buộc)<br />
    					<span class="wpcf7-form-control-wrap your-name"><input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" /></span> </label></p>
					<p><label> Địa chỉ Email (bắt buộc)<br />
    					<span class="wpcf7-form-control-wrap your-email"><input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" /></span> </label></p>
					<p><label> Tiêu đề:<br />
    					<span class="wpcf7-form-control-wrap your-subject"><input type="text" name="your-subject" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" /></span> </label></p>
					<p><label> Thông điệp<br />
   						 <span class="wpcf7-form-control-wrap your-message"><textarea name="your-message" cols="40" rows="8" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false"></textarea></span> </label></p>
					<p><input type="submit" value="Gửi đi" class="wpcf7-form-control wpcf7-submit" /></p>

					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="googleMap-info">
					<div id="googleMap"></div>
					<div class="map-info">
						<p><strong>Petshare</strong></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- contact content section end -->
<!-- Google Map JS -->
<script src="https://maps.googleapis.com/maps/api/js"></script>
<script>
	function initialize() {
	
		var mapOptions = {
		zoom: 17,
		hue: '#E9E5DC',
		scrollwheel: false,
		mapTypeId:google.maps.MapTypeId.TERRAIN,
		center: new google.maps.LatLng(15.975322399084016, 108.25321532118582)
		};

		var map = new google.maps.Map(document.getElementById('googleMap'),
			mapOptions);


		var marker = new google.maps.Marker({
		position: map.getCenter(),
		icon: 'https://img.icons8.com/color/48/000000/marker--v1.png',
		map: map
		});

	}

	google.maps.event.addDomListener(window, 'load', initialize);
</script>
