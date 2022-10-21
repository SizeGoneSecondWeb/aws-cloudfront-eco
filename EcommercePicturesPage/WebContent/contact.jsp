<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<jsp:include page="Header.html" />
</head>

<body>
	<!-- Navbar Start -->
	<div class="container-fluid bg-dark mb-30">
		<div class="row px-xl-5">
			<div class="col-lg-3 d-none d-lg-block">
				<a
					class="btn d-flex align-items-center justify-content-between bg-primary w-100"
					data-toggle="collapse" href="#navbar-vertical"
					style="height: 65px; padding: 0 30px;">
					<h6 class="text-dark m-0">
						<i class="fa fa-bars mr-2"></i>Categories
					</h6> <i class="fa fa-angle-down text-dark"></i>
				</a>
				<nav
					class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light"
					id="navbar-vertical"
					style="width: calc(100% - 30px); z-index: 999;">
					<div class="navbar-nav w-100">
						<div class="nav-item dropdown dropright">
							<a href="#" class="nav-link dropdown-toggle"
								data-toggle="dropdown">Dresses <i
								class="fa fa-angle-right float-right mt-1"></i></a>
							<div
								class="dropdown-menu position-absolute rounded-0 border-0 m-0">
								<a href="" class="dropdown-item">Men's Dresses</a> <a href=""
									class="dropdown-item">Women's Dresses</a> <a href=""
									class="dropdown-item">Baby's Dresses</a>
							</div>
						</div>
						<a href="" class="nav-item nav-link">Shirts</a> <a href=""
							class="nav-item nav-link">Jeans</a> <a href=""
							class="nav-item nav-link">Swimwear</a> <a href=""
							class="nav-item nav-link">Sleepwear</a> <a href=""
							class="nav-item nav-link">Sportswear</a> <a href=""
							class="nav-item nav-link">Jumpsuits</a> <a href=""
							class="nav-item nav-link">Blazers</a> <a href=""
							class="nav-item nav-link">Jackets</a> <a href=""
							class="nav-item nav-link">Shoes</a>
					</div>
				</nav>
			</div>
			<div class="col-lg-9">
				<nav
					class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
					<a href="index.html" class="text-decoration-none d-block d-lg-none">
						<span class="h1 text-uppercase text-dark bg-light px-2">Pictures</span>
						<span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span>
					</a>
					<button type="button" class="navbar-toggler" data-toggle="collapse"
						data-target="#navbarCollapse">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-between"
						id="navbarCollapse" action="Header.html">
						<div class="navbar-nav mr-auto py-0">
							<a href="home" class="nav-item nav-link" id="home">Home</a>
							<a href="shop.jsp" class="nav-item nav-link" id="shop">Shop</a> <a
								href="detail.jsp" class="nav-item nav-link" id="shop_detail">Shop
								Detail</a>
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle"
									data-toggle="dropdown" id="page">Pages <i
									class="fa fa-angle-down mt-1"></i></a>
								<div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
									<a href="cart.jsp" class="dropdown-item">Shopping Cart</a> <a
										href="checkout.jsp" class="dropdown-item">Checkout</a>
								</div>
							</div>
							<a href="#" class="nav-item nav-link active" id="contact">Contact</a>
						</div>
						<div class="navbar-nav ml-auto py-0 d-none d-lg-block">
							<a href="" class="btn px-0"> <i
								class="fas fa-heart text-primary"></i> <span
								class="badge text-secondary border border-secondary rounded-circle"
								style="padding-bottom: 2px;">0</span>
							</a> <a href="cart.jsp" class="btn px-0 ml-3"> <i
								class="fas fa-shopping-cart text-primary"></i> <span
								class="badge text-secondary border border-secondary rounded-circle"
								style="padding-bottom: 2px;">0</span>
							</a>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- Navbar End -->

	<!-- Breadcrumb Start -->
	<div class="container-fluid">
		<div class="row px-xl-5">
			<div class="col-12">
				<nav class="breadcrumb bg-light mb-30">
					<a class="breadcrumb-item text-dark" href="home">Home</a> <span
						class="breadcrumb-item active">Contact</span>
				</nav>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->


	<!-- Contact Start -->
	<div class="container-fluid">
		<h2
			class="section-title position-relative text-uppercase mx-xl-5 mb-4">
			<span class="bg-secondary pr-3">Contact Us</span>
		</h2>
		<div class="row px-xl-5">
			<div class="col-lg-7 mb-5">
				<div class="contact-form bg-light p-30">
					<div id="success"></div>
					<form name="sentMessage" id="contactForm" novalidate="novalidate">
						<div class="control-group">
							<input type="text" class="form-control" id="name"
								placeholder="Your Name" required="required"
								data-validation-required-message="Please enter your name" />
							<p class="help-block text-danger"></p>
						</div>
						<div class="control-group">
							<input type="email" class="form-control" id="email"
								placeholder="Your Email" required="required"
								data-validation-required-message="Please enter your email" />
							<p class="help-block text-danger"></p>
						</div>
						<div class="control-group">
							<input type="text" class="form-control" id="subject"
								placeholder="Subject" required="required"
								data-validation-required-message="Please enter a subject" />
							<p class="help-block text-danger"></p>
						</div>
						<div class="control-group">
							<textarea class="form-control" rows="8" id="message"
								placeholder="Message" required="required"
								data-validation-required-message="Please enter your message"></textarea>
							<p class="help-block text-danger"></p>
						</div>
						<div>
							<button class="btn btn-primary py-2 px-4" type="submit"
								id="sendMessageButton">Send Message</button>
						</div>
					</form>
				</div>
			</div>
			<div class="col-lg-5 mb-5">
				<div class="bg-light p-30 mb-30">
					<iframe style="width: 100%; height: 250px;"
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.484300946451!2d106.76972825028096!3d10.850721392233206!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752763f23816ab%3A0x282f711441b6916f!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTxrAgcGjhuqFtIEvhu7kgdGh14bqtdCBUcC4gSOG7kyBDaMOtIE1pbmg!5e0!3m2!1svi!2s!4v1663732784826!5m2!1svi!2s"
						frameborder="0" style="border:0;" allowfullscreen=""
						aria-hidden="false" tabindex="0"></iframe>
				</div>
				<div class="bg-light p-30 mb-3">
					<p class="mb-2">
						<i class="fa fa-map-marker-alt text-primary mr-3"></i>1 Đ. Võ Văn
						Ngân, Linh Chiểu, Thành Phố Thủ Đức, Thành phố Hồ Chí Minh
					</p>
					<p class="mb-2">
						<i class="fa fa-envelope text-primary mr-3"></i>20110517@student.hcmute.edu.vn
					</p>
					<p class="mb-2">
						<i class="fa fa-phone-alt text-primary mr-3"></i>+84 943 602 574
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Contact End -->


	<!-- Footer Start -->
	<jsp:include page="Footer.html" />
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Contact Javascript File -->
	<script src="mail/jqBootstrapValidation.min.js"></script>
	<script src="mail/contact.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
</body>

</html>