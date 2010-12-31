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
<title>Sports Collectibles | HobbyCentral.com</title>
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
			<a href="collecting.jsp"> Collecting</a> | Sports Collectibles
		</div>
		<div class="post">
			<h2>Sports Collectibles</h2>
			<div class="story">
				<p>Collecting Sports Memorabilia begins many times as a fans quest to get an autograph or ball from your 
				favorite player. For many sports fan this can develop into a more serious collection with many great pieces 
				that can not only appreciate over time and have great financial value but also have great sentimental value. 
				Being present before and after the games finish to wait for your favorite player can be a terrific way to get 
				a picture and signature. The other is to attend sports trade shows held where players stay for several hours 
				signing balls, jerseys, and pictures you bring.</p>
				
				<p>If you collect for financial appreciation there are some key factors you must understand to assure the 
				value of your piece. Taking a picture as the player signs the item is always important, making sure the pen 
				/ marker is strong / visible is also key. To ensure authenticity to your eventual client, it can be crucial 
				to have the items signature authenticated by a well known company.</p>
				
				<p>Below you can find some online articles for learning some more detailed information on sport collecting, 
				a online forum / message forum for asking questions and discussing important topics. There are also terrific 
				online stores to purchase authentic items, and some useful books with collecting information</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Collecting&hobby=Sports+Collectibles+Collection">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Sports Collectibles Collecting</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="sports collectibles" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Sports_memorabilia" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
				
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>
