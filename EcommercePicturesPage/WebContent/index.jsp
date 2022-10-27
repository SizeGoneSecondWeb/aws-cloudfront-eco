<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">

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
								data-toggle="dropdown">Hot <i
								class="fa fa-angle-right float-right mt-1"></i></a>
								<div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
									<c:forEach var="c" items="${categories}">
										<a href="" class="dropdown-item">${c.name}</a> 
									</c:forEach>
								</div>
							<div
								class="dropdown-menu position-absolute rounded-0 border-0 m-0">
								<a href="" class="dropdown-item">Men's Dresses</a> <a href=""
									class="dropdown-item">Women's Dresses</a> <a href=""
									class="dropdown-item">Baby's Dresses</a>
							</div>
							
						</div>
						<c:forEach var="c" items="${categories}">
								<a href="" class="nav-item nav-link">${c.name}</a> 
						</c:forEach>
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
						id="navbarCollapse">
						<div class="navbar-nav mr-auto py-0">
							<a href="home" class="nav-item nav-link active" id="home">Home</a> <a
								href="shop.jsp" class="nav-item nav-link" id="shop">Shop</a> <a
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
							<a href="contact.jsp" class="nav-item nav-link" id="contact">Contact</a>
						</div>
						<div class="navbar-nav ml-auto py-0 d-none d-lg-block">
							<a href="#" class="btn px-0"> <i
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

	<!-- Carousel Start -->
	<div class="container-fluid mb-3">
		<div class="row px-xl-5">
			<div class="col-lg-8">
				<div id="header-carousel"
					class="carousel slide carousel-fade mb-30 mb-lg-0"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#header-carousel" data-slide-to="0"
							class="active"></li>
						<li data-target="#header-carousel" data-slide-to="1"></li>
						<li data-target="#header-carousel" data-slide-to="2"></li>
						<li data-target="#header-carousel" data-slide-to="3"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item position-relative active"
							style="height: 430px;">
							<img class="position-absolute w-100 h-100" src="img/zoro.png"
								style="object-fit: cover;">
							<div
								class="carousel-caption d-flex flex-column align-items-center justify-content-center">
								<div class="p-3" style="max-width: 700px;">
									<h1
										class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Anime</h1>
									<p class="mx-md-5 px-5 animate__animated animate__bounceIn">Tam
										kiếm phái</p>
									<a
										class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp"
										href="#">Shop Now</a>
								</div>
							</div>
						</div>
						<div class="carousel-item position-relative"
							style="height: 430px;">
							<img class="position-absolute w-100 h-100" src="img/yasuo.jpg"
								style="object-fit: cover;">
							<div
								class="carousel-caption d-flex flex-column align-items-center justify-content-center">
								<div class="p-3" style="max-width: 700px;">
									<h1
										class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Yasuo
										Hoa Linh</h1>
									<p class="mx-md-5 px-5 animate__animated animate__bounceIn">Ha
										sa giiiiii</p>
									<a
										class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp"
										href="#">Shop Now</a>
								</div>
							</div>
						</div>
						<div class="carousel-item position-relative"
							style="height: 430px;">
							<img class="position-absolute w-100 h-100"
								src="img/phongcanh.jpg" style="object-fit: cover;">
							<div
								class="carousel-caption d-flex flex-column align-items-center justify-content-center">
								<div class="p-3" style="max-width: 700px;">
									<h1
										class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Tranh
										phong cảnh</h1>
									<p class="mx-md-5 px-5 animate__animated animate__bounceIn">Vì
										mất đi ánh mặt trời</p>
									<a
										class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp"
										href="#">Shop Now</a>
								</div>
							</div>
						</div>
						<div class="carousel-item position-relative"
							style="height: 430px;">
							<img class="position-absolute w-100 h-100" src="img/lam.jpg"
								style="object-fit: cover;">
							<div
								class="carousel-caption d-flex flex-column align-items-center justify-content-center">
								<div class="p-3" style="max-width: 700px;">
									<h1
										class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Tranh
										tả thực</h1>
									<p class="mx-md-5 px-5 animate__animated animate__bounceIn">Anh
										trai học bách khoa cơ khí bỏ ngang sang học IT</p>
									<a
										class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp"
										href="#">Shop Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="product-offer mb-30" style="height: 200px;">
					<img class="img-fluid" src="img/offer-1.jpg" alt="">
					<div class="offer-text">
						<h6 class="text-white text-uppercase">Save 20%</h6>
						<h3 class="text-white mb-3">Special Offer</h3>
						<a href="" class="btn btn-primary">Shop Now</a>
					</div>
				</div>
				<div class="product-offer mb-30" style="height: 200px;">
					<img class="img-fluid" src="img/offer-2.jpg" alt="">
					<div class="offer-text">
						<h6 class="text-white text-uppercase">Save 20%</h6>
						<h3 class="text-white mb-3">Special Offer</h3>
						<a href="" class="btn btn-primary">Shop Now</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Carousel End -->


	<!-- Featured Start -->
	<div class="container-fluid pt-5">
		<div class="row px-xl-5 pb-3">
			<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
				<div class="d-flex align-items-center bg-light mb-4"
					style="padding: 30px;">
					<h1 class="fa fa-check text-primary m-0 mr-3"></h1>
					<h5 class="font-weight-semi-bold m-0">Quality Product</h5>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
				<div class="d-flex align-items-center bg-light mb-4"
					style="padding: 30px;">
					<h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
					<h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
				<div class="d-flex align-items-center bg-light mb-4"
					style="padding: 30px;">
					<h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
					<h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
				<div class="d-flex align-items-center bg-light mb-4"
					style="padding: 30px;">
					<h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
					<h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
				</div>
			</div>
		</div>
	</div>
	<!-- Featured End -->


	<!-- Categories Start -->
	<div class="container-fluid pt-5">
		<h2
			class="section-title position-relative text-uppercase mx-xl-5 mb-4">
			<span class="bg-secondary pr-3">Categories</span>
		</h2>
		<div class="row px-xl-5 pb-3">
			<c:forEach items="${sessionScope.listC}" var="o"> 
				<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
					<a class="text-decoration-none" href="">
						<div class="cat-item img-zoom d-flex align-items-center mb-4">
							<div class="overflow-hidden" style="width: 100px; height: 100px;">
								<img class="img-fluid" src="img/cat-2.jpg" alt="">
							</div>
							<div class="flex-fill pl-3">
								<h6>${o.cname}</h6>
								<small class="text-body">100 Products</small>
							</div>
						</div>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- Categories End -->


	<!-- Products Start -->
	<div class="container-fluid pt-5 pb-3">
		<h2
			class="section-title position-relative text-uppercase mx-xl-5 mb-4">
			<span class="bg-secondary pr-3">Featured Products</span>
		</h2>
		<div class="row px-xl-5">
			<c:forEach items="${sessionScope.listP}" var="o">
				<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
					<div class="product-item bg-light mb-4">
						<div class="product-img position-relative overflow-hidden">
							<img class="img-fluid w-100" src="${o.image}" alt="">
							<div class="product-action">
								<a class="btn btn-outline-dark btn-square" href=""><i
									class="fa fa-shopping-cart"></i></a> <a
									class="btn btn-outline-dark btn-square" href=""><i
									class="far fa-heart"></i></a> <a
									class="btn btn-outline-dark btn-square" href=""><i
									class="fa fa-sync-alt"></i></a> <a
									class="btn btn-outline-dark btn-square" href=""><i
									class="fa fa-search"></i></a> 
							</div>
						</div>
						<div class="text-center py-4">
							<a class="h6 text-decoration-none text-truncate" href="#">${o.name}</a>
							<div
								class="d-flex align-items-center justify-content-center mt-2">
								<h5>${o.price}</h5>
								<h6 class="text-muted ml-2">
									<del>$1.123.000</del>
								</h6>
							</div>
							<div
								class="d-flex align-items-center justify-content-center mb-1">
								<small class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small>(99)</small>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- Products End -->


	<!-- Offer Start -->
	<div class="container-fluid pt-5 pb-3">
		<div class="row px-xl-5">
			<div class="col-md-6">
				<div class="product-offer mb-30" style="height: 300px;">
					<img class="img-fluid" src="img/offer-1.jpg" alt="">
					<div class="offer-text">
						<h6 class="text-white text-uppercase">Save 20%</h6>
						<h3 class="text-white mb-3">Special Offer</h3>
						<a href="" class="btn btn-primary">Shop Now</a>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="product-offer mb-30" style="height: 300px;">
					<img class="img-fluid" src="img/offer-2.jpg" alt="">
					<div class="offer-text">
						<h6 class="text-white text-uppercase">Save 20%</h6>
						<h3 class="text-white mb-3">Special Offer</h3>
						<a href="" class="btn btn-primary">Shop Now</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Offer End -->


	<!-- Products Start -->
	<div class="container-fluid pt-5 pb-3">
		<h2
			class="section-title position-relative text-uppercase mx-xl-5 mb-4">
			<span class="bg-secondary pr-3">Recent Products</span>
		</h2>
		<div class="row px-xl-5">
			<c:forEach items="${sessionScope.listN}" var="o">
				<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
					<div class="product-item bg-light mb-4">
						<div class="product-img position-relative overflow-hidden">
							<img class="img-fluid w-100" src="img/product-1.jpg" alt="">
							<div class="product-action">
								<a class="btn btn-outline-dark btn-square" href=""><i
									class="fa fa-shopping-cart"></i></a> <a
									class="btn btn-outline-dark btn-square" href=""><i
									class="far fa-heart"></i></a> <a
									class="btn btn-outline-dark btn-square" href=""><i
									class="fa fa-sync-alt"></i></a> <a
									class="btn btn-outline-dark btn-square" href=""><i
									class="fa fa-search"></i></a>
							</div>
						</div>
						<div class="text-center py-4">
							<a class="h6 text-decoration-none text-truncate" href="">${o.name}</a>
							<div class="d-flex align-items-center justify-content-center mt-2">
								<h5>${o.price}</h5>
								<h6 class="text-muted ml-2">
									<del>$1230.00</del>
								</h6>
							</div>
							<div class="d-flex align-items-center justify-content-center mb-1">
								<small class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small>(99)</small>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- Products End -->


	<!-- Vendor Start -->
	<div class="container-fluid py-5">
		<div class="row px-xl-5">
			<div class="col">
				<div class="owl-carousel vendor-carousel">
					<div class="bg-light p-4">
						<img src="img/vendor-1.jpg" alt="">
					</div>
					<div class="bg-light p-4">
						<img src="img/vendor-2.jpg" alt="">
					</div>
					<div class="bg-light p-4">
						<img src="img/vendor-3.jpg" alt="">
					</div>
					<div class="bg-light p-4">
						<img src="img/vendor-4.jpg" alt="">
					</div>
					<div class="bg-light p-4">
						<img src="img/vendor-5.jpg" alt="">
					</div>
					<div class="bg-light p-4">
						<img src="img/vendor-6.jpg" alt="">
					</div>
					<div class="bg-light p-4">
						<img src="img/vendor-7.jpg" alt="">
					</div>
					<div class="bg-light p-4">
						<img src="img/vendor-8.jpg" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Vendor End -->


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