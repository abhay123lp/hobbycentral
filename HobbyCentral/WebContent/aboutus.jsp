<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Name: HobbyCentral.com
Author: Vineet Potdar | Niketa Hira
Date: 03-22-2010
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>HobbyCentral.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<jsp:include page="addthis.jsp" />
<div id="header">
	<jsp:include page="logo.jsp" />
	<jsp:include page="menu.jsp" />
</div>

<div id="leftbar">
	<jsp:include page="categorypick.jsp" />
	<jsp:include page="sitesearch.jsp" />
	<!--<jsp:include page="feeds.jsp" />	
	<jsp:include page="/photobucketslideshow.jsp" />-->
</div>

<div id="rightbar">
	<jsp:include page="/twitterWidget.jsp" />	
	<jsp:include page="ads.jsp" />
	<jsp:include page="slideshow.jsp" />
</div>

<div id="content">
	<jsp:include page="galleryImage.jsp" />
	<div id="postsmain">
		<div class="post">
			<h2>Welcome to HobbyCentral.com</h2>
			<div class="story">
				<p>At HobbyCentral.com we believe that there are as many hobbies as there are ideas</p>
				<p>HobbyCentral.com is a one stop shop for all the information you need about hobbies. There is an 
				infinite realm of possibilities in picking a hobby that fancies your interests.</p>
				<p>Hobbies not only give you something to be excited about and be engaged with, they add to the overall
				quality of life. They give you a way to get away. Being engaged in a hobby helps you create, explore 
				and develop your creative side. It may lead you to do something you never thought you could do. Hobbies 
				can be fun, challenging, exhilirating, as well as education. So go ahead, pursue a hobby and see the 
				change it brings to your life</p>
				<p>Browse through our varied <a href="/HobbyCentral/Redirect?url=info">categories</a>, ranging from Arts, Food & Drinks, to Exercise & Sports to find 
				the hobby that most interests you. You will find a plethora of information in any hobby that you choose, 
				including related <a href="photos.jsp">pictures</a> and <a href="videos.jsp">videos</a>.</p>
				<p>That's not all. If you find a hobby you want to pursue, but realize you don't have the necessary 
				equipments and instruments, look no further. HobbyCentral.com will help you find the best products, the 
				most popular products and more.</p>
				<p>Want to learn a particular hobby? We will help you <a href="maps.jsp">find</a> the best teaching institution 
				nearest to your location</p>
				<p>If you are someone who wants to pursue a hobby but don't know where to begin, go and fill out the 
				survey that helps capture your interst. HobbyCentral.com will then suggest a variety of ideas and 
				help you choose something that best suits you.</p>
				<p>If you have a hobby that is unique and you would like to share it with the world, we would love 
				to hear about it and add it to our collection.</p>
				<p>Every hobby can be interesting, if you look deep enough.</p>
			</div>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
