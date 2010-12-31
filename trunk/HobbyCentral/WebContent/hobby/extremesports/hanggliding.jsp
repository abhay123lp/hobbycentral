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
<title>Hang Gliding | HobbyCentral.com</title>
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
			<a href="extremesports.jsp">Extreme Sports</a> | Hang Gliding
		</div>
		<div class="post">
			<h2>Hang Gliding</h2>
			<div class="story">
				<p>Hang Gliding is one of the simplest and most natural forms of human flight.  Hang Gliders are aluminum and nylon wings 
				which are launched by foot off of high objects like cliffs. Pilots are suspended off the glider and control the glider by 
				shifting weight from side to side. As they glide much like a bird, you utilize air currents and other techniques to stay 
				elevated, many times for over 3 hours! It is a truly exhilarating experience because of the height, speed, and beautiful 
				views. </p>

				<p>If the proper precautions and judgment is taken it can be a very safe sport, on the other hand without good instruction 
				and judgment it can be very dangerous. Be sure to take the adequate precautions such as a guided and professional tour as 
				well as helmet and other safety devices.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Extreme+Sports&hobby=Hang+Gliding">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Hang Gliding</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="hang gliding" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Hang_gliding" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>