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
<title>Comic Book Collection | HobbyCentral.com</title>
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
			<a href="collecting.jsp"> Collecting</a> | Comic Book Collection
		</div>
		<div class="post">
			<h2>Comic Book Collection</h2>
			<div class="story">
				<p>Collecting comics has been a national favorite since Superman appeared in the 1930's. From there the comic 
				book industry has advanced a great deal to the point where today there are tens of thousands of new comics 
				every year and collector editions can fetch high prices. Reading and collecting comics can be very fun as they 
				now have complex storylines, terrific comic book art, intense dialogues, and incredible graphics.</p>
				
				<p>Comic book values depend on a wide variety of topics, such as the character, the condition, the age, how 
				rare the item is, and other important factors. While many people get started collecting comics for the fun 
				and joy of the comic experience, many comics appreciate in value and collecting comics becomes a more 
				professional hobby in which people can invest their savings.</p>
				
				<p>There are many terrific and free online resources so that you can learn about the history, the different 
				inns and outs of the hobby, useful message boards and online forums where you can talk to other comic 
				collectors. Also there are several terrific great online comic buying resources where you can find new and 
				older comics as well as useful books with their respective values and other information. Hopefully all of 
				these resources with not only get you started but also make you an experienced collector.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Collecting&hobby=Comic+Books+Collection">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Comic Books Collecting</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="comic books collecting" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Comic_book_collecting" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
				
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>
