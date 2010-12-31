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
<title>Ballet | HobbyCentral.com</title>
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
			<a href="dancing.jsp">Dancing</a> | Ballet
		</div>
		<div class="post">
			<h2>Ballet</h2>
			<div class="story">
				<p>Ballet Dancing can be very easy to get into and very rewarding. Apart from being a very good exercise, 
				Ballet is fun to do and creates flexibility and great posture. It is never to late to start learning and 
				improving on your ballet skills. Getting started is as easy as buying the basic ballet items and finding some 
				of the terrific local teachers and teaching studios available.</p>
				
				<p>Online there are many great resources to help you start out. From beginners articles and tips, to more 
				advanced techniques for intermediate and advanced dancers. We also highly recommend that you go to the useful 
				online forum / message board to find ongoing discussions regarding beginner issues. These forums can help you 
				progress rapidly and try new stuff. </p>
				
				<p>Finally there are some reliable online stores for buying any ballet clothing and accessories. we also 
				recommend some terrific ballet books, ballet dvds, and ballet music classics.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Dancing&hobby=Ballet">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Ballet</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="ballet" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Ballet" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>