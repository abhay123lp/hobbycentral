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
<title>Gardening | HobbyCentral.com</title>
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
			<a href="thearts.jsp"> The Arts</a> | Gardening
		</div>
		<div class="post">
			<h2>Gardening</h2>
			<div class="story">
				<p>Gardening is the practice of growing plants. Ornamental plants are normally grown for their flowers, 
				foliage, overall appearance, or for their dyes. Useful plants are grown for consumption (vegetables, fruits, 
				herbs, and leaf vegetables) or for medicinal use. A gardener is someone who practices gardening.</p>

				<p>Gardening ranges in scale from fruit orchards, to long boulevard plantings with one or more different 
				types of shrubs, trees and herbaceous plants, to residential yards including lawns and foundation plantings, 
				to large or small containers grown inside or outside. Gardening may be very specialized, with only one type 
				of plant grown, or involve a large number of different plants in mixed plantings. It involves an active 
				participation in the growing of plants, and tends to be labor intensive, which differentiates it from farming 
				or forestry.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Gardening</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="gardening" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Gardening" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
				
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
