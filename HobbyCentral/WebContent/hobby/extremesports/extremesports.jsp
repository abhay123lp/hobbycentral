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
<title>Extreme Sports | HobbyCentral.com</title>
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
			<a href="/HobbyCentral/info.jsp">Info Center</a> | Extreme Sports
		</div>
		<div class="post">
			<h2>Extreme Sports</h2>
			<div class="story">
				<img src="/HobbyCentral/images/hobbies/extremesports.jpg" alt="Image not avaialble" style="float:right; height:200px; width:300px;" />
				
				<p>An extreme sport (also called action sport and adventure sport) is a popular term for certain activities perceived as 
				having a high level of inherent danger and that are counter-cultural. These activities often involve speed, height, a high 
				level of physical exertion, and highly specialized gear or spectacular stunts.</p>
				
				<p>While use of the term "extreme sport" has spread far and wide to describe a multitude of different activities, exactly 
				which sports are considered 'extreme' is debatable. There are however several characteristics common to most extreme sports. 
				While not the exclusive domain of youth, extreme sports tend to have a younger-than-average target demographic. Extreme 
				sports are rarely sanctioned by schools. Extreme sports tend to be more solitary than traditional sports. In addition, 
				beginning extreme athletes tend to work on their craft without the guidance of a coach (though some may hire a coach later).</p>

				<p>Activities categorized by media as extreme sports differ from traditional sports due to the higher number of inherently 
				uncontrollable variables. Athletes in these activities compete not only against other athletes, but also against 
				environmental obstacles and challenges. These environmental variables are frequently weather and terrain related, including 
				wind, snow, water and mountains. Because these natural phenomena cannot be controlled, they inevitably affect the outcome of
				 the given activity or event.</p>

				<p>In a traditional sporting event, athletes compete against each other under controlled circumstances. While it is possible
				 to create a controlled sporting event such as X Games, there are often variables that cannot be held constant for all 
				 athletes. Examples include snow conditions for snowboarders, rock and ice quality for climbers, and wave height for 
				 surfers.</p>

				<p>Whilst traditional sporting judgment criteria may be adopted when assessing performance (distance, time, score, et cetera), 
				extreme sports performers are often evaluated on more subjective and aesthetic criteria. This results in a tendency to reject
				 unified judging methods, with different sports employing their own ideals and indeed having the ability to evolve their 
				 assessment standards with new trends or developments in the sport.</p>
				
				<p>Get started today! </p>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="story">
				<table width="100%" cellpadding="10"
					style="text-align: center; border-bottom: 1px solid #B8B8B8">
					<tr>
						<td><img src="/HobbyCentral/images/hobbies/autoracing.jpg" alt="Image" /><br />
						<a href="autoracing.jsp">Auto Racing</a></td>
						<td><img src="/HobbyCentral/images/hobbies/basejumping.jpg" alt="Image" /><br />
						<a href="basejumping.jsp">Base Jumping</a></td>
						<td><img src="/HobbyCentral/images/hobbies/gokarting.jpg" alt="Image" /><br />
						<a href="gokarting.jsp">Go Karting</a></td>
						<td><img src="/HobbyCentral/images/hobbies/hanggliding.jpg" alt="Image" /><br />
						<a href="hanggliding.jsp">Hang Gliding</a></td>
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
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
