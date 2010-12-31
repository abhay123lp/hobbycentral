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
<title>Wikipedia Results | HobbyCentral.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/HobbyCentral/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/HobbyCentral/scripts/validate.js"></script>
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

<%
	String qry = (String) request.getAttribute("query");
	String url = (String) request.getAttribute("url");
%>
<div id="content">
	<div id="postsmain">
		<div class="postGallery">
			<h2>Search resuls courtesy Wikipedia.org</h2>
			<div class="storyGallery">
				<p>You searched for <span>"<%=qry %>"</span></p>
				
				<p>Looking for something else?</p>
				<form id="form1" method="post" action="/HobbyCentral/SearchWikipedia" onSubmit="return validateForm();">
					<input type="text" name="query" id="searchBox" />
					<input type="submit" name="submit" id="submit" value="Search on Wikipedia.org" />
				</form>
				<%if (qry != "") { %>
				<iframe src="<%=url %>" height="700" width="700" scrolling="auto" id="wiki" frameborder="0"></iframe>
				<%} else { %>
				<p>Your search did not return any results</p>
				<%} %>
			</div>
		</div>
	</div>
</div>
<div id="footer"> 
	<p id="copy">&copy;2010 Copyright HobbyCentral.com</p>
</div>
</body>
</html>
