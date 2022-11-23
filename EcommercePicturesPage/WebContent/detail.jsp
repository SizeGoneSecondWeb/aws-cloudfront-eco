<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="Header.jsp" />
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
							<div
								class="dropdown-menu position-absolute rounded-0 border-0 m-0">
								<c:forEach var="c" items="${listCategory}">
									<a href="view_category?id=${c.categoryId}" class="dropdown-item">${c.name}</a>
								</c:forEach>
							</div>
						</div>
						<c:forEach var="c" items="${listCategory}">
							<a href="view_category?id=${c.categoryId}" class="nav-item nav-link">${c.name}</a>
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
						id="navbarCollapse" action="Header.html">
						<div class="navbar-nav mr-auto py-0">
							<a href="home" class="nav-item nav-link" id="home">Home</a> <a
								href="view_category" class="nav-item nav-link" id="shop">Shop</a>
							<a href="#" class="nav-item nav-link active" id="shop_detail">Shop
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
					<a class="breadcrumb-item text-dark" href="home">Home</a> <a
						class="breadcrumb-item text-dark" href="view_category">Shop</a> <span
						class="breadcrumb-item active">Shop Detail</span>
				</nav>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->


	<!-- Shop Detail Start -->
	<div class="container-fluid pb-5">
		<div class="row px-xl-5">
			<div class="col-lg-5 mb-30">
				<div id="product-carousel" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner bg-light">
						<div class="carousel-item active">
							<img class="w-90"
								style="height: 461px; padding: 10px; display: block; 
								margin-left: auto; margin-right: auto;"
								src="data:image/jpg;base64,${picture.base64Image}" alt="Image">
						</div>
						<!-- <div class="carousel-item">
                            <img class="w-100 h-100" src="img/product-2.jpg" alt="Image">
                        </div>
                        <div class="carousel-item">
                            <img class="w-100 h-100" src="img/product-3.jpg" alt="Image">
                        </div>
                        <div class="carousel-item">
                            <img class="w-100 h-100" src="img/product-4.jpg" alt="Image">
                        </div> -->
					</div>
					<a class="carousel-control-prev" href="#product-carousel"
						data-slide="prev"> <i class="fa fa-2x fa-angle-left text-dark"></i>
					</a> <a class="carousel-control-next" href="#product-carousel"
						data-slide="next"> <i
						class="fa fa-2x fa-angle-right text-dark"></i>
					</a>
				</div>
			</div>

			<div class="col-lg-7 h-auto mb-30">
				<div class="h-100 bg-light p-30">
					<h3>${picture.title}</h3>
					<div class="d-flex mb-3">
						<div class="text-primary mr-2">
							<small class="fas fa-star"></small> <small class="fas fa-star"></small>
							<small class="fas fa-star"></small> <small
								class="fas fa-star-half-alt"></small> <small class="far fa-star"></small>
						</div>
						<small class="pt-1">(99 Reviews)</small>
					</div>
					<h3 class="font-weight-semi-bold mb-4">$${picture.price}</h3>
					<!-- <p class="mb-4">Volup erat ipsum diam elitr rebum et dolor. Est
						nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore
						clita lorem magna duo dolor no sea Nonumy</p> -->
					<!-- <div class="d-flex mb-3">
						<strong class="text-dark mr-3">Sizes:</strong>
						<form>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="size-1"
									name="size"> <label class="custom-control-label"
									for="size-1">XS</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="size-2"
									name="size"> <label class="custom-control-label"
									for="size-2">S</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="size-3"
									name="size"> <label class="custom-control-label"
									for="size-3">M</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="size-4"
									name="size"> <label class="custom-control-label"
									for="size-4">L</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="size-5"
									name="size"> <label class="custom-control-label"
									for="size-5">XL</label>
							</div>
						</form>
					</div> -->
					<!-- <div class="d-flex mb-4">
						<strong class="text-dark mr-3">Colors:</strong>
						<form>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="color-1"
									name="color"> <label class="custom-control-label"
									for="color-1">Black</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="color-2"
									name="color"> <label class="custom-control-label"
									for="color-2">White</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="color-3"
									name="color"> <label class="custom-control-label"
									for="color-3">Red</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="color-4"
									name="color"> <label class="custom-control-label"
									for="color-4">Blue</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="color-5"
									name="color"> <label class="custom-control-label"
									for="color-5">Green</label>
							</div>
						</form>
					</div> -->
					<div class="d-flex align-items-center mb-4 pt-2">
						<div class="input-group quantity mr-3" style="width: 130px;">
							<div class="input-group-btn">
								<button class="btn btn-primary btn-minus">
									<i class="fa fa-minus"></i>
								</button>
							</div>
							<input type="text"
								class="form-control bg-secondary border-0 text-center" value="1">
							<div class="input-group-btn">
								<button class="btn btn-primary btn-plus">
									<i class="fa fa-plus"></i>
								</button>
							</div>
						</div>
						<button class="btn btn-primary px-3">
							<i class="fa fa-shopping-cart mr-1"></i> Add To Cart
						</button>
					</div>
					<div class="d-flex pt-2">
						<strong class="text-dark mr-2">Share on:</strong>
						<div class="d-inline-flex">
							<a class="text-dark px-2" href=""> <i
								class="fab fa-facebook-f"></i>
							</a> <a class="text-dark px-2" href=""> <i class="fab fa-twitter"></i>
							</a> <a class="text-dark px-2" href=""> <i
								class="fab fa-linkedin-in"></i>
							</a> <a class="text-dark px-2" href=""> <i
								class="fab fa-pinterest"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row px-xl-5">
			<div class="col">
				<div class="bg-light p-30">
					<div class="nav nav-tabs mb-4">
						<a class="nav-item nav-link text-dark active" data-toggle="tab"
							href="#tab-pane-1">Description</a> <a
							class="nav-item nav-link text-dark" data-toggle="tab"
							href="#tab-pane-2">Information</a> <a
							class="nav-item nav-link text-dark" data-toggle="tab"
							href="#tab-pane-3">Reviews (0)</a>
					</div>
					<div class="tab-content">
						<div class="tab-pane fade show active" id="tab-pane-1">
							<h4 class="mb-3">Product Description</h4>
							<p>${picture.description}</p>
						</div>
						<div class="tab-pane fade" id="tab-pane-2">
							<h4 class="mb-3">Additional Information</h4>
							<p>The product created by ${picture.author}</p>
							<div class="row">
								<div class="col-md-6">
									<ul class="list-group list-group-flush">
										<li class="list-group-item px-0">Sit erat duo lorem duo
											ea consetetur, et eirmod takimata.</li>
										<li class="list-group-item px-0">Amet kasd gubergren sit
											sanctus et lorem eos sadipscing at.</li>
										<li class="list-group-item px-0">Duo amet accusam eirmod
											nonumy stet et et stet eirmod.</li>
										<li class="list-group-item px-0">Takimata ea clita labore
											amet ipsum erat justo voluptua. Nonumy.</li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul class="list-group list-group-flush">
										<li class="list-group-item px-0">Sit erat duo lorem duo
											ea consetetur, et eirmod takimata.</li>
										<li class="list-group-item px-0">Amet kasd gubergren sit
											sanctus et lorem eos sadipscing at.</li>
										<li class="list-group-item px-0">Duo amet accusam eirmod
											nonumy stet et et stet eirmod.</li>
										<li class="list-group-item px-0">Takimata ea clita labore
											amet ipsum erat justo voluptua. Nonumy.</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="tab-pane-3">
							<div class="row">
								<div class="col-md-6">
									<h4 class="mb-4">1 review for "Product Name"</h4>
									<div class="media mb-4">
										<img src="img/user.jpg" alt="Image"
											class="img-fluid mr-3 mt-1" style="width: 45px;">
										<div class="media-body">
											<h6>
												John Doe<small> - <i>01 Jan 2045</i></small>
											</h6>
											<div class="text-primary mb-2">
												<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
													class="fas fa-star"></i> <i class="fas fa-star-half-alt"></i>
												<i class="far fa-star"></i>
											</div>
											<p>Diam amet duo labore stet elitr ea clita ipsum, tempor
												labore accusam ipsum et no at. Kasd diam tempor rebum magna
												dolores sed sed eirmod ipsum.</p>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<h4 class="mb-4">Leave a review</h4>
									<small>Your email address will not be published.
										Required fields are marked *</small>
									<div class="d-flex my-3">
										<p class="mb-0 mr-2">Your Rating * :</p>
										<div class="text-primary">
											<i class="far fa-star"></i> <i class="far fa-star"></i> <i
												class="far fa-star"></i> <i class="far fa-star"></i> <i
												class="far fa-star"></i>
										</div>
									</div>
									<form>
										<div class="form-group">
											<label for="message">Your Review *</label>
											<textarea id="message" cols="30" rows="5"
												class="form-control"></textarea>
										</div>
										<div class="form-group">
											<label for="name">Your Name *</label> <input type="text"
												class="form-control" id="name">
										</div>
										<div class="form-group">
											<label for="email">Your Email *</label> <input type="email"
												class="form-control" id="email">
										</div>
										<div class="form-group mb-0">
											<input type="submit" value="Leave Your Review"
												class="btn btn-primary px-3">
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Shop Detail End -->


	<!-- Products Start -->
	<div class="container-fluid py-5">
		<h2
			class="section-title position-relative text-uppercase mx-xl-5 mb-4">
			<span class="bg-secondary pr-3">You May Also Like</span>
		</h2>
		<div class="row px-xl-5">
			<div class="col">
				<div class="owl-carousel related-carousel">
					<div class="product-item bg-light">
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
							<a class="h6 text-decoration-none text-truncate" href="">Product
								Name Goes Here</a>
							<div
								class="d-flex align-items-center justify-content-center mt-2">
								<h5>$123.00</h5>
								<h6 class="text-muted ml-2">
									<del>$123.00</del>
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
					<div class="product-item bg-light">
						<div class="product-img position-relative overflow-hidden">
							<img class="img-fluid w-100" src="img/product-2.jpg" alt="">
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
							<a class="h6 text-decoration-none text-truncate" href="">Product
								Name Goes Here</a>
							<div
								class="d-flex align-items-center justify-content-center mt-2">
								<h5>$123.00</h5>
								<h6 class="text-muted ml-2">
									<del>$123.00</del>
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
					<div class="product-item bg-light">
						<div class="product-img position-relative overflow-hidden">
							<img class="img-fluid w-100" src="img/product-3.jpg" alt="">
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
							<a class="h6 text-decoration-none text-truncate" href="">Product
								Name Goes Here</a>
							<div
								class="d-flex align-items-center justify-content-center mt-2">
								<h5>$123.00</h5>
								<h6 class="text-muted ml-2">
									<del>$123.00</del>
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
					<div class="product-item bg-light">
						<div class="product-img position-relative overflow-hidden">
							<img class="img-fluid w-100" src="img/product-4.jpg" alt="">
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
							<a class="h6 text-decoration-none text-truncate" href="">Product
								Name Goes Here</a>
							<div
								class="d-flex align-items-center justify-content-center mt-2">
								<h5>$123.00</h5>
								<h6 class="text-muted ml-2">
									<del>$123.00</del>
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
					<div class="product-item bg-light">
						<div class="product-img position-relative overflow-hidden">
							<img class="img-fluid w-100" src="img/product-5.jpg" alt="">
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
							<a class="h6 text-decoration-none text-truncate" href="">Product
								Name Goes Here</a>
							<div
								class="d-flex align-items-center justify-content-center mt-2">
								<h5>$123.00</h5>
								<h6 class="text-muted ml-2">
									<del>$123.00</del>
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
			</div>
		</div>
	</div>
	<!-- Products End -->


	<!-- Footer Start -->
	<jsp:include page="Footer.jsp" />
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