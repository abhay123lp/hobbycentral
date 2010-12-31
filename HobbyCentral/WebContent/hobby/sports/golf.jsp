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
<title>Golf | HobbyCentral.com</title>
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
			<a href="sports.jsp">Sports</a> | Golf
		</div>
		<div class="post">
			<h2>Golf</h2>
			<div class="story">
				<p>Golf is a precision club-and-ball sport, in which competing players (golfers), using many types of clubs, attempt to hit balls  into each hole on a golf course while employing the fewest number of strokes. Golf is one of the few ball games that does not require a standardized playing area. Instead, the game is played on golf "courses", each of which features a unique design, although courses typically consist of either nine or 18 holes. Golf is defined, in the rules of golf, as "playing a ball with a club from the teeing ground into the hole by a stroke or successive strokes in accordance with the Rules." Golf competition is generally played for the lowest number of strokes by an individual, known simply as stroke play, or the lowest score on the most individual holes during a complete round by an individual or team, known as match play.</p>

				<p>Golf is a great game to start playing today. Not only is it fun and easy to start, but also a great way to socialize with your friends and meet new people. To start out, just find a golf course in your area with the links provided, read up on the free beginners tutorials, and if you are decided on taking it up purchase one of the great beginner golf sets. From there you can learn as you go along with the great selection of free golf instruction websites or books and dvds available.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Sports&hobby=Golf">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Golf</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="golf" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
				<iframe id="wiki" src="http://en.wikipedia.org/wiki/Golf" height="600" width="700" 
				frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>