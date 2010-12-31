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
<title>Records (Vinyl) Collection | HobbyCentral.com</title>
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
			<a href="collecting.jsp"> Collecting</a> | Records (Vinyl) Collection
		</div>
		<div class="post">
			<h2>Records (Vinyl) Collection</h2>
			<div class="story">
				<p>Record collecting is my latest obsession as I am a huge music fan. Although records declined in popularity 
				in the 90's thanks to cds and Mp3s, music on vinyl is coming back stronger than ever. People are recognizing 
				that MP3's have terrible sound quality and listening to music on records can be a terrific experience. Not 
				only that but collectable records are going up in price as they become more in demand by collectors. The 
				Nirvana record on the right was the first 7 inch record release of the band ever, this Love Buzz single can 
				fetch prices of $ 2500+ on ebay. </p>
				
				<p>Most of the music from the 50's to the early 90's can be found on records and for a couple of bucks. Jazz, 
				Blues, Rock, Classical.. are some of the genres which are most popular on vinyl and sound amazing. There is 
				nothing like listening to Miles Davis or Led Zeppelin on vinyl! So read up below on the vinyl basics and get 
				started!!</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Collecting&hobby=Record+Collection">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Records Collecting</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="records collecting" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Record_collecting" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>
