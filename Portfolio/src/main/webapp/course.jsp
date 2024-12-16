<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Course Navigation</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

/* Main navigation styles */
nav {
	background-color: #007bff;
	padding: 10px;
	text-align: center;
}

nav a {
	color: white;
	text-decoration: none;
	padding: 15px 20px;
	display: inline-block;
}

nav a:hover {
	background-color: #0056b3;
}

/* Course sections */
section {
	padding: 50px;
	margin: 20px 0;
}

h2 {
	color: #007bff;
}

.courses-list {
	list-style: none;
	padding: 0;
	display: grid;
	grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
	gap: 20px;
}

.course-card {
	background-color: #f9f9f9;
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 8px;
	text-align: center;
}

.course-card h3 {
	color: #007bff;
	margin-bottom: 15px;
}

.course-card p {
	color: #555;
	margin-bottom: 20px;
}

.course-card .price {
	font-weight: bold;
	font-size: 1.2em;
	color: #28a745;
	margin-bottom: 20px;
}

.course-card button {
	background-color: #28a745;
	color: white;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
	font-size: 1em;
}

.course-card button:hover {
	background-color: #218838;
}
</style>
</head>
<body>

	<nav>
		<a href="#java">Java</a> <a href="#python">Python</a> <a
			href="#devops">DevOps</a> <a href="#sql">SQL</a> <a
			href="#fullstack-java">Full Stack Java</a> <a
			href="#fullstack-python">Full Stack Python</a> <a
			href="#web-development">Web Development</a>
	</nav>

	<!-- Java Courses Section -->
	<section id="java">
		<h2>Java Courses</h2>
		<div class="courses-list">
			<div class="course-card">
				<h3>Java Basics</h3>
				<p>Learn the basics of Java programming, including syntax, data
					types, and control flow.</p>
				<div class="price">$50</div>
				<button onclick="redirectToPurchase('java-basics')">Buy Now</button>
			</div>
			<div class="course-card">
				<h3>Java Basics</h3>
				<p>Learn the basics of Java programming, including syntax, data
					types, and control flow.</p>
				<div class="price">$50</div>
				<button onclick="redirectToPurchase('java-basics')">Buy Now</button>
			</div>
			<div class="course-card">
				<h3>Java Basics</h3>
				<p>Learn the basics of Java programming, including syntax, data
					types, and control flow.</p>
				<div class="price">$50</div>
				<button onclick="redirectToPurchase('java-basics')">Buy Now</button>
			</div>
			<div class="course-card">
				<h3>Java Basics</h3>
				<p>Learn the basics of Java programming, including syntax, data
					types, and control flow.</p>
				<div class="price">$50</div>
				<button onclick="redirectToPurchase('java-basics')">Buy Now</button>
			</div>
			<div class="course-card">
				<h3>Java Basics</h3>
				<p>Learn the basics of Java programming, including syntax, data
					types, and control flow.</p>
				<div class="price">$50</div>
				<button onclick="redirectToPurchase('java-basics')">Buy Now</button>
			</div>
			<div class="course-card">
				<h3>Java Basics</h3>
				<p>Learn the basics of Java programming, including syntax, data
					types, and control flow.</p>
				<div class="price">$50</div>
				<button onclick="redirectToPurchase('java-basics')">Buy Now</button>
			</div>
			<div class="course-card">
				<h3>Java Basics</h3>
				<p>Learn the basics of Java programming, including syntax, data
					types, and control flow.</p>
				<div class="price">$50</div>
				<button onclick="redirectToPurchase('java-basics')">Buy Now</button>
			</div>
			<div class="course-card">
				<h3>Java Basics</h3>
				<p>Learn the basics of Java programming, including syntax, data
					types, and control flow.</p>
				<div class="price">$50</div>
				<button onclick="redirectToPurchase('java-basics')">Buy Now</button>
			</div>
			<div class="course-card">
				<h3>Advanced Java</h3>
				<p>Explore advanced concepts in Java, including multi-threading,
					data structures, and algorithms.</p>
				<div class="price">$80</div>
				<button onclick="redirectToPurchase('advanced-java')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Java for Web Development</h3>
				<p>Learn how to develop web applications using Java, Spring, and
					Hibernate.</p>
				<div class="price">$100</div>
				<button onclick="redirectToPurchase('java-web-dev')">Buy
					Now</button>
			</div>
		</div>
	</section>

	<!-- Python Courses Section -->
	<section id="python">
		<h2>Python Courses</h2>
		<div class="courses-list ">
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>

			<div class="course-card">
				<h3>Data Science with Python</h3>
				<p>Learn data analysis, machine learning, and visualization with
					Python.</p>
				<div class="price">$120</div>
				<button onclick="redirectToPurchase('data-science-python')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Web Development</h3>
				<p>Build powerful web applications using Flask and Django
					frameworks.</p>
				<div class="price">$90</div>
				<button onclick="redirectToPurchase('python-web-dev')">Buy
					Now</button>
			</div>
		</div>


	</section>
	<!-- Python Courses Section -->
	<section id="python">
		<h2>Python Courses</h2>
		<div class="courses-list ">
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>

			<div class="course-card">
				<h3>Data Science with Python</h3>
				<p>Learn data analysis, machine learning, and visualization with
					Python.</p>
				<div class="price">$120</div>
				<button onclick="redirectToPurchase('data-science-python')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Web Development</h3>
				<p>Build powerful web applications using Flask and Django
					frameworks.</p>
				<div class="price">$90</div>
				<button onclick="redirectToPurchase('python-web-dev')">Buy
					Now</button>
			</div>
		</div>


	</section>
	<!-- Python Courses Section -->
	<section id="python">
		<h2>Python Courses</h2>
		<div class="courses-list ">
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>

			<div class="course-card">
				<h3>Data Science with Python</h3>
				<p>Learn data analysis, machine learning, and visualization with
					Python.</p>
				<div class="price">$120</div>
				<button onclick="redirectToPurchase('data-science-python')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Web Development</h3>
				<p>Build powerful web applications using Flask and Django
					frameworks.</p>
				<div class="price">$90</div>
				<button onclick="redirectToPurchase('python-web-dev')">Buy
					Now</button>
			</div>
		</div>


	</section>
	<!-- Python Courses Section -->
	<section id="python">
		<h2>Python Courses</h2>
		<div class="courses-list ">
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Beginners</h3>
				<p>Start your Python journey with this introductory course
					covering basic concepts.</p>
				<div class="price">$45</div>
				<button onclick="redirectToPurchase('python-beginners')">Buy
					Now</button>
			</div>

			<div class="course-card">
				<h3>Data Science with Python</h3>
				<p>Learn data analysis, machine learning, and visualization with
					Python.</p>
				<div class="price">$120</div>
				<button onclick="redirectToPurchase('data-science-python')">Buy
					Now</button>
			</div>
			<div class="course-card">
				<h3>Python for Web Development</h3>
				<p>Build powerful web applications using Flask and Django
					frameworks.</p>
				<div class="price">$90</div>
				<button onclick="redirectToPurchase('python-web-dev')">Buy
					Now</button>
			</div>
		</div>


	</section>
	<!-- Add more course sections similarly -->

	<script>
		// Dynamic redirection function for course purchase
		function redirectToPurchase(courseId) {
			// Replace with actual URL for the respective course's purchase page
			const purchaseUrl = `https://example.com/purchase/${courseId}`;
			window.location.href = purchaseUrl;
		}
	</script>

</body>
</html>
