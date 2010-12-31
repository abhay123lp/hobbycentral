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
<title>BASE Jumping | HobbyCentral.com</title>
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
			<a href="extremesports.jsp">Extreme Sports</a> | BASE Jumping
		</div>
		<div class="post">
			<h2>BASE Jumping</h2>
			<div class="story">
				<p><b>B.A.S.E. jumping</b>, also sometimes written as <b>BASE jumping</b>, is an activity that employs an initially packed 
				parachute to jump from fixed objects (also see paragliding). "B.A.S.E." is an acronym that stands for four categories of 
				fixed objects from which one can jump: buildings, antennas, spans (bridge), and earth (cliff).</p>
				
				<p>BASE jumping is a sport where the user straps on a parachute and jumps off of a fixed object (ie not a airplane). 
				BASE is an acronym from the various different objects from where a user can jump: Building BASE jumping is similar to and 
				related to both Skydiving and Wingsuit flying. I recommend you read up on the terrific articles below and look at the super 
				cool videos. At the bottom there are many books and videos to learn about BASE jumping.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Extreme+Sports&hobby=BASE+Jumping">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for BASE Jumping</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="base jumping" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/base_jumping" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>