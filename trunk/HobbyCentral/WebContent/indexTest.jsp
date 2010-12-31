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
<title>HobbyCentral.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/HobbyCentral/css/default.css" rel="stylesheet" type="text/css" />

<script language="JavaScript" type="text/javascript">
<!-- Copyright 2005, Sandeep Gangadharan -->
<!-- For more free scripts go to http://www.sivamdesign.com/scripts/ -->
<!--
var x1 = 120;  // change the # on the left to adjuct the X co-ordinate
var y1 = 50;   // change the # on the left to adjuct the Y co-ordinate

(document.getElementById && !document.all) ? dom = true : dom = false;

function typeStart() {
  if (dom) {
    document.write('<div id="logoBox" style="position:absolute; left:' + (window.innerWidth-x1) + 'px; visibility:visible">') }
  if (document.all) {
    document.write('<div id="logoBox" style="position:absolute; left:' + (document.body.clientWidth-x1) + 'px; visibility:visible">') }
 }

function typeEnd() {
  if (document.all || dom) { document.write('</div>') }
 }

function placeIt() {
  if (dom) {document.getElementById("logoBox").style.top = window.pageYOffset + y1 + "px";
            document.getElementById("logoBox").style.left = window.pageXOffset + x1 + "px";}
  if (document.all) {document.all["logoBox"].style.top = document.documentElement.scrollTop + y1 + "px";
                     document.all["logoBox"].style.left = document.documentElement.scrollLeft + x1 + "px";}
  window.setTimeout("placeIt()", 10);
 }
// -->
</script>


</head>
<body onLoad="placeIt()">
<a name="topper"></a>
<script>typeStart()</script>
<a href="#topper" title="Back to top" position="float:right";><b>Back to top</b></a>
 				<script>typeEnd()</script>
  

<div id="header">
	<jsp:include page="header.jsp" />
	<div id="menu">
		<ul>
			<li class="active"><a href="/HobbyCentral/index.jsp" accesskey="1" title="">Home</a></li>
			<li><a href="/HobbyCentral/info.jsp" accesskey="2" title="">Info Center</a></li>
			<li><a href="/HobbyCentral/photos.jsp" accesskey="3" title="">Photos</a></li>
			<li><a href="/HobbyCentral/videos.jsp" accesskey="4" title="">Videos</a></li>
			<li><a href="/HobbyCentral/wiki.jsp" accesskey="5" title="">Wiki</a></li>
		</ul>
	</div>
</div>
<div id="gallery">
	<div id="top-photo">
		<p><a href="#"><img src="images/top02.gif" alt="" width="700" height="299" /></a></p>
	</div>
</div>

<jsp:include page="feeds.jsp" />
<jsp:include page="ads.jsp" />
<jsp:include page="slideshow.jsp"></jsp:include>

<div id="content">
	<div id="postsmain">
		<div class="post">
			<h2>Welcome to HobbyCentral.com</h2>
			<div class="story">
				<p>At HobbyCentral.com we believe that there are as many hobbies as there are ideas</p>
				<p>HobbyCentral.com is a one stop shop for all the information you need about hobbies. There is an 
				infinite realm of possibilities in picking a hobby that fancies your interests.</p>
				<p>Hobbies not only give you something to be excited about and be engaged with, they add to the overall
				quality of life. They give you a way to get away. Being engaged in a hobby helps you create, explore 
				and develop your creative side. It may lead you to do something you never thought you could do. Hobbies 
				can be fun, challenging, exhilirating, as well as education. So go ahead, pursue a hobby and see the 
				change it brings to your life</p>
				<p>Browse through our varied categories, ranging from Arts, Food & Drinks, to Exercise & Sports to find 
				the hobby that most interests you. You will find a plethora of information in any hobby that you choose, 
				including related pictures and videos.</p>
				<p>That's not all. If you find a hobby you want to pursue, but realize you don't have the necessary 
				equipments and instruments, look no further. HobbyCentral.com will help you find the best products, the 
				most popular products and more.</p>
				<p>If you are someone who wants to pursue a hobby but don't know where to begin, go and fill out the 
				survey that helps capture your interst. HobbyCentral.com will then suggest a variety of ideas and 
				help you choose something that best suits you.</p>
				<p>If you have a hobby that is unique and you would like to share it with the world, we would love 
				to hear about it and add it to our collection.</p>
				<p>Every hobby can be interesting, if you look deep enough.</p>
							</div>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp" />
</body>
</html>
