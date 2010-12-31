<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.*"%>
<%@ page import="org.jdom.*"%>
<%@ page import="org.jdom.input.*"%>
<%@ page import="org.jdom.xpath.XPath"%>
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
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="scripts/validate.js" ></script>
</head>
<body>
		<jsp:include page="addthis.jsp" />
<div id="header">
	<jsp:include page="logo.jsp" />
	<jsp:include page="menu.jsp" />
</div>
<div id="leftbar">
	<jsp:include page="categorypick.jsp" />
	<jsp:include page="sitesearch.jsp" />
	<jsp:include page="/facebooklike.jsp" />
	<jsp:include page="feeds.jsp" />
</div>

<div id="rightbar">
	<jsp:include page="/facebook.jsp" />
</div>

<div id="content">
		<div id="postsmain">
		<div class="postGallery">
			<p>With our shop section, you can search and shop for anything you feel you need to pursue your hobby.</p>
			
			<p>It could be art, sports collectibles, records and anything else you wish to add to your collection. You can also search for tools needed to pursue painting, knitting,
			 pottery or music instruments available on eBay. </p>
			 
			<p>Additionally you can buy accessories for ballet, salsa or swing dancing. Find board games that you always wanted to buy 
			 but never found time to visit the store. Buy online on eBay and have it delivered to your doorstep.</p>
			
			<p>Just search for what you need and find all products listed on eBay, right here. </p>
		
			<h2>Shop on<img src="/HobbyCentral/images/ebay.GIF" height="30px" width="80px" /></h2>
			<div class="storyGallery">
				<p>Search for anything you want to buy</p>
				<form action="/HobbyCentral/Ebay" method="post" id="form1" onSubmit="return validateForm();">
					<input type="text" id="qry" name="qry" ></input>
					<input type="submit" id="submit" value="Shop on ebay.com" ></input>					
				</form>
			</div>
		</div>
		<hr></hr>
	</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
