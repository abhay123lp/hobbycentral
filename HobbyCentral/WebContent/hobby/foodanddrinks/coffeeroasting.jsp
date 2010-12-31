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
<title>Coffee Roasting | HobbyCentral.com</title>
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
			<a href="foodanddrinks.jsp">Food and Drinks</a> | Coffee Roasting
		</div>
		<div class="post">
			<h2>Coffee Roasting</h2>
			<div class="story">
				<p>Roasting coffee transforms the chemical and physical properties of green coffee beans into roasted coffee products. The 
				roasting process is what produces the characteristic flavor of coffee by causing the green coffee beans to expand and to 
				change in color, taste, smell, and density. Unroasted beans contain similar acids, protein, and caffeine  as those that have 
				been roasted, but lack the taste. It takes heat to speed up the Maillard and other chemical reactions that develop and 
				enhance the flavor.</p>

				<p>As green coffee is more stable than roasted, the roasting process tends to take place close to where it will be consumed. 
				This reduces the time that roasted coffee spends in distribution, helping to maximize its shelf life. The vast majority of 
				coffee is roasted commercially on a large scale, but some coffee drinkers roast coffee themselves in order to have more 
				control over the freshness and flavor profile of the beans.</p>

				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Food+and+Drinks&hobby=Coffee+Roasting">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Coffee Roasting</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="coffee roasting" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
				<iframe id="wiki" src="http://en.wikipedia.org/wiki/Coffee_Roasting" height="600" width="700" 
				frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>