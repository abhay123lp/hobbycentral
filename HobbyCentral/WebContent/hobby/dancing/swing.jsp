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
<title>Swing | HobbyCentral.com</title>
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
			<a href="dancing.jsp">Dancing</a> | Swing
		</div>
		<div class="post">
			<h2>Swing</h2>
			<div class="story">
				<p>Dancing Swing is very exciting and fun due to its rapid pace, loud music, and great atmosphere. It is 
				really easy to start out in because it is more informal than other ballroom techniques and more spontaneous. 
				The free lessons from Dance TV are very good and will get anybody moving quickly in Swing. With this you 
				should be able to go to Swing Clubs (as linked below) and try out some steps. If you want to learn further 
				there are great teachers and classes available.</p>
				
				<p>The term "swing dance" commonly refers to a group of dances that developed concurrently with the swing 
				style of jazz  music in the 1920s, '30s and '40s, although the earliest of these dance forms predate swing 
				jazz music. The best known of these dances is the Lindy Hop, a popular partner dance that originated in 
				Harlem and is still danced today. While the majority of swing dances began in African American communities 
				as vernacular African American dances, a number of forms (Balboa, for example) developed within Anglo-
				American  or other ethnic group communities.</p>

				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Dancing&hobby=Swing">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Swing Dancing</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="swing dancing" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Swing_dancing" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>