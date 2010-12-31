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
<title>Guitar | HobbyCentral.com</title>
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
			<a href="music.jsp">Music </a> | Guitar
		</div>
		<div class="post">
			<h2>Guitar</h2>
			<div class="story">
				<p>Learning to play the guitar is fast, easy, cheap, and really fun. At the minimum all you need is a starter acoustic guitar 
				and some time to learn to read tabs and learn songs. Tabs or tablature are the musical sheets which tell you exactly where to 
				put your finger and therefore what notes to play. Learning to read tabs may seem complicated but is actually pretty easy. 
				Online you can find free guitar tabs for almost any guitar song you can think of, from Nirvana to the Strokes.</p>
				
				<p>If you like the electric guitar sound and the added flexibility available with amps and different distortions, learning 
				to play the electric guitar is basically the same. The main difference is the added equipment necessary, but with some great 
				online deals available that include amps and headphones, getting started is just as easy as with acoustic guitars.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Music&hobby=Guitar">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Guitars</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="guitars" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Guitar" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>