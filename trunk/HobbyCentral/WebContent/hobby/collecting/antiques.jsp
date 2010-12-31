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
<title>Antique Collection | HobbyCentral.com</title>
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
	<jsp:include page="/facebook.jsp" />
</div>

<div id="rightbar">
	<jsp:include page="/ads.jsp" />
	<jsp:include page="/slideshow.jsp" />
</div>

<div id="content">
	<div id="postsmain">
		<div class="post">
			<a href="/HobbyCentral/info.jsp">Info Center</a> | 
			<a href="/HobbyCentral/hobby/collecting/collecting.jsp"> Collecting</a> | Antique Collection
		</div>
		<div class="post">
			<h2>Antique Collection</h2>
			<div class="story">
				<p>Collecting antiques is a great hobby in that it is very in touch with the history and beauty of our past. 
				Many antique collectors are passionate about this history and the research and pride in purchasing and owning 
				unique collectors pieces. Learning about the culture and history surrounding the item can not only be very 
				entertaining but crucial to determining the future value of the item.</p>
				
				<p>Collecting antiques can range from Furniture to many other types of objects. As it has become extremely 
				popular in the past several years, you can find a large selection of antiques in practically any city.</p>
				
				<p>Although there are not many informational resources online, there are a great deal of books that talk 
				about antiques and their ratings. Once you are knowledgeable on the subject and wish to make a purchase 
				there are many online road shows, auction houses such as ebay and iCollector, where you can find great 
				antiques at bargain prices. I also highly recommend that you visit the forum / message board to discuss 
				the different topics that will help you starting out.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Collecting&hobby=Antique+Collection">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Antiques Collecting</h2><br></br>
				<input type="hidden" id="page" name="blogqry" value="antique collection" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<jsp:include page="/displaywiki.jsp">
				<jsp:param value="antique collection" name="page"/>
			</jsp:include>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>
