<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Portfolio Website</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.11/typed.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
	
	
</head>
<body>
	<!-- Content goes here -->
	<div class="scroll-up-btn">
		<i class="fas fa-angle-up"></i>
	</div>
	<nav class="navbar">
		<div class="max-width">
			<div class="logo">
				<a href="#">My<span>Portfolio.</span></a>
			</div>
			<ul class="menu">
				<li><a href="#home" class="menu-btn">Home</a></li>
				<li><a href="#about" class="menu-btn">About Me</a></li>
				<!-- <li><a href="#course.jsp" class="menu-btn">Our Courses</a></li> -->
				 <li><a href="course.jsp" class="menu-btn">Our Courses</a></li>
				<li><a href="#services" class="menu-btn">My Projects</a></li>
				<li><a href="#skills" class="menu-btn">Skills</a></li>
				<li><a href="#teams" class="menu-btn">My Teams</a></li>
				<li><a href="#contact" class="menu-btn">Contact</a></li>
				<li><a href="https://topmate.io/amarjeet_kumar_singh79/"
					class="menu-btn">Our Services</a></li>

			</ul>
			<div class="menu-btn">
				<i class="fas fa-bars"></i>
			</div>
		</div>
	</nav>

	<!-- home section start -->
	<section class="home" id="home">
		<div class="max-width">
			<div class="home-content">
				<div class="text-1">Hello, my name is</div>
				<div class="text-2">Amarjeet Kumar Singh</div>
				<div class="text-3">
					And I'm a <span class="typing"></span>
				</div>
				<a
					href="https://www.linkedin.com/in/amarjeet-kumar-singh-956b46171/">Visit
					on My Linkedin Profile To Hire Me</a>
			</div>
		</div>
	</section>

	<!-- about section start -->
	<section class="about" id="about">
		<div class="max-width">
			<h2 class="title">About me</h2>
			<div class="about-content">
				<div class="column left">
					<img src="images/amarjeet.png" alt="">
				</div>
				<div class="column right">
					<div class="text">
						I'm Amarjeet Kumar Singh and I'm a <span class="typing-2"></span>
					</div>
					<p>I am a IT Working professional, Full stack Java Developer
						with 3+ years of strong Hands-on Experience with Technologies
						Java, JDK8, Spring, SpringBoot, Microservice, Webservice, Apache
						Kafka, GraphQL, MongoDB and MySql database along with having
						strong Hands-on of Postman, GIT, JIRA, Maven, Putty, WinScp,
						FileZilla, JUnit, Mockito, PowerMockito, Log4j. I have complete my
						B.Tech from IES College of Technology Bhopal. and now I am Working
						at Perfexion Information Technologies Pvt Ltd as a Software
						Engineer. Currenty I am living in (Whitefield)Bangalore. That's
						all About Me Thank you !</p>
					<a
						href="https://www.linkedin.com/in/amarjeet-kumar-singh-956b46171/detail/overlay-view/urn:li:fsd_profileTreasuryMedia:(ACoAACjtBdIBg9aXuABDoZjv2ISqH3TY-GBJVlA,1635452513464)/">Download
						My Resume</a>
				</div>
			</div>
		</div>
	</section>

	<!-- services section start -->
	<section class="services" id="services">
		<div class="max-width">
			<h2 class="title">My Projects</h2>

			<div class="serv-content">
				<div class="card">
					<div class="box">
						<!-- <i class="fas fa-code"></i> -->
						<i class="fas fa-address-book"></i>
						<div class="text">NoteBook Web Application</div>
						<p>I have create NoteBook web app using Html, CSS, Bootstrap,
							JavaScript, Hibernate, Servlet, JSP and MySql.</p>
					</div>
				</div>



				<div class="card">
					<div class="box">
						<!-- <i class="fas fa-code"></i> -->
						<i class="fas fa-address-book"></i>
						<div class="text">Contact Management Application</div>
						<p>I have create Contact Management Application web app using
							Html, CSS, Bootstrap, JavaScript, SpringBoot, Spring DataJPA and
							MySql.</p>
					</div>
				</div>

				<div class="card">
					<div class="box">
						<!-- <i class="fas fa-code"></i> -->
						<!-- <i class="fas fa-address-book"></i> -->
						<i class="fas fa-shield-alt"></i>
						<div class="text">Insurance Web Application</div>
						<p>I have create Insurance Web Application app using
							SpringBoot, Webservice, Spring DataJPA, Bootstrap, JavaScript,
							and MySql. for one of my freelance client which is located in
							saudi arebia.</p>
					</div>
				</div>
				<div class="card">
					<div class="box">
						<!-- <i class="fas fa-code"></i> -->
						<!-- <i class="fas fa-address-book"></i> -->
						<i class='fas fa-hospital'></i>
						<div class="text">Heathcare management</div>
						<p>I have create Heathcare management app using SpringBoot,
							Webservice, Spring DataJPA, Bootstrap, JavaScript, and MySql. for
							one of my freelance client which is located in USA.</p>
					</div>
				</div>



				<div class="card">
					<div class="box">
						<!-- <i class="fas fa-code"></i> -->
						<i class="fas fa-microphone"></i>
						<div class="text">AI Virtual Assistant</div>
						<p>I had created AI Virtual Assistant Stand Alone application
							using Python and Tkinter(GUI). In the duration of my College
							day's</p>
					</div>
				</div>

				<div class="card">
					<div class="box">
						<i class="fas fa-code"></i>
						<div class="text">Library Management Software</div>
						<p>I had created Library management software using Core
							java,Swing(GUI) and MySql. In the duration of my College day's.</p>
					</div>
				</div>
			</div>
		</div>

	</section>

	<!-- skills section start -->
	<section class="skills" id="skills">
		<div class="max-width">
			<h2 class="title">My skills</h2>
			<div class="skills-content">
				<div class="column left">
					<div class="text">My Technical skills.</div>
					<p>I have Completed B.Tech in Computer Science and Engineering
						from IES College of Technology Bhopal. and now I am Working at
						Perfexion Information Technologies Pvt. Ltd. as Software Engineer.
						I Live in Bihar. I Know Programming Language Like Core Java, JDK8,
						Spring, SpringBoot, Hibernate, SQL. That's all About Me Thank you
						and if you have any need of software solution and training then
						contact with me. we will help you.Its really greatful for me to
						work with you as a team member, thats all. Thankyou !</p>

					<a
						href="https://www.linkedin.com/in/amarjeet-kumar-singh-956b46171/">Visit
						LinkedIn To Read more my services.</a>
				</div>
				<div class="column right">
					<div class="bars">
						<div class="info">
							<span>Java</span> <span>80%</span>
						</div>
						<div class="line mysql"></div>
					</div>
					<div class="bars">
						<div class="info">
							<span>SpringBoot</span> <span>80%</span>
						</div>
						<div class="line mysql"></div>
					</div>
					<div class="bars">
						<div class="info">
							<span>Microservice</span> <span>80%</span>
						</div>
						<div class="line mysql"></div>
					</div>



					<div class="bars">
						<div class="info">
							<span>Spring DataJPA</span> <span>80%</span>
						</div>
						<div class="line mysql"></div>
					</div>

					<div class="bars">
						<div class="info">
							<span>SQL</span> <span>85%</span>
						</div>
						<div class="line mysql"></div>
					</div>
				</div>

			</div>
		</div>
	</section>

	<!-- teams section start -->
	<section class="teams" id="teams">
		<div class="max-width">
			<h2 class="title">My Teams</h2>
			<div class="carousel owl-carousel">
				<div class="card">
					<div class="box">
						<img src="images/deepak.png" alt="">
						<div class="text">Deepak Lodhi</div>
						<p>Full Stack Developer</p>
						<a href="https://www.linkedin.com/in/deepak-lodhi-707364204/">Click
							To Visit On LinkedIn Profile</a>
					</div>
				</div>
				<div class="card">
					<div class="box">
						<img src="images/nav1.png" alt="">
						<div class="text">Navnit Kumar Pandey</div>
						<p>Associate Software Engineer @Mphasis</p>
						<a
							href="https://www.linkedin.com/in/navnit-kumar-pandey-b8739616a/">Click
							To Visit On LinkedIn Profile</a>
					</div>
				</div>
				<div class="card">
					<div class="box">
						<img src="images/mishra4.png" alt="">
						<div class="text">Shubhendu Mishra</div>
						<p>Associate Software Engineer @Virtusa</p>
						<a href="https://www.linkedin.com/in/shubhendu-mishra-b2098918b/">Click
							To Visit On LinkedIn Profile</a>
					</div>
				</div>
				<div class="card">
					<div class="box">
						<img src="images/sanjeet5.png" alt="">
						<div class="text">Sanjeet Kumar</div>
						<p>Associate Software Engineer @AimDek</p>
						<a href="https://www.linkedin.com/in/sanjeet-kumar-50521217a/">Click
							To Visit On LinkedIn Profile</a>
					</div>
				</div>
				<div class="card">
					<div class="box">
						<img src="images/depesh2.png" alt="">
						<div class="text">Depesh Tiwari</div>
						<p>Mobile App Developer</p>
						<a href="#">Click To Visit On LinkedIn Profile</a>
					</div>
				</div>
				<div class="card">
					<div class="box">
						<img src="images/shiv3.png" alt="">
						<div class="text">Shiv Kumar</div>
						<p>Associate Software Engineer @HCL</p>
						<a href="https://www.linkedin.com/in/shiv-kumar-4b9255195/">Click
							To Visit On LinkedIn Profile</a>
					</div>
				</div>
				<div class="card">
					<div class="box">
						<img src="images/madh.png" alt="">
						<div class="text">Suraj Madheshiya</div>
						<p>Associate Software Engineer @TCS</p>
						<a href="https://www.linkedin.com/in/suraj-madheshiya-a710a91a6/">Click
							To Visit On LinkedIn Profile</a>
					</div>
				</div>
				<div class="card">
					<div class="box">
						<img src="images/lalit.png" alt="">
						<div class="text">Lalit Kumar</div>
						<p>Fresher Java Learner</p>
						<a href="https://www.linkedin.com/in/lalit-kumar-b94980198/">Click
							To Visit On LinkedIn Profile</a>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- contact section start -->
	<section class="contact" id="contact">
		<div class="max-width">
			<h2 class="title">Contact me</h2>
			<div class="contact-content">
				<div class="column left">
					<div class="text">Get in Touch</div>
					<p>If you have any question or you need any software solution
						then you can contact with me.</p>
					<div class="icons">
						<div class="row">
							<i class="fas fa-user"></i>
							<div class="info">
								<div class="head">Name</div>
								<div class="sub-title">Amarjeet Kumar Singh</div>
							</div>
						</div>
						<div class="row">
							<i class="fas fa-map-marker-alt"></i>
							<div class="info">
								<div class="head">Address</div>
								<div class="sub-title">Whitefield(Bangalore), Karnatka</div>
							</div>
						</div>
						<div class="row">
							<i class="fas fa-envelope"></i>
							<div class="info">
								<div class="head">Email</div>
								<div class="sub-title">amarjeetcs79@gmail.com</div>
							</div>
						</div>
						<div class="row">
							<i class="fas fa-phone"></i>
							<!-- <i class="fa-solid fa-phone"></i> -->
							<!-- <i class="fa-brands fa-whatsapp"></i> -->
							<div class="info">
								<div class="head">Contact</div>
								<div class="sub-title">6261535069</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="column right">
					<div class="text">Message me</div>
					<form id="contactForm" action="submitContactForm1" method="post">
						<div class="fields">
							<div class="field name">
								<input type="text" name="name" placeholder="Write Your Name"
									required>
							</div>
							<div class="field email">
								<input type="email" name="email" placeholder="Write Your Email"
									required>
							</div>
						</div>
						<div class="field">
							<input type="text" name="subject"
								placeholder="Write Your Subject" required>
						</div>
						<div class="field textarea">
							<textarea name="message" cols="30" rows="10"
								placeholder="Write Your Message.." required></textarea>
						</div>
						<div class="button">
							<button type="submit">Send message</button>
						</div>
					</form>
					<%
					String successMessage = (String) request.getAttribute("successMessage");
					String errorMessage = (String) request.getAttribute("errorMessage");

					if (successMessage != null && !successMessage.isEmpty()) {
						out.println("<p style='color:green;'>" + successMessage + "</p>");
					}

					if (errorMessage != null && !errorMessage.isEmpty()) {
						out.println("<p style='color:red;'>" + errorMessage + "</p>");
					}
					%>
					
				</div>
			</div>
		</div>
	</section>
	<footer>
		<span>Developed By <a href="#">Amarjeet Kumar Singh</a> | <span
			class="far fa-copyright"></span> 2019 All rights reserved.
		</span>
	</footer>
	<script src="script.js" defer></script>
</body>
</html>
