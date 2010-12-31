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
<title>Go Karting | HobbyCentral.com</title>
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
			<a href="extremesports.jsp">Extreme Sports</a> | Go Karting
		</div>
		<div class="post">
			<h2>Go Karting</h2>
			<div class="story">
				<p>Kart racing or go-karting is a variant of open-wheel motor sport with small, open, four-wheeled vehicles called karts, 
				go-karts, or gearbox/shifter karts depending on the design. They are usually raced on scaled-down circuits. Karting is 
				commonly perceived as the stepping stone to the higher and more expensive ranks of motorsports.</p>

				<p>Karts vary widely in speed and some (known as Superkarts) can reach speeds exceeding 160 miles per hour (260 km/h), 
				while go-karts intended for the general public in amusement parks may be limited to speeds of no more than 15 miles per 
				hour (24 km/h). A KF1 kart, with a 125 cc 2-stroke engine and an overall weight including the driver of 150 kilograms has 
				a top speed of 85 miles per hour (137 km/h). It takes a little more than 3 seconds to go from 0 to 60 mph with a 125 cc 
				shifter kart (6 gears), with a top speed of 115 miles per hour (185 km/h) on </p>

				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Extreme+Sports&hobby=Go+Karting">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for GO Karting</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="go karting" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Go_Karting" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>