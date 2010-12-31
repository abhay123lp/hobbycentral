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
<title>Tango | HobbyCentral.com</title>
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
			<a href="dancing.jsp">Dancing</a> | Tango
		</div>
		<div class="post">
			<h2>Tango</h2>
			<div class="story">
				<p>The only thing better than watching somebody dance Tango is actually dancing it. Its quick movements and 
				dramatic style make it very popular and make a great impression. Although most people believe it is very 
				difficult to learn and master, the basics can be learned easily with some basic effort. The internet has 
				great resources for both learning tango steps online and getting great video tapes or instructors to learn. 
				As always there are great forums available for questions.</p>
				
				<p>Tango is a dance that has influences from Spanish and African culture. Dances from the candomble 
				ceremonies of former slave peoples helped shape the modern day Tango. The dance originated in lower-class 
				districts of Buenos Aires. The music derived from the fusion of various forms of music from Europe. The word 
				"Tango" seems to have first been used in connection with the dance in the 1890s. Initially it was just one of 
				the many dances, but it soon became popular throughout society, as theatres  and street barrel organs spread 
				it from the boobs to the working-class slums, which were packed with hundreds of thousands of European 
				immigrants, primarily Italians, Spanish and French.</p>

				<p>Good Luck and Have Fun!!!</p>
				
<!--				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Dancing&hobby=Tango">More...</a></span>-->
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Tango</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="tango dancing" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Tango_dance" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>