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
<title>Collecting | HobbyCentral.com</title>
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
			<a href="/HobbyCentral/info.jsp">Info Center</a> | Collecting
		</div>
		<div class="post">
			<h2>Collecting</h2>
			<!--<div class="meta">
				<p class="date">Posted on February 25, 2007 by John Doe</p>
				<p><span>Filed under </span><a href="#" class="category">Uncategorized</a><span> | </span><a href="#" class="comments">28 Comments</a></p>
			</div>-->
			<div class="story">
				<img src="/HobbyCentral/images/hobbies/collecting.jpg" alt="Image not avaialble" style="float:right; height:200px; width:300px;" />
				<p>Collecting and Collections can be just about anything. From the trivial to the most scarce items, 
				collecting is about obtaining, organizing, cataloging, preserving and displaying the items of your 
				interests.</p>
				<p>During the 1970s Beer Can Collecting became all the rage. It may have faded from sight there, 
				but the hobby is coming back in part because the web is bringing these collectors, dealers and beer 
				fans back together.</p>

				<p>Coins and Stamps are two hobbies often started when we are children and are fun to return to with 
				our kids and grand kids.</p>

				<p>Trading Cards and Sports Memorabilia caught the nations attention during the 1980s and continues 
				today to be big business. But memorabilia can also include other items such as movie props, famous 
				autographs and other, one of a kind items.</p>

				<p>Whatever you collect, find out what's available on the web. Look for fan sites, dealers, convention 
				news, associations, bulletin and discussion boards, and magazines and newsletters. Start learning 
				everything you can about your new area of interest.</p>

				<p>Get started today! </p>
				<hr />
			</div>
		</div>
		<div class="post">
<!--			<h2 class="title">Title Text Here</h2>-->
			<div class="story">
				<table width="100%" cellpadding="10"
					style="text-align: center; border-bottom: 1px solid #B8B8B8">
					<tr>
						<td><img src="/HobbyCentral/images/hobbies/antiques.jpg" alt="Image" /><br />
						<a href="antiques.jsp">Antiques</a></td>
						<td><img src="/HobbyCentral/images/hobbies/coincollecting.jpg" alt="Image" /><br />
						<a href="coincollecting.jsp">Coin Collection</a></td>
						<td><img src="/HobbyCentral/images/hobbies/stampcollecting.jpg" alt="Image" /><br />
						<a href="stampcollection.jsp">Stamp Collection</a></td>
						<td><img src="/HobbyCentral/images/hobbies/sportscollectibles.jpg" alt="Image" /><br />
						<a href="sportscollectibles.jsp">Sports Collectibles</a></td>
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
