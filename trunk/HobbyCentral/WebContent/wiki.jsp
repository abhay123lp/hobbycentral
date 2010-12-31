<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<jsp:include page="feeds.jsp" />	
</div>

<div id="rightbar">
	<jsp:include page="ads.jsp" />
	<jsp:include page="slideshow.jsp" />
</div>

<div id="content">
	<div id="postsmain">
		<div class="postGallery">
			<h2>Search results courtesy Wikipedia.org</h2>
			<div class="storyGallery">
				<p>Search for wikis of your choice</p>
				<form id="form1" method="get" action="/HobbyCentral/SearchWikipedia" onSubmit="return validate();" >
					<input type="text" name="query" id="searchBox" />
					<input type="submit" name="submit" id="submit" value="Search on Wikipedia.org" />
				</form>
			</div>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
