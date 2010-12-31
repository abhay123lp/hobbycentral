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
<title>Auto Racing | HobbyCentral.com</title>
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
			<a href="extremesports.jsp">Extreme Sports</a> | Auto Racing
		</div>
		<div class="post">
			<h2>Auto Racing</h2>
			<div class="story">
				<p>Although many people believe that Auto Racing is a very expensive hobby because of the expensive cars and track cost, 
				they are wrong. Because of the large number of driving schools and tracks around the country, a couple hundred bucks already 
				gets you professional instruction and on track driving experience in speed cars. There are many types of racing that you can 
				learn, from Nascar type driving to Formula 1 or even Off road racing. Below are many great articles and books with great tips
				 and lessons on how to get started in the sport.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Extreme+Sports&hobby=Auto+Racing">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Auto Racing</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="auto racing" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Auto_Racing" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>