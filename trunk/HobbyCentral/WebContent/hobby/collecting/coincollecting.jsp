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
<title>Coin Collecting | HobbyCentral.com</title>
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
			<a href="collecting.jsp"> Collecting</a> | Coin Collecting
		</div>
		<div class="post">
			<h2>Coin Collecting</h2>
			<div class="story">
				<p>Coin Collecting or Numismatics as it is also known is a easy hobby to start and get involved in. 
				Although many people successfully buy and sell coins for a profit, many more collect coins for the joy and 
				historical significance. To successfully collect coins it is crucial to study the different periods and 
				history behind the item. The current and future value of each coin depends on the condition of the coin, 
				the rarity, and many other factors you will learn about.</p>
				
				<p>As for the current coin market, there are hundreds of new US and World editions that will take their 
				place in history. Pick the editions which you identify with the most or learn about their availability and 
				value potential for the future. Creating a coin collection is easy and not very expensive as many new 
				editions cost a couple of dollars.</p>
				
				<p>There are many terrific and free online resources so that you can learn about the history, the different 
				inns and outs of the hobby, useful message boards and online forums where you can talk to other coin 
				collectors. Also there are several terrific great online coin buying resources where you can find new and 
				older coins as well as useful books with coin values and other information. Hopefully all of these resources 
				with not only get you started but also make you an experienced collector.</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=Collecting&hobby=Coin+Collection">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs" style="background-color: #d1d565">
				<h2>Blogs for Coin Collecting</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="coin collecting" />
				<jsp:include page="/blogger.jsp">
					<jsp:param value="coin collecting" name="page"/>
				</jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Coin_collecting" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>
