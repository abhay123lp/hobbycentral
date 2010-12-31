<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Name: HobbyCentral.com
Author: Vineet Potdar | Niketa Hira
Date: 03-22-2010
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Categories | HobbyCentral.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/HobbyCentral/css/style.css" rel="stylesheet" type="text/css" />
</head>
<%
ArrayList<String> list = (ArrayList<String>) request.getAttribute("hobbynamelist");
String category = (String)request.getAttribute("category");
String imgurl = (String)request.getAttribute("img");
String desc = (String) request.getAttribute("description");

%>
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
<!--	<jsp:include page="/translate.jsp" />-->
	<jsp:include page="/twitterWidget.jsp">
		<jsp:param value="<%=category %>" name="tweetQuery"/>
	</jsp:include>
	<jsp:include page="/slideshow.jsp" />
</div>
<div id="content">
	<div id="postsmain">
		<div class="post">
			<h2><%=category %></h2>
			<div class="story">
				<%if (imgurl != null) { %>
					<img src="<%=imgurl %>" alt="" style="float:right; height:200px; width:300px;" />
				<%} %>
				<% if(desc != null) { %>
					<%=desc %>
					<hr />
				<%} %>
			</div>
		</div>
		<div class="post">
			<div class="story">
				<div align="center">
				<%
				for (int i = 0; i < list.size()-1; i+=2) { %>
					<table class="list" width="80%">
						<tr>
							<td width="50%">
								<%=(i+1)%>. <a href="/HobbyCentral/DisplayMoreInfo?category=<%=category %>&hobby=<%=list.get(i).replaceAll(" ","+") %>"><%=list.get(i) %></a>
							</td>
							<td width="50%">
								<%=(i+2) %>. <a href="/HobbyCentral/DisplayMoreInfo?category=<%=category %>&hobby=<%=list.get(i+1).replaceAll(" ","+") %>"><%=list.get(i+1) %></a>
							</td>
						</tr>
<!--						<tr><td><hr /></td><td><hr /></td></tr>-->
					</table>
				<%} %>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>