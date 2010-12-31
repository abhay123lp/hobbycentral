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
<title>Wine Making | HobbyCentral.com</title>
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
			<a href="foodanddrinks.jsp">Food and Drinks</a> | Wine Making
		</div>
		<div class="post">
			<h2>Wine Making</h2>
			<div class="story">
				<p>Winemaking, or vinification, is the production of wine, starting with selection of the grapes or other produce and 
				ending with bottling the finished wine. Although most wine is made from grapes, it may also be made from other fruit or 
				non-toxic plant material. Mead is a wine that is made with honey being the primary ingredient after water.</p>

				<p>Winemaking can be divided into two general categories: still wine production (without carbonation) and sparkling wine 
				production (with carbonation).</p>
				
				<p>Learning to make wine is a very fulfilling and deep hobby, especially for the wine tasting enthusiast. The different 
				processes, grapes, and options available in wine making, result in a hobby that you can grow with over the years.</p>

				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Food+and+Drinks&hobby=Wine+Making">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Wine Making</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="wine making" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
				<iframe id="wiki" src="http://en.wikipedia.org/wiki/Wine_Making" height="600" width="700" 
				frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>