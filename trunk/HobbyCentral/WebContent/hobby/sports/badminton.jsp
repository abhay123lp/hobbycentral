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
<title>Badminton | HobbyCentral.com</title>
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
			<a href="sports.jsp">Sports</a> | Badminton
		</div>
		<div class="post">
			<h2>Badminton</h2>
			<div class="story">
				<p>Badminton is a racquet sport played by either two opposing players (singles) or two opposing pairs (doubles), who take positions on opposite halves of a rectangular court that is divided by a net. Players score points by striking a shuttlecock  with their racquet so that it passes over the net and lands in their opponents' half of the court. A rally ends once the shuttlecock has struck the ground, and each side may only strike the shuttlecock once before it passes over the net.</p>

				<p>The shuttlecock (or shuttle) is a feathered projectile whose unique aerodynamic properties cause it to fly differently from the balls used in most racquet sports; in particular, the feathers create much higher drag, causing the shuttlecock to decelerate more rapidly than a ball. Shuttlecocks have a much higher top speed, when compared to other racquet sports. Because shuttlecock flight is affected by wind, competitive badminton is played indoors. Badminton is also played outdoors as a casual recreational activity, often as a garden or beach game.</p>

				<p>Since 2009, badminton has been an Olympic sport with five events: men's and women's singles, men's and women's doubles, and mixed doubles, in which each pair consists of a man and a woman. At high levels of play, the sport demands excellent fitness: players require aerobic stamina, agility, strength, speed and precision. It is also a technical sport, requiring good motor coordination and the development of sophisticated racquet movements.</p>
				
				<p>Badminton is a great sport to start because it is easy to play, fun, and inexpensive. It is one of the faster and most addictive racquet sports out there. Whether you are interested in getting serious about your play and competing in tournaments or just want to play it in the park on a Sunday with friends I know you will like it allot! Below are some terrific articles on the history of the game, different playing techniques and strategies, official rules, and some very useful forums for asking questions about the game. </p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Sports&hobby=Badminton">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Badminton</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="badminton" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
				<iframe id="wiki" src="http://en.wikipedia.org/wiki/Badminton" height="600" width="700" 
				frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>