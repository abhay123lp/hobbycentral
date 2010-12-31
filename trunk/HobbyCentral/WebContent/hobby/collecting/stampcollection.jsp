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
<title>Stamp Collection | HobbyCentral.com</title>
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
			<a href="collecting.jsp"> Collecting</a> | Stamp Collection
		</div>
		<div class="post">
			<h2>Stamp Collection</h2>
			<div class="story">
				<p>Stamp collecting or Philately as it is also known, is one of the oldest and most respected hobbies. 
				One of the great attributes of stamp collecting is its significance and portrayal of history throughout 
				the world. Many historic stamps tell a story of their creator through the design and image. Prices value 
				wildly from a couple dollars to tens of thousands of dollars, to account for their rarity, condition, and 
				other important factors you will learn about.</p>
				
				<p>As for the current stamp market, there are hundreds of new US and World stamp editions that will take 
				their place in history. Pick the editions which you identify with the most or learn about their availability 
				and value potential for the future. Creating a stamp collection is easy and not very expensive as many new 
				editions cost the same as ordinary stamps.</p>
				
				<p>There are many terrific and free online resources so that you can learn about the history, the different 
				inns and outs of the hobby, useful message boards and online forums where you can talk to other stamp 
				collectors. Also there are several terrific great online stamp buying resources where you can find new and 
				older stamps as well as useful books with stamp values and other information. Hopefully all of these resources 
				with not only get you started but also make you an experienced collector. </p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Collecting&hobby=Stamp+Collection">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Stamp Collecting</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="stamp collecting" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Stamp_collection" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>
