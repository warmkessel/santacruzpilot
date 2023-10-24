<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.*"%>
<%@ page import="com.google.appengine.api.users.*"%>
<%@ page import="com.santacruzpilot.constants.*"%>
<%@ page import="com.santacruzpilot.enums.*"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
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
<title>Santa Cruz Pilot - Flight Instruction</title>
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
<body id="index.html" data-spy="scroll" data-target=".navbar"
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
						<li class="active"><a href="<%=Constants.INDEX%>">Home</a></li>
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

	<!-- services section -->
	<section class="service" id="service">
		<div class="container">
			<h1>Privacy Policy of Santa Cruz Pilot</h1>
			<p>Date of Last Revision: 10/23/2023</p>
			<p>Thank you for visiting Santa Cruz Pilot. We are committed to
				safeguarding the privacy of our users. This Privacy Policy serves to
				elucidate how we handle the personal information you share with us.
				By accessing and utilizing our website, you signify your consent to
				this Privacy Policy's terms and conditions.</p>
			<h2>Data Collection Practices</h2>
			<p>While you interact with our website, we may gather personal
				data that identifies you. Such information might encompass, but is
				not limited to, your full name, email address, and other relevant
				details that you willingly submit.</p>
			<h2>Purposes of Information Utilization</h2>
			<p>The data we obtain from you plays a pivotal role in enriching
				your user experience. We utilize your information predominantly for
				internal objectives, including but not limited to:
			<ul>
				<li>Enhancing our services and overall website experience.</li>
				<li>Addressing and fulfilling your information inquiries.</li>
				<li>Processing, producing, and dispatching your orders.</li>
				<li>Delivering unwavering customer service and support.</li>
			</ul>
			<h2>Stance on Information Disclosure</h2>
			<p>Your trust is paramount to us. We pledge to maintain the
				confidentiality of your personal information. We will not sell,
				lease, or disseminate your details to external entities unless we
				acquire explicit consent from you or are legally mandated to release
				such information.</p>
			<h2>Empowering Your Data Rights</h2>
			<p>We recognize and uphold your rights over your personal data.
				You are entitled to:
			<ul>
				<li>Access your personal data.</li>
				<li>Amend any inaccuracies in your information.</li>
				<li>Request removal of your personal details.</li>
			</ul>
			To exercise these rights or for any related concerns, kindly reach
			out through the contact means provided further below.
			<h2>Periodic Policy Revisions</h2>
			<p>As we evolve, we may find it necessary to refine our Privacy
				Policy to reflect new practices or regulations. When any
				modifications are introduced, we will promptly update the "last
				revised" date stated at the start of this policy. It's imperative to
				understand that your subsequent use of our website, post any
				amendments, will constitute your acknowledgment and acceptance of
				said changes.</p>
			<h2>Connect with Us</h2>
			<p>
				Should you possess queries or require clarification about this
				Privacy Policy or how we manage user information, we encourage you
				to navigate to our <a href="/index.jsp#contact">Contact Us</a>
				section for further assistance.
			</p>
			<p>&copy; [insert year], Santa Cruz Pilot. All rights preserved.</p>
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

	<script src="/js/main.js"></script>
	<!-- js for statistics -->
	<script type="text/javascript" src="/js/numscroller-1.0.js"></script>
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
</body>
</html>