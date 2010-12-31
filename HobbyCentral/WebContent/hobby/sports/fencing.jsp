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
<title>Fencing | HobbyCentral.com</title>
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
			<a href="sports.jsp">Sports</a> | Fencing
		</div>
		<div class="post">
			<h2>Fencing</h2>
			<div class="story">
				<p>Fencing, also called modern fencing to disambiguate it from styles of historical fencing, is a family of combat sports using bladed weapons.</p>

				<p>Fencing is a fun hobby and challenging sport. Although it may seem dangerous, under the proper instruction and taking adequate safety precautions it can be very safe. We recommend you find a club near your area to take classes and learn. As for the the fencing equipment, I recommend you buy only if you are going to take a professional lesson at one of the clubs in your area. Fencing can be dangerous for beginners and proper instruction is required.</p>
				
				<p>Modern fencing originates in the 19th century, as a direct continuation of the 18th century French school of fencing which had in turn been influenced by the Italian school  of the Renaissance.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Sports&hobby=Fencing">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Fencing</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="fencing" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
				<iframe id="wiki" src="http://en.wikipedia.org/wiki/Fencing" height="600" width="700" 
				frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>