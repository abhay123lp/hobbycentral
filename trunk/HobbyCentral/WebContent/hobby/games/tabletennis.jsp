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
<title>Table Tennis | HobbyCentral.com</title>
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
			<a href="games.jsp">Games</a> | Table Tennis
		</div>
		<div class="post">
			<h2>Table Tennis</h2>
			<div class="story">
				<p>Table Tennis or Ping Pong as it is affectionately called is a fast paced yet surprisingly easy to play game. It has been around for many many years and still seems to be getting more popular every day. Nowadays it is easier to get into because of the falling prices of the high quality ping pong tables available. You can even build your own ping pong table as shown below.</p>

				<p>Table tennis is a sport in which two or four players hit a lightweight, hollow ball back and forth with rackets. The game takes place on a hard table divided by a net. Except for the initial serve, players must allow a ball played toward them only one bounce on their side of the table and must return it so that it bounces on the opposite side. Points are scored when a player fails to return the ball within the rules. Play is fast and demands quick reactions. A skilled player can impart several varieties of spin to the ball, altering its trajectory and limiting an opponent's options to great advantage.</p>

				<p>Table tennis is the most popular racket sport in the world, with over 300 million active members of governing associations worldwide. The game is controlled by the International Table Tennis Federation (ITTF), founded in 1926. Since 1988, table tennis has been an Olympic sport which includes four events. From 1988 until 2004, the events were men's singles, women's singles, men's doubles and women's doubles. Since 2008 the doubles have been replaced by the team events.</p>

				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Games&hobby=Table+Tennis">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Table Tennis</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="table tennis" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
				<iframe id="wiki" src="http://en.wikipedia.org/wiki/Table_Tennis" height="600" width="700" 
				frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>