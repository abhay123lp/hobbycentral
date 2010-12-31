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
<title>Cue Sports | HobbyCentral.com</title>
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
			<a href="games.jsp">Games</a> | Cue Sports
		</div>
		<div class="post">
			<h2>Cue Sports</h2>
			<div class="story">
				<p>Cue sports (sometimes spelled cuesports), also known as billiard sports,[1][2]  are a wide variety of games of skill generally played with a cue stick which is used to strike billiard balls, moving them around a cloth-covered billiards table bounded by rubber cushions.</p>

				<p>Historically, the umbrella term was billiards. While that familiar name is still employed by some as a generic label for all such games, the word's usage has splintered into more exclusive competing meanings in various parts of the world. For example, in British and Australian English, "billiards" usually refers exclusively to the game of English billiards, while in American and Canadian English it is sometimes used to refer to a particular game or class of games, or to all cue games in general, depending upon dialect and context.</p>

				<p>There are three major subdivisions of games within cue sports:
    			<ul>
    				<li>Carom billiards, referring to games played on tables without pockets, including among others balkline and straight rail, cushion caroms, three-cushion billiards and artistic billiards</li>
    				<li>Pool, generally played on a table with six pockets, including among others eight-ball (the world's most widely played cue sport), nine-ball, straight pool, one-pocket and bank pool.</li>
    				<li>Snooker, which while technically a pocket billiards game, is generally classified separately based on its historic divergence from other games, as well as a separate culture and terminology that characterize its play.</li>
				</ul></p>

				<p>Billiards or pool as it is also known is a challenging, competitive, and relaxing game. More and more as good tables become less expensive, many people are buying them to host pool night at their houses. Shooting pool requires skill and technique and is constantly learned throughout ones life. Just like many other skill games these days, it can also be played and practiced online - there are even dedicated online pool rooms where you can play against other people or the computer.</p>

				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Games&hobby=Cue+Sports">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Cue Sports</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="cue sports" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
				<iframe id="wiki" src="http://en.wikipedia.org/wiki/Cue_Sports" height="600" width="700" 
				frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>