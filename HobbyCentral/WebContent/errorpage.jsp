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
<link href="/HobbyCentral/css/style.css" rel="stylesheet" type="text/css" />
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
	
</div>

<div id="content">
	<div id="postsmain">
		<div class="post">
			<div class="story">
				<%
				String err = request.getParameter("errortype");
				if (err == "internetDown") {
				%>
				<h4 style="color:red;">Could not connect to <%=request.getParameter("website") %>. Check your internet connection</h4>
				<%} else { %>
				<h4 style="color: red;">Oops! There was some error. Check you internet connection</h4>
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
