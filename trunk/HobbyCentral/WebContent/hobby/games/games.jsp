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
<title>Games | HobbyCentral.com</title>
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
			<a href="/HobbyCentral/info.jsp">Info Center</a> | Games
		</div>
		<div class="post">
			<h2>Games</h2>
			<div class="story">
				<img src="/HobbyCentral/images/hobbies/games.jpg" alt="Image not avaialble" style="float:right; height:200px; width:300px;" />
				<p>A game is commonly defined as an organized, competitive, and skillful activity requiring commitment and fair 
				play. It is governed by a set of rules or customs. In a game the key factors are the mental capabilities and skills of 
				the competitor when determining the outcome (winning or losing). Games such as card games and board games, 
				though these could be called mind sports, require only mental skills. Non-competitive activities such as jogging and 
				rock-climbing, are usually classified as recreations.</p>

				<p>The main focus of Games is for mental recreation without the need for intense physical activity. Games help to relax the mind, at the same time introduces some competitiveness to make it more interesting. It can be used as a great social ice breaker, because when people focus on the games, they tend to forget their own social inhibitive instincts and open up.</p>
				
				<p>Get started today! </p>
				
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="story">
				<table width="100%" cellpadding="10"
					style="text-align: center; border-bottom: 1px solid #B8B8B8">
					<tr>
						<td><img src="/HobbyCentral/images/hobbies/cuesports.jpg" alt="Image" /><br />
						<a href="cuesports.jsp">Cue Sports</a></td>
						<td><img src="/HobbyCentral/images/hobbies/bridge.jpg" alt="Image" /><br />
						<a href="bridge.jsp">Bridge</a></td>
						<td><img src="/HobbyCentral/images/hobbies/foosball.jpg" alt="Image" /><br />
						<a href="foosball.jsp">Foosball</a></td>
						<td><img src="/HobbyCentral/images/hobbies/tabletennis.jpg" alt="Image" /><br />
						<a href="tabletennis.jsp">Table Tennis</a></td>
					</tr>
<!--					<tr>-->
<!--						<td><img src="/HobbyCentral/images/hobbies/comicbooks.jpg" alt="Image" /><br />-->
<!--						<a href="comicbooks.jsp">Comic Books</a></td>-->
<!--						<td><img src="/HobbyCentral/images/hobbies/finearts.jpg" alt="Image" /><br />-->
<!--						<a href="fineartcollecting.jsp">Fine Art Collecting</a></td>-->
<!--						<td><img src="/HobbyCentral/images/hobbies/modelcars.jpg" alt="Image" /><br />-->
<!--						<a href="modelcars.jsp">Model Cars</a></td>-->
<!--						<td><img src="/HobbyCentral/images/hobbies/records.jpg" alt="Image" /><br />-->
<!--						<a href="records.jsp">Records (Vinyl)</a></td>-->
<!--					</tr>-->
				</table>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>
