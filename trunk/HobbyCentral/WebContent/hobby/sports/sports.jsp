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
<title>Sports | HobbyCentral.com</title>
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
			<a href="/HobbyCentral/info.jsp">Info Center</a> | Sports
		</div>
		<div class="post">
			<h2>Sports</h2>
			<div class="story">
				<img src="/HobbyCentral/images/hobbies/sports.jpg" alt="Image not avaialble" style="float:right; height:200px; width:300px;" />
				<p>A sport is commonly defined as an organized, competitive, and skillful physical activity requiring commitment and fair 
				play. It is governed by a set of rules or customs. In a sport the key factors are the physical capabilities and skills of 
				the competitor when determining the outcome (winning or losing). The physical activity involves the movement of people, 
				animals and/or a variety of objects such as balls and machines. In contrast, games such as card games and board games, 
				though these could be called mind sports, require only mental skills. Non-competitive activities such as jogging and 
				rock-climbing, are usually classified as recreations.</p>

				<p>Physical events such as scoring goals or crossing a line first often define the result of a sport. However the degree 
				of skill in some sports such as diving, dressage and figure skating is judged according to well-defined criteria. This is 
				in contrast with other judged activities such as beauty pageants and body-building shows, where skill does not have to be 
				shown and the criteria are not as well defined.</p>

				<p>Accurate records are kept and updated for most sports at the highest levels, while failures and accomplishments are 
				widely announced in sport news. Sports are most often played just for fun or for the simple fact that people need exercise 
				to stay in good physical condition. However professional sport is a major source of entertainment.</p>

				<p>Although they do not always succeed, sports participants are expected to display good sportsmanship, standards of 
				conduct such as being respectful of opponents and officials, and congratulating the winner when losing.</p>

				<p>Get started today! </p>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="story">
				<table width="100%" cellpadding="10"
					style="text-align: center; border-bottom: 1px solid #B8B8B8">
					<tr>
						<td><img src="/HobbyCentral/images/hobbies/archery.jpg" alt="Image" /><br />
						<a href="archery.jsp">Archery</a></td>
						<td><img src="/HobbyCentral/images/hobbies/badminton.jpg" alt="Image" /><br />
						<a href="badminton.jsp">Badminton</a></td>
						<td><img src="/HobbyCentral/images/hobbies/fencing.jpg" alt="Image" /><br />
						<a href="fencing.jsp">Fencing</a></td>
						<td><img src="/HobbyCentral/images/hobbies/golf.jpg" alt="Image" /><br />
						<a href="golf.jsp">Golf</a></td>
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
