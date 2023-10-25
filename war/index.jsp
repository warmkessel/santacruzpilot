<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.*"%>
<%@ page import="com.google.appengine.api.users.*"%>
<%@ page import="com.santacruzpilot.constants.*"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>

<%
UserService userService = UserServiceFactory.getUserService();
User currentUser = userService.getCurrentUser();

String requestUrl = request.getRequestURL().toString();
URL url = new URL(requestUrl);
String subDomain = url.getHost().split(Constants.SPLIT)[0];
if (0 == subDomain.length() || Constants.WWW.equals(subDomain) || Constants.LOCALHOST.equals(subDomain)) {

} else {
}

//Get the subject and body parameters from the request
String subject = request.getParameter(Constants.SUBJECT);
String message = request.getParameter(Constants.MESSAGE);
String firstname = request.getParameter(Constants.FIRSTNAME);
String lastname = request.getParameter(Constants.LASTNAME);
String phone = request.getParameter(Constants.PHONE);
String mail = request.getParameter(Constants.MAIL);

String emailResp = null;
if (message != null) {
	Properties props = new Properties();
	Session mailSession = Session.getDefaultInstance(props, null);

	try {
		// Create a new email message
		Message msg = new MimeMessage(mailSession);
		if (null != currentUser) {
	msg.setFrom(new InternetAddress(currentUser.getEmail(), currentUser.getNickname()));
		} else {
	msg.setFrom(new InternetAddress("jr@warmkessel.com", "SantaCruz Pilot"));
		}
		msg.addRecipient(Message.RecipientType.TO, new InternetAddress("jr@warmkessel.com", "SantaCruz Pilot"));
		msg.setSubject("SantaCruz Pilot");
		msg.setText("firstname: " + firstname + "\r" + "lastname: " + lastname + "\r" + "phone: " + phone + "email: "
		+ mail + "\r" + message + "\r" + requestUrl);

		// Send the email
		Transport.send(msg);

		emailResp = "We got it!";
	} catch (AddressException e) {
		//out.println("Error: " + e.getMessage());
		emailResp = "Error: " + e.getMessage();

	} catch (MessagingException e) {
		emailResp = "Error: " + e.getMessage();
	}
}
%>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
<!-- Google tag (gtag.js) -->
<script async="true"
	src="https://www.googletagmanager.com/gtag/js?id=G-6CN4NKP3TR"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'G-6CN4NKP3TR');
</script>
<title>Santa Cruz Pilot</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Flight Trainin Flying Flyin pilot CFI CFII aircraft rental high performance twin burial at sea air plane management" />
<meta name="Description"
	content="We are 100% committed to helping you reach your of becoming a licensed pilot.  We offer a full line of instruction both beginner and advanced designed to help you reach the stars.">
<!-- font files -->
<!-- /font files -->
<!-- css files -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="/css/team.css" rel="stylesheet" type="text/css" media="all" />
<link href="/css/header.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- /css files -->
<!-- js files -->
<script src="/js/modernizr.js"></script>
<!-- js files -->
</head>
<body id="<%=Constants.INDEX%>" data-spy="scroll" data-target=".navbar"
	data-offset="60">
	<!-- top bar -->
	<div class="top-bar">
		<div class="container">
			<ul class="top-contacts">
				<li class="top-unhover"><p>
						<span class="fa fa-phone-square" aria-hidden="true"></span> (408)
						768-8654
					</p>
				<li class="top-hover"><p>
						<span class="fa fa-envelope" aria-hidden="true"></span> <a
							href="mailto:info@santacruzpilot.com">info@santacruzpilot.com</a>
					</p>
			</ul>
			<ul class="top-links">
				<li><a href="https://www.facebook.com/Santacruzpilot"
					aria-label="Facebook"><i class="fa fa-facebook"></i></a></li>
				<li><a href="https://twitter.com/Santacruzpilot"
					aria-label="Twitter"><i class="fa fa-twitter"></i></a></li>
				<!-- li><a href="#"><i class="fa fa-linkedin"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus"></i></a></li-->
			</ul>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- /top bar -->
	<!-- navigation -->
	<div class="nav-links">
		<nav class="navbar navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<h1>Santa Cruz Pilot</h1>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav link-effect">
						<li class="active"><a href="index.html">Home</a></li>
						<li><a href="#service">Services</a></li>
						<li><a href="#team">Team</a></li>
						<li><a href="#fleet">Fleet</a></li>
						<!-- <li><a href="#stats">Statistics</a></li>	 -->
						<li><a href="#contact">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<!-- /navigation -->
	<!-- banner section -->
	<section class="banner">
		<div class="container">
			<div class="slider">
				<ul class="slider-main">
					<li class="slider-panel"><img alt="W3layouts"
						title="W3layouts" src="/images/banner1.webp"
						class="img-responsive">
						<div class="banner-info">
							<div class="row">
								<div class="col-lg-12">
									<h3>Custom Flight Instruction</h3>
									<a href="#" data-toggle="modal" data-target="#largeModal">Read
										More</a>
								</div>
							</div>
						</div></li>
					<li class="slider-panel"><img alt="W3layouts"
						title="W3layouts" src="/images/banner2.webp"
						class="img-responsive">
						<div class="banner-info">
							<div class="row">
								<div class="col-lg-12">
									<h3>Aerial Photography</h3>
									<a href="#" data-toggle="modal" data-target="#largeModal2">Read
										More</a>
								</div>
							</div>
						</div></li>
					<li class="slider-panel"><img alt="W3layouts"
						title="W3layouts" src="/images/banner3.webp"
						class="img-responsive">
						<div class="banner-info">
							<div class="row">
								<div class="col-lg-12">
									<h3>Executive Airplane Management</h3>
									<a href="#" data-toggle="modal" data-target="#largeModal3">Read
										More</a>
								</div>
							</div>
						</div></li>
					<li class="slider-panel"><img alt="W3layouts"
						title="W3layouts" src="/images/banner5.webp"
						class="img-responsive">
						<div class="banner-info">
							<div class="row">
								<div class="col-lg-12">
									<h3>Burial at Sea</h3>
									<a href="#" data-toggle="modal" data-target="#largeModal4">Read
										More</a>
								</div>
							</div>
						</div></li>

				</ul>
				<div class="slider-extra">
					<ul class="slider-nav">
						<li class="slider-item"><p class="sl">1</p></li>
						<li class="slider-item"><p class="sl">2</p></li>
						<li class="slider-item"><p class="sl">3</p></li>
						<li class="slider-item"><p class="sl">4</p></li>
					</ul>
					<div class="slider-page">
						<a class="slider-pre" href="javascript:;;">&lt;</a> <a
							class="slider-next" href="javascript:;;">&gt;</a>
					</div>
				</div>
				<div class="modal fade" id="largeModal" tabindex="-1" role="dialog"
					aria-labelledby="largeModal" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">About Us</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-lg-6 col-md-6">
										<img src="/images/banner1.webp" class="img-responsive"
											alt="w3layouts" title="w3layouts" width="300">
									</div>
									<div class="col-lg-6 col-md-6">
										<p class="banner-p1">We are 100% committed to helping you
											reach your of becoming a licensed pilot. We offer a full line
											of instruction both beginner and advanced designed to help
											you reach the stars.</p>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-lg btn-success"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
				<div class="modal fade" id="largeModal2" tabindex="-1" role="dialog"
					aria-labelledby="largeModal" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">Aerial
									Photography</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-lg-6 col-md-6">
										<img src="/images/banner2.webp" class="img-responsive"
											alt="w3layouts" title="w3layouts" width="300">
									</div>
									<div class="col-lg-6 col-md-6">
										<p class="banner-p1">The Santa Cruz and Monterey Bay is
											well known for is beautiful Cost. Do you have a Photograph of
											you business or event from the Air. We can help.</p>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-lg btn-success"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
				<div class="modal fade" id="largeModal3" tabindex="-1" role="dialog"
					aria-labelledby="largeModal" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">Executive
									Airplane Management</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-lg-6 col-md-6">
										<img src="/images/banner3.webp" class="img-responsive"
											alt="w3layouts" title="w3layouts" width="300">
									</div>
									<div class="col-lg-6 col-md-6">
										<p class="banner-p1">Let us help you manage your aircraft.
											Our experienced staff can help you with the day to day
											maintenance issue, and we will be there in times of need.</p>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-lg btn-success"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
				<div class="modal fade" id="largeModal4" tabindex="-1" role="dialog"
					aria-labelledby="largeModal" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">Burial at Sea</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-lg-6 col-md-6">
										<img src="/images/banner5.webp" class="img-responsive"
											alt="w3layouts" title="w3layouts" width="300">
									</div>
									<div class="col-lg-6 col-md-6">
										<p class="banner-p1">Let us help you with the final
											resting place of your loved ones. We offer a full services
											Burial at Sea. Give your loved ones the final send off that
											they deserve. The Monterey Bay is the ultimate resting place.</p>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-lg btn-success"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /banner section -->
	<!-- services section -->
	<section class="service" id="service">
		<div class="container">
			<h2 class="text-center">Our services</h2>
			<p class="text-center">
				Santa Cruz Pilot offers service and support where you need them.<br>We
				services all the airports in the Santa Cruz and Bay area
			</p>
			<div class="row">
				<div class="col-lg-4 col-md-4 serv-w3ls">
					<i class="fa fa-plane" aria-hidden="true"></i>
					<h4>Flight Training</h4>
					<p class="serv-p">We are 100% committed to helping you reach
						your of becoming a licensed pilot. We offer a full line of
						instruction both beginner and advanced designed to help you reach
						the stars.</p>
					<span class="line1"></span>
				</div>
				<div class="col-lg-4 col-md-4 serv-w3ls">
					<i class="fa fa-suitcase" aria-hidden="true"></i>
					<h4>Executive Aircraft Management</h4>
					<p class="serv-p">Let us help you manage your aircraft. Our
						experienced staff can help you with the day to day maintenance
						issue, and we will be there in times of need.</p>
					<span class="line1"></span>
				</div>
				<div class="col-lg-4 col-md-4 serv-w3ls">
					<i class="fa fa-globe" aria-hidden="true"></i>
					<h4>Aerial Photography</h4>
					<p class="serv-p">The Santa Cruz, Monterey and Bay Area is well
						known for is iconic city and beautiful cost line Do you have a
						Photograph of you business or event from the Air. We can help.</p>
				</div>
			</div>
		</div>
	</section>

	<!-- team section -->
	<section class="team" id="team">
		<div class="container">
			<h3 class="text-center">Our Team</h3>
			<p class="text-center">Santa Cruz Pilot is a team of dedicated
				professionals.</p>
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6 team-w3ls">
					<div class="view view-third">
						<img src="/images/team-img1.webp" alt="w3layouts"
							title="w3layouts" class="img-responsive" width="400" height="400">
						<div class="mask">
							<h4>James Warmkessel</h4>
							<ul class="social-icons2">
								<li><a href="https://www.facebook.com/Santacruzpilot/"
									aria-label="Facebook"><i class="fa fa-facebook"></i></a></li>
								<li><a href="https://twitter.com/Santacruzpilot"
									aria-label="Twitter"><i class="fa fa-twitter"></i></a></li>
							</ul>
							<p class="info">Founder</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /team section -->
	<!-- #fleet section -->
	<section class="fleet" id="fleet">
		<div class="container">
			<h3 class="text-center">Our Fleet</h3>
			<p class="text-center">We have the finest fleet in the industry.</p>
			<div id="myTabContent" class="tab-content">
				<div role="tabpanel" class="" id="home" aria-labelledby="home-tab">
					<div class="row">
						<div class="col-md-4 col-sm-6 col-xs-6 portfolio-grids">
							<img src="/images/n7181a.webp" class="img-responsive"
								alt="Photo of N7181A" width="323" height="242" />
							<div class="b-wrapper">
								<i class="fa fa-search-plus" aria-hidden="true"></i>
								<h5>Cessna 172</h5>
								<p>The Cessna 172, a classic pilot trainer, is ideal for
									basic instruction and aerial photography missions.</p>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 col-xs-6 portfolio-grids">
							<img src="/images/n93tb.webp" class="img-responsive"
								alt="Photo of N93TB" width="323" height="242" />
							<div class="b-wrapper">
								<i class="fa fa-search-plus" aria-hidden="true"></i>
								<h5>Socata TB-20</h5>
								<p>The Socata TB-20 is a high-performance and complex
									platform for advanced endorsements and licenses.</p>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 col-xs-6 portfolio-grids">
							<img src="/images/n6995x.webp" class="img-responsive"
								alt="Photo of N6995X" width="323" height="242" />
							<div class="b-wrapper">
								<i class="fa fa-search-plus" aria-hidden="true"></i>
								<h5>Cessna 172</h5>
								<p>The Cessna 172 is renowned for pilot training and aerial
									photography missions.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- statistics section -->
	<section class="stats" id="stats">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-3 stats-grid stats-grid-1">
					<div class="numscroller" data-slno='1' data-min='0' data-max='64'
						data-delay='3' data-increment="1">64</div>
					<i class="fa fa-money" aria-hidden="true"></i>
					<h4>First Flights</h4>
				</div>
				<div class="col-md-3 col-sm-3 stats-grid stats-grid-2">
					<div class="numscroller" data-slno='1' data-min='0' data-max='95'
						data-delay='3' data-increment="1">95</div>
					<i class="fa fa-trophy" aria-hidden="true"></i>
					<h4>Solos</h4>
				</div>
				<div class="col-md-3 col-sm-3 stats-grid stats-grid-3">
					<div class="numscroller" data-slno='1' data-min='0' data-max='80'
						data-delay='3' data-increment="1">80</div>
					<i class="fa fa-users" aria-hidden="true"></i>
					<h4>New Members</h4>
				</div>
				<div class="col-md-3 col-sm-3 stats-grid stats-grid-4">
					<div class="numscroller" data-slno='1' data-min='0' data-max='43'
						data-delay='3' data-increment="1">43</div>
					<i class="fa fa-star" aria-hidden="true"></i>
					<h4>Ratings</h4>
				</div>
			</div>
		</div>
	</section>
	<!-- /statistics section -->
	<!-- contact section -->
	<section class="contact" id="contact">
		<div class="container">
			<div class="col-lg-6 col-md-6 contact-wthree1">
				<%
				if (null != emailResp) {
				%>
				<h1 class="section-title mb-5 text-center" id="reponse"><%=emailResp%></h1>

				<%
				}
				%>
				<h3 class="head1">Contact Info</h3>
				<div class="contact-w3ls">
					<div class="row">
						<div class="col-xs-4 contact-agile1">
							<i class="fa fa-map-marker" aria-hidden="true"></i>
						</div>
						<div class="col-xs-8 contact-agile2">
							<div class="address">
								<h4>Visit Us</h4>
								<p>100 Aviation Way Watsonville CA 95076</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-4 contact-agile1">
							<i class="fa fa-envelope-o" aria-hidden="true"></i>
						</div>
						<div class="col-xs-8 contact-agile2">
							<div class="address">
								<h4>Mail Us</h4>
								<p>
									<a href="mailto:info@santacruzpilot.com">info@santacruzpilot.com</a>
								</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-4 contact-agile1">
							<i class="fa fa-mobile" aria-hidden="true"></i>
						</div>
						<div class="col-xs-8 contact-agile2">
							<div class="address">
								<h4>Call Us</h4>
								<p>(408) 768-8654</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-4 contact-agile1">
							<i class="fa fa-clock-o" aria-hidden="true"></i>
						</div>
						<div class="col-xs-8 contact-agile2">
							<div class="address">
								<h4>Our Working Hours</h4>
								<p>Monday - Friday : 09 AM - 05 PM</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 contact-wthree2">
				<h3 class="head2">Your Comments</h3>
				<form action="<%=Constants.INDEX%>" method="post" id="qform">
					<div class="row">
						<div class="form-group col-lg-6 col-md-6 col-sm-6 slideanim">
							<input type="text" class="form-control first-name"
								name="<%=Constants.FIRSTNAME%>" placeholder="First Name"
								required />
						</div>
						<div class="form-group col-lg-6 col-md-6 col-sm-6 slideanim">
							<input type="text" class="form-control last-name"
								name="<%=Constants.LASTNAME%>" placeholder="Last Name" required />
						</div>
						<div class="form-group col-lg-6 col-md-6 col-sm-6 slideanim">
							<input type="email" class="form-control mail"
								name="<%=Constants.MAIL%>" placeholder="Your Email" required />
						</div>
						<div class="form-group col-lg-6 col-md-6 col-sm-6 slideanim">
							<input type="tel" class="form-control pno"
								name="<%=Constants.PHONE%>" placeholder="Your Phone Number"
								required />
						</div>
						<div class="clearfix"></div>
						<div class="form-group col-lg-12 slideanim">
							<textarea class="form-control" rows="6"
								name="<%=Constants.MESSAGE%>" placeholder="Your Message"></textarea>
						</div>
						<div class="form-group col-lg-12 slideanim">
							<button class="g-recaptcha btn btn-lg btn-outline" data-sitekey="6LcPLsgoAAAAALzcUhAA6NfIx0D-ZzUDjF4CfRbV"
								data-callback='onSubmit' data-action='submit'>Submit</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-- /contact section -->
	<!-- map section -->
	<div class="map">
		<iframe class="googlemaps"
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3189.166481563476!2d-121.79021348444668!3d36.934188779921186!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808e1a678aab812f%3A0x92e5e6ce4d14cbc8!2s100+Aviation+Way%2C+Watsonville%2C+CA+95076%2C+USA!5e0!3m2!1sen!2sde!4v1545501204509"
			style="border: 0" title="Santa Cruz Pilot Location"></iframe>
	</div>
	<!-- /map section -->
	<!-- footer section -->
	<div class="footer">
		<div class="container">
			<div class="col-lg-6 col-md-6 footer-w3ls1">
				<p>
					&copy;
					<%=Constants.YEAR%>
					SantaCruzPilot. All rights reserved -
					<%=Constants.VERSION%></p>
			</div>
			<div class="col-lg-6 col-md-6 footer-w3ls2">
				<ul class="bottom-links">
					<li><a href="https://www.facebook.com/Santacruzpilot"
						aria-label="Facebook"><i class="fa fa-facebook"></i></a></li>
					<li><a href="https://twitter.com/Santacruzpilot"
						aria-label="Twitter"><i class="fa fa-twitter"></i></a></li>
					<!-- <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"></i></a></li> -->
				</ul>
			</div>
		</div>
	</div>
	<!-- /footer section -->
	<a href="#0" class="cd-top" aria-label="Top">Top</a>
	<!-- js files -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
	<script src="js/main.js"></script>
	<!-- js for statistics -->
	<script type="text/javascript" src="js/numscroller-1.0.js"></script>
	<!-- /js for statistics -->
	<!-- js for portfolio -->
	<!-- /js for portfolio -->
	<!-- js for search button -->
	<script src="/js/index.js"></script>
	<!-- /js for search button -->
	<!-- js for banner -->
	<script src="/js/zslider-1.0.1.js"></script>
	<script type="text/javascript">
		var slider = $('.slider').zslider({
			imagePanels : $('.slider-panel'),
			ctrlItems : $('.slider-item'),
			ctrlItemHoverCls : 'slider-item-selected',
			//panelHoverShowFlipBtn: false,
			flipBtn : {
				container : $('.slider-page'),
				preBtn : $('.slider-pre'),
				nextBtn : $('.slider-next')
			},
			callbacks : {
				animate : function(imagePanels, ctrlItems, fromIndex, toIndex) {
					return true;
				}
			}
		});
	</script>
	<!-- /js for banner -->
	<!-- /js files -->
		<!-- js recaptcha -->
	<script src="https://www.google.com/recaptcha/api.js"></script>
	<script>
		function onSubmit(token) {
			document.getElementById("qform").submit();
		}
	</script>
	<!-- /js recaptcha -->

</body>
</html>