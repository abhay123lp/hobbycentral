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
<title>Fine Art Collecting | HobbyCentral.com</title>
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
			<a href="collecting.jsp"> Collecting</a> | Fine Art Collecting
		</div>
		<div class="post">
			<h2>Fine Art Collecting</h2>
			<div class="story">
				<p>Collecting Fine Art is for many collectors not only a form of investing but more so a passion and love 
				for the pieces of art they purchase. Starting a great art collection will often entail in-depth research and 
				learning of the styles and artists you are interested in. It is important to stay current with the short and 
				long term trends regarding the different styles and artists available. Fortunately collecting art can be 
				very fulfilling in that you can grow your investment and at the same time have beautiful pieces of art in 
				your home.</p>
				
				<p>Contrary to popular belief starting a great art collection is not very expensive, as many great prints 
				and even originals cost as little as $500. Values vary wildly depending on the different artists and periods, 
				and therefore it is crucial to do your research all the way. While many people start collecting for the pure 
				joy and love of art, many times paintings grow in value and collecting can become a great way to invest and 
				grow savings.</p>
				
				<p>There are many terrific and free online resources so that you can learn about the history, the different 
				inns and outs of the hobby, useful message boards and online forums where you can talk to other fine art 
				collectors. Also there are several terrific great online fine art buying resources where you can find new and 
				older fine art as well as useful books with fine art values and other information. Hopefully all of these 
				resources with not only get you started but also make you an experienced collector.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Collecting&hobby=Fine+Arts+Collection">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Fine Arts Collecting</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="fine arts collecting" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Fine_Arts" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>
