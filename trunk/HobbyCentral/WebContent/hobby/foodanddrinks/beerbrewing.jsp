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
<title>Beer Brewing | HobbyCentral.com</title>
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
			<a href="foodanddrinks.jsp">Food and Drinks</a> | Beer Brewing
		</div>
		<div class="post">
			<h2>Beer Brewing</h2>
			<div class="story">
				<p>Brewing is the production of beer through steeping a starch source (commonly cereal grains) in water and then fermenting 
				with yeast. Brewing has taken place since around the 6th millennium BC, and archeological evidence suggests that this 
				technique was used in ancient Egypt. Descriptions of various beer recipes can be found in Sumerian  writings, some of the 
				oldest known writing of any sort. Brewing takes place in a brewery by a brewer, and the brewing industry is part 
				of most western economies.</p>
			
				<p>Beer Brewing is much easier than most people think. More and more it is becoming popular to have home brewing equipments. 
				With these you can adjust the ingredients and techniques to make the beer to you likings. </p>
				
				<p>Because there are many different types of beers around the world, Beer tasting has become very popular. Below are great 
				resources for learning about beer, its history, and how you can brew your own beer at home.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Food+and+Drinks&hobby=Beer+Brewing">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Beer Brewing</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="beer brewing" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
				<iframe id="wiki" src="http://en.wikipedia.org/wiki/Beer_Brewing" height="600" width="700" 
				frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>