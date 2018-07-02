<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" charset="utf-8">
<title>Starhotel</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Stylesheets & script library -->
<c:import url="import.jsp" />

<!-- Google analytics -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/script/google-analytics.js"></script>

</head>

<body>

	<!-- Top header -->
	<c:import url="topHeader.jsp" />

	<!-- Sign up form-->
	<c:import url="signupTag.jsp" />

	<!-- Header -->
	<header>
		<!-- Navigation -->
		<c:import url="header.jsp" />

	</header>

	<!-- Revolution Slider -->
	<section class="revolution-slider">
		<div class="bannercontainer">
			<div class="banner">
				<ul>
					<!-- Slide 1 -->
					<li data-transition="fade" data-slotamount="7"
						data-masterspeed="1500">
						<!-- Main Image --> <img
						src="${pageContext.request.contextPath }/resources/images/slides/slide-bg.jpg"
						style="opacity: 0;" alt="slidebg1" data-bgfit="cover"
						data-bgposition="left bottom" data-bgrepeat="no-repeat"> <!-- Layers -->
						<!-- Layer 1 -->
						<div class="caption sft revolution-starhotel bigtext" data-x="505"
							data-y="30" data-speed="700" data-start="1700"
							data-easing="easeOutBack">
							<span><i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
								<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i></span> A Five Star Hotel <span><i
								class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i></span>
						</div> <!-- Layer 2 -->
						<div class="caption sft revolution-starhotel smalltext"
							data-x="605" data-y="105" data-speed="800" data-start="1700"
							data-easing="easeOutBack">
							<span>And we like to keep it that way!</span>
						</div> <!-- Layer 3 -->
						<div class="caption sft" data-x="775" data-y="175"
							data-speed="1000" data-start="1900" data-easing="easeOutBack">
							<a href="${pageContext.request.contextPath }/apartment-list.html"
								class="button btn btn-purple btn-lg">See rooms</a>
						</div>
					</li>
					<!-- Slide 2 -->
					<li data-transition="boxfade" data-slotamount="7"
						data-masterspeed="1000">
						<!-- Main Image --> <img
						src="${pageContext.request.contextPath }/resources/images/slides/slide-bg-02.jpg"
						alt="darkblurbg" data-bgfit="cover" data-bgposition="left top"
						data-bgrepeat="no-repeat"> <!-- Layers --> <!-- Layer 1 -->
						<div class="caption sft revolution-starhotel bigtext" data-x="585"
							data-y="30" data-speed="700" data-start="1700"
							data-easing="easeOutBack">
							<span><i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
								<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i></span> Double room <span><i
								class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i></span>
						</div> <!-- Layer 2 -->
						<div class="caption sft revolution-starhotel smalltext"
							data-x="682" data-y="105" data-speed="800" data-start="1700"
							data-easing="easeOutBack">
							<span>€ 99,- a night this summer</span>
						</div> <!-- Layer 3 -->
						<div class="caption sft" data-x="785" data-y="175"
							data-speed="1000" data-start="1900" data-easing="easeOutBack">
							<a
								href="${pageContext.request.contextPath }/apartment-detail.html"
								class="button btn btn-purple btn-lg">Book this room</a>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</section>

	<!-- Reservation form -->
	<section id="reservation-form">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form class="form-inline reservation-horizontal clearfix"
						role="form" method="post" action="${pageContext.request.contextPath }/search-apartment.html"
						name="reservationform" id="searchApartment">
						<!-- Error message -->
						<div id="message"></div>
						<div class="row">
							<div class="col-sm-2">
								<!-- <div class="form-group">
									<label for="email" accesskey="E">E-mail</label> <input
										name="email" type="text" id="email" value=""
										class="form-control" placeholder="Please enter your E-mail" />
								</div> -->
								<div class="form-group">
									<label for='cityId'>Cities</label> 
									<select class='form-control' name='cityId' id='cityId'>
										<option value="0">-- All Cities --</option>
										<c:forEach var="city" items="${listCity }">
											<option value="${city.id }">${city.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="col-sm-3"> 
								<label for='buildingId'>Buildings</label> 
									<select class='form-control' name='buildingId' id='buildingId'>
										<option value="0">-- All Buildings --</option>
										<c:forEach var="building" items="${listBuilding }">
											<option value="${building.id }">${building.name }</option>
										</c:forEach>
									</select>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<label for="apartmentTypeId">Apartment Type</label>
									<div class="popover-icon" data-container="body"
										data-toggle="popover" data-trigger="hover"
										data-placement="right"
										data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
										<i class="fa fa-info-circle fa-lg"> </i>
									</div>
									<select class="form-control" name="apartmentTypeId" id="apartmentTypeId">
										<option value="0">-- All Apartment Types --</option>
										<c:forEach var="apartmentType" items="${listApartmentType }">
											<option value="${apartmentType.id }">${apartmentType.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="col-sm-2">
								<div class="form-group">
									<label for="checkin">Check-in Date</label>
									<div class="popover-icon" data-container="body"
										data-toggle="popover" data-trigger="hover"
										data-placement="right" data-content="Check-In is from 11:00">
										<i class="fa fa-info-circle fa-lg"> </i>
									</div>
									<i class="fa fa-calendar infield"></i> <input name="checkIn"
										type="text" id="checkIn" value="" class="form-control"
										placeholder="Check-in" required />
								</div>
							</div>
							<div class="col-sm-1">
								<div class="form-group">
									<div class="guests-select">
										<label>Guests</label> <i class="fa fa-user infield"></i>
										<input class="total form-control" id="test" name="numGuest" value="1" style="cursor: pointer;" />
										<div class="guests">
											<div class="form-group adults">
												<label for="adults">Adults</label>
												<div class="popover-icon" data-container="body"
													data-toggle="popover" data-trigger="hover"
													data-placement="right" data-content="+18 years">
													<i class="fa fa-info-circle fa-lg"> </i>
												</div>
												<select id="adults" class="form-control">
													<option value="1">1 adult</option>
													<option value="2">2 adults</option>
													<option value="3">3 adults</option>
												</select>
											</div>
											<div class="form-group children">
												<label for="children">Children</label>
												<div class="popover-icon" data-container="body"
													data-toggle="popover" data-trigger="hover"
													data-placement="right" data-content="0 till 18 years">
													<i class="fa fa-info-circle fa-lg"> </i>
												</div>
												<select id="children" class="form-control">
													<option value="0">0 children</option>
													<option value="1">1 child</option>
													<option value="2">2 children</option>
													<option value="3">3 children</option>
												</select>
											</div>
											<button type="button"
												class="btn btn-default button-save btn-block">Save</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-1">
								<span>&nbsp;</span>
								<button type="submit" class="btn btn-primary btn-block" style='margin-top:5px'>Search</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- Rooms -->
	<section class="rooms mt50">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h2 class="lined-heading">
						<span>Guests Favorite Apartment</span>
					</h2>
				</div>
				<!-- Room -->
				<c:forEach var="apartment" items="${listApartment }" begin="0" end="2">
					<div class="col-sm-4 ${apartment.apartmentType.code }">
						<div class="room-thumb">
							<img
								src="${pageContext.request.contextPath }/resources/${apartment.image[0].imagePath }"
								alt="room 1" class="img-responsive" />
							<div class="mask">
								<div class="main">
									<h5>${apartment.apartmentType.name }</h5>
									<div class="price">
										&euro; ${apartment.apartmentType.price }<span>Monthly</span>
									</div>
								</div>
								<div class="content">
									<p>
										<span>${apartment.name }</span> <span style="min-height: 56px">${apartment.description }
										</span>
									</p>
									<ul class="row list-unstyled" style="min-height: 56px">
										<c:forEach var="criteria"
											items="${apartment.apartmentType.criterias }" begin="0"
											end="5">
											<li class="col-xs-6"><i class="fa fa-check-circle"></i>
												${criteria.name }</li>
										</c:forEach>
									</ul>
									<a
										href="${pageContext.request.contextPath }/Apartment-Type/${apartment.apartmentType.name }-${apartment.apartmentType.id }/Apartment/${apartment.name }-${apartment.id }/apartment-detail.html"
										class="btn btn-primary btn-block">Book Now</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>

	<!-- USP's -->
	<section class="usp mt100">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h2 class="lined-heading">
						<span>USP section</span>
					</h2>
				</div>
				<div class="col-sm-3 bounceIn appear" data-start="0">
					<div class="box-icon">	
						<div class="circle">
							<i class="fa fa-glass fa-lg"></i>
						</div>
						<h3>Beverages included</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Suspendisse interdum eleifend augue, quis rhoncus purus
							fermentum.</p>
						<a href="${pageContext.request.contextPath }/index.html#">Read
							more<i class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
				<div class="col-sm-3 bounceIn appear" data-start="400">
					<div class="box-icon">
						<div class="circle">
							<i class="fa fa-credit-card fa-lg"></i>
						</div>
						<h3>Stay First, Pay After!</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Suspendisse interdum eleifend augue, quis rhoncus purus
							fermentum.</p>
						<a href="${pageContext.request.contextPath }/index.html#">Read
							more<i class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
				<div class="col-sm-3 bounceIn appear" data-start="800">
					<div class="box-icon">
						<div class="circle">
							<i class="fa fa-cutlery fa-lg"></i>
						</div>
						<h3>24 Hour Restaurant</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Suspendisse interdum eleifend augue, quis rhoncus purus
							fermentum.</p>
						<a href="${pageContext.request.contextPath }/index.html#">Read
							more<i class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
				<div class="col-sm-3 bounceIn appear" data-start="1200">
					<div class="box-icon">
						<div class="circle">
							<i class="fa fa-tint fa-lg"></i>
						</div>
						<h3>Spa Included!</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Suspendisse interdum eleifend augue, quis rhoncus purus
							fermentum.</p>
						<a href="${pageContext.request.contextPath }/index.html#">Read
							more<i class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Parallax Effect -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#parallax-image').parallax("50%", -0.35);
		});
	</script>

	<section class="parallax-effect mt100">
		<div id="parallax-image"
			style="background-image: url(${pageContext.request.contextPath }/resources/images/parallax/parallax-01.jpg);">
			<div class="color-overlay fadeIn appear" data-start="2000">
				<div class="container">
					<div class="content">
						<h3 class="text-center">
							<i class="fa fa fa-star-o"></i> STARHOTEL
						</h3>
						<p class="text-center">
							 <br> <a
								href="${pageContext.request.contextPath }/news.html"
								class="btn btn-default btn-lg mt30 ml50">View our news</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Gallery -->
	<section class="gallery-slider mt100">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 class="lined-heading">
						<span>Gallery</span>
					</h2>
				</div>
			</div>
		</div>
		<div id="owl-gallery" class="owl-carousel">
			<div class="item">
				<a
					href="${pageContext.request.contextPath }/resources/images/gallery/1.jpg"
					data-rel="prettyPhoto[gallery1]"><img
					src="${pageContext.request.contextPath }/resources/images/gallery/1.jpg"
					alt="Image 1"><i class="fa fa-search"></i></a>
			</div>
			<div class="item">
				<a
					href="${pageContext.request.contextPath }/resources/images/gallery/2.jpg"
					data-rel="prettyPhoto[gallery1]"><img
					src="${pageContext.request.contextPath }/resources/images/gallery/2.jpg"
					alt="Image 2"><i class="fa fa-search"></i></a>
			</div>
			<div class="item">
				<a
					href="${pageContext.request.contextPath }/resources/images/gallery/3.jpg"
					data-rel="prettyPhoto[gallery1]"><img
					src="${pageContext.request.contextPath }/resources/images/gallery/3.jpg"
					alt="Image 3"><i class="fa fa-search"></i></a>
			</div>
			<div class="item">
				<a
					href="${pageContext.request.contextPath }/resources/images/gallery/4.jpg"
					data-rel="prettyPhoto[gallery1]"><img
					src="${pageContext.request.contextPath }/resources/images/gallery/4.jpg"
					alt="Image 4"><i class="fa fa-search"></i></a>
			</div>
		</div>
	</section>

	<div class="container">
		<div class="row">
			<!-- Testimonials -->
			<section class="testimonials mt100">
				<div class="col-md-6">
					<h2 class="lined-heading bounceInLeft appear" data-start="0">
						<span>What Other Visitors Experienced</span>
					</h2>
					<div id="owl-reviews" class="owl-carousel">
						<div class="item">
							<div class="row">
								<div class="col-lg-3 col-md-4 col-sm-2 col-xs-12">
									<img
										src="${pageContext.request.contextPath }/resources/images/reviews/review-01.jpg"
										alt="Review 1" class="img-circle" />
								</div>
								<div class="col-lg-9 col-md-8 col-sm-10 col-xs-12">
									<div class="text-balloon">
										Searched the internet and i found, booked and visited this
										hotel that i like to call utopia... <span>Kim Jones,
											Single Room</span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-3 col-md-4 col-sm-2 col-xs-12">
									<img
										src="${pageContext.request.contextPath }/resources/images/reviews/review-02.jpg"
										alt="Review 2" class="img-circle" />
								</div>
								<div class="col-lg-9 col-md-8 col-sm-10 col-xs-12">
									<div class="text-balloon">
										I give it a 5 out of 5! Great hotel, friendly staff, clean,
										relaxing... Yep i'm coming back! ;-) <span>Sandra
											Donnathan, Double Room</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="row">
								<div class="col-lg-3 col-md-4 col-sm-2 col-xs-12">
									<img
										src="${pageContext.request.contextPath }/resources/images/reviews/review-03.jpg"
										alt="Review 3" class="img-circle" />
								</div>
								<div class="col-lg-9 col-md-8 col-sm-10 col-xs-12">
									<div class="text-balloon">
										Such a nice place... Next time i will book a 3 weeks stay at
										this place. <span>Rosanne O'Donald, Single Room</span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-3 col-md-4 col-sm-2 col-xs-12">
									<img
										src="${pageContext.request.contextPath }/resources/images/reviews/review-04.jpg"
										alt="Review 4" class="img-circle" />
								</div>
								<div class="col-lg-9 col-md-8 col-sm-10 col-xs-12">
									<div class="text-balloon">
										By far the best hotel in the city! Location is nice and the
										service is great! <span>Carl Adams, Single Room</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- About -->
			<section class="about mt100">
				<div class="col-md-6">
					<h2 class="lined-heading bounceInRight appear" data-start="800">
						<span>Hotel Tabs</span>
					</h2>
					<!-- Nav tabs -->
					<ul class="nav nav-tabs">
						<li class="active"><a
							href="${pageContext.request.contextPath }/index.html#hotel"
							data-toggle="tab">Our hotels</a></li>
						<li><a
							href="${pageContext.request.contextPath }/index.html#events"
							data-toggle="tab">Events</a></li>
						<li><a
							href="${pageContext.request.contextPath }/index.html#kids"
							data-toggle="tab">Kids</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content">
						<div class="tab-pane fade in active" id="hotel">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Suspendisse interdum eleifend augue, quis rhoncus purus
								fermentum. In hendrerit risus arcu, in eleifend metus dapibus
								varius. Nulla dolor sapien, laoreet vel tincidunt non, egestas
								non justo. Phasellus et mattis lectus, et gravida urna.</p>
							<p>
								<img
									src="${pageContext.request.contextPath }/resources/images/tab/restaurant-01.jpg"
									alt="food" class="pull-right"> Donec pretium sem non
								tincidunt iaculis. Nunc at pharetra eros, a varius leo. Mauris
								id hendrerit justo. Mauris egestas magna vitae nisi ultricies
								semper. Nam vitae suscipit magna. Nam et felis nulla. Ut nec
								magna tortor. Nulla dolor sapien, laoreet vel tincidunt non,
								egestas non justo.
							</p>
						</div>
						<div class="tab-pane fade" id="events">Phasellus sodales
							justo felis, a vestibulum risus mattis vitae. Aliquam vitae
							varius elit, non facilisis massa. Vestibulum luctus diam mollis
							gravida bibendum. Aliquam mattis velit dolor, sit amet semper
							erat auctor vel. Integer auctor in dui ac vehicula. Integer
							fermentum nunc ut arcu feugiat, nec placerat nunc tincidunt.
							Pellentesque in massa eu augue placerat cursus sed quis magna.</div>
						<div class="tab-pane fade" id="kids">Aa vestibulum risus
							mattis vitae. Aliquam vitae varius elit, non facilisis massa.
							Vestibulum luctus diam mollis gravida bibendum. Aliquam mattis
							velit dolor, sit amet semper erat auctor vel. Integer auctor in
							dui ac vehicula. Integer fermentum nunc ut arcu feugiat, nec
							placerat nunc tincidunt. Pellentesque in massa eu augue placerat
							cursus sed quis magna.</div>
					</div>
				</div>
			</section>
		</div>
	</div>

	<!-- Call To Action -->
	<section id="call-to-action" class="mt100">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-sm-8 col-xs-12"></div>
				<div class="col-md-4 col-sm-4 col-xs-12"></div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<c:import url="footer.jsp" />

	<!-- Go-top Button -->
	<div id="go-top">
		<i class="fa fa-angle-up fa-2x"></i>
	</div>

	<div id="datepicker" data-date="2015" data-date-format="mm/dd/yyyy"></div>

	<script type="text/javascript">
		$(document).ready(function(e) {
			$('#checkIn').datepicker();

			$('#checkOut').datepicker();
		})
	</script>
</body>
</html>