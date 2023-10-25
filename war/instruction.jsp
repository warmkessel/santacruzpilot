<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.*"%>
<%@ page import="com.google.appengine.api.users.*"%>
<%@ page import="com.santacruzpilot.constants.*"%>
<%@ page import="com.santacruzpilot.enums.*"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>

<%
UserService userService = UserServiceFactory.getUserService();
User currentUser = userService.getCurrentUser();

String requestUrl = request.getRequestURL().toString();
URL url = new URL(requestUrl);
String[] subDomain = url.getPath().split(Constants.SPLIT);
InstructionEnum first = InstructionEnum.DEFAULT;
String second = "";
if (1 < subDomain.length && 0 < subDomain[1].length()) {
	first = InstructionEnum.findByName(subDomain[1]);
} 
if (2 < subDomain.length && 0 < subDomain[2].length() && !first.equals(InstructionEnum.DEFAULT)) {
	second = subDomain[2];
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
		if(null != currentUser){
			msg.setFrom(new InternetAddress(currentUser.getEmail(), currentUser.getNickname()));
		}
		else{
			msg.setFrom(new InternetAddress("jr@warmkessel.com", "SantaCruz Pilot"));
		}
		msg.addRecipient(Message.RecipientType.TO, new InternetAddress("jr@warmkessel.com", "SantaCruz Pilot"));
		msg.setSubject("SantaCruz Pilot");
		msg.setText("firstname: " + firstname + "\r" + "lastname: " + lastname + "\r" + "phone: " + phone + "email: " + mail + "\r" + message + "\r" + requestUrl);

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
%><!DOCTYPE HTML>
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
<link href="/css/header.css" rel="stylesheet" type="text/css" media="all" />
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
			<h2 class="text-center">
			<%=first.message%><%=second%>
		
			</h2>
			<p class="text-center">
			We are 100% committed to helping you reach
						your of becoming a licensed pilot. We offer a full line of
						instruction both beginner and advanced designed to help you reach
						the stars
			</p>
<p>If you're considering the exciting adventure of learning to fly, it's natural to have a multitude of questions and concerns. To help you embark on this thrilling journey, we've outlined three essential tips that will guide you every step of the way:</p>

<ol>
  <li><strong>Professional Instruction:</strong> Our experienced and certified flight instructors are dedicated to providing you with the highest quality training. They will mentor you through the entire learning process, ensuring you gain the skills and knowledge needed to become a confident pilot.</li>

  <li><strong>Well-maintained Aircraft Fleet:</strong> Safety is our top priority. We maintain a state-of-the-art fleet of aircraft, meticulously cared for by our expert maintenance team. You can trust that you'll be learning to fly in reliable, up-to-date, and airworthy machines.</li>

  <li><strong>Proven Track Record:</strong> We take pride in our long history of successfully training aspiring pilots. Our graduates have gone on to achieve remarkable careers in aviation. You can be confident in our ability to prepare you for a future in the skies.</li>
</ol>

<h3>Get Your Exclusive Free Guide Today!</h3>

<p>Are you captivated by the allure of the skies and the thrill of flying? If you're considering taking the leap into aviation, we have the perfect starting point for you. By reaching out to us, you'll receive an exclusive FREE 8-page guide titled "How to Get Started Learning to Fly." This carefully crafted guide is designed to provide you with foundational insights, expert tips, and a clear roadmap to launch your flying dreams. This offer is more than just a freebie; it's our way of sharing our passion and expertise with you right from the start. Don't miss this opportunity. Contact us now, and let this guide be the first step in your exciting aviation journey!</p>			

<p>Feel free to <a href="tel:4087688654">call us at (408)768-8654</a> to speak directly with our team, or simply click <a href="#contact">here</a> to send us a message. We're here to answer all your questions and help you get started on your thrilling journey towards becoming a pilot.</p>			
		</div>
	</section>
	<!-- contact section -->
	<section class="contact" id="contact">
		<div class="container">
			<div class="col-lg-6 col-md-6 contact-wthree1">
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
				<h3 class="head2">Contact us for more Inforation</h3>
				<form action="<%=Constants.INSTRUCTION %>" method="post" id="qform">
					<div class="row">
						
						<div class="form-group col-lg-6 col-md-6 col-sm-6 slideanim">
							<input type="text" class="form-control first-name"
								name="<%=Constants.FIRSTNAME%>" placeholder="First Name" required />
						</div>
						<div class="form-group col-lg-6 col-md-6 col-sm-6 slideanim">
							<input type="text" class="form-control last-name" name="<%=Constants.LASTNAME%>"
								placeholder="Last Name" required />
						</div>
						<div class="form-group col-lg-6 col-md-6 col-sm-6 slideanim">
							<input type="email" class="form-control mail" name="<%=Constants.MAIL%>"
								placeholder="Your Email" required />
						</div>
						<div class="form-group col-lg-6 col-md-6 col-sm-6 slideanim">
							<input type="tel" class="form-control pno" name="<%=Constants.PHONE%>"
								placeholder="Your Phone Number" required />
						</div>
						<div class="clearfix"></div>
						<div class="form-group col-lg-12 slideanim">
							<textarea class="form-control" rows="6" name="<%=Constants.MESSAGE%>"
								placeholder="Your Message"></textarea>
						</div>
						<div class="form-group col-lg-12 slideanim"><p>Send me my free "Getting Started Guild."</p><input type="checkbox" class="form-control"
								name="" checked />
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
				<p>&copy; <%=Constants.YEAR %> SantaCruzPilot. All rights reserved - <%=Constants.VERSION %></p>
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