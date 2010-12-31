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
<title>Model Cars Collection | HobbyCentral.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/HobbyCentral/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<jsp:include page="/addthis.jsp" />
<div id="header">
	<jsp:include page="/logo.jsp" />
	<jsp:include page="/menu.jsp" />
</div>

<div id="leftbar">
	<jsp:include page="/categorypick.jsp" />
	<jsp:include page="/sitesearch.jsp" />
	<jsp:include page="/feeds.jsp" />	
</div>

<div id="rightbar">
	<jsp:include page="/ads.jsp" />
	<jsp:include page="/slideshow.jsp" />
</div>

<div id="content">
	<div id="postsmain">
		<div class="post">
			<a href="/HobbyCentral/info.jsp">Info Center</a> | 
			<a href="collecting.jsp"> Collecting</a> | Model Cars Collection
		</div>
		<div class="post">
			<h2>Model Cars Collection</h2>
			<div class="story">
				<p>Collecting model cars is a great way for automobile fans to collect and own versions of their favorite cars. 
				Collecting vehicle models are split into two different segments, the die cast model cars and the model vehicle 
				kits.</p>
				
				<p>Die cast cars are very high quality and accurate and are typically made at a 1:10, 1:12, 1:18, 1:24, and 
				1:43 scale to the original. They are usually 10 to 12 inches in length so they easily fit in your bookshelf 
				or display case. Current Limited Edition releases and older vintage models can also be great investments as 
				they appreciate in value.</p>
				
				<p>Getting started is very easy, below are some useful articles and tips for learning about the hobby, there 
				are also some very useful online forums / message boards for asking questions and discussing the hobby. Once 
				you learn the basics you can go to the online stores to find some terrific deals and very informative books.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Collecting&hobby=Model+Cars+Collection">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Model Cars Collecting</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="model cars collecting" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Model_car" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>
