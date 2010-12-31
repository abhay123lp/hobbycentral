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
<title>Food & Drinks | HobbyCentral.com</title>
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
			<a href="/HobbyCentral/info.jsp">Info Center</a> | Food & Drinks
		</div>
		<div class="post">
			<h2>Food & Drinks</h2>
			<div class="story">
				<img src="/HobbyCentral/images/hobbies/foodanddrinks.jpg" alt="Image not avaialble" style="float:right; height:200px; width:300px;" />
				
				<p>All you food and drink connisseurs out there, there is much else that you can do besided eating and drinking food and drink.</p>

				<p>Do you ever wonder, how you favorite wine tastes so perfect, how your favorite coffee place consistently makes the best ever coffee or how your favorite restaurant makes the delicious food.</p> 
					
				<p>You can learn how make your own wine, learn how perfect wine tastes, make your own coffee and cook a wide variety of food. You can find information on how to do all this and more by chossing what intersts you most and reading up on the plethora of information available.</p>
			
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="story">
				<table width="100%" cellpadding="10"
					style="text-align: center; border-bottom: 1px solid #B8B8B8">
					<tr>
						<td><img src="/HobbyCentral/images/hobbies/beerbrewing.jpg" alt="Image" /><br />
						<a href="beerbrewing.jsp">Beer Brewing</a></td>
						<td><img src="/HobbyCentral/images/hobbies/coffeeroasting.jpg" alt="Image" /><br />
						<a href="coffeeroasting.jsp">Coffee Roasting</a></td>
						<td><img src="/HobbyCentral/images/hobbies/winemaking.jpg" alt="Image" /><br />
						<a href="winemaking.jsp">Wine Making</a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
