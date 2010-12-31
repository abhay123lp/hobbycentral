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
<title>Harmonica | HobbyCentral.com</title>
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
			<a href="music.jsp">Music </a> | Harmonica
		</div>
		<div class="post">
			<h2>Harmonica</h2>
			<div class="story">
				<p>Playing a harmonica can be a great way to learn to make melodies and play songs you enjoy. It is really easy to learn with the below articles and tutorials.</p>

				<p>The only way to learn is by doing so grab your harmonica or buy the model below. There are many great online resources as well as books and music cds for learning.</p>
				
				<p>One of Led Zeppelins best songs "When the Levee Breaks" has a Harmonica and sounds amazing, you should definately listen to it. Jimmy Page's guitar backward echo technique, where he would put the echo ahead of the sound, was used on the harmonica for this song.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Music&hobby=Harmonica">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Harmonica</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="harmonica" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
				<iframe id="wiki" src="http://en.wikipedia.org/wiki/Harmonica" height="600" width="700" 
				frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>