<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.hobbycentral.java.DBConnectionBean" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Name: HobbyCentral.com
Author: Vineet Potdar | Niketa Hira
Date: 03-22-2010
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Info Center | HobbyCentral.com</title>
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
	<jsp:include page="/facebooklike.jsp" />
	<jsp:include page="feeds.jsp" />
</div>

<div id="rightbar">
	<jsp:include page="/twitterWidget.jsp">
		<jsp:param value="Hobbies" name="tweetQuery"/>
	</jsp:include>
	<jsp:include page="slideshow.jsp" />
</div>

<div id="content">
	<div id="postsmain">
		<div class="post">
			<h2>Welcome to Info Center</h2>
			<div class="story">
				<img src="/HobbyCentral/images/infocenter_pic.gif" alt="Image not available" style="float:right; height:200px; width:200px;"/>
				<p>Our categories range from The Arts, Dancing, Films to Extreme Sports and Games. Once you choose
				a category, you can browse through several hobbies within the category. Each category has a wide 
				variety of hobbies that you can read about. You can also view pictures and videos about hobbies 
				that interest you by clicking on the photos and videos tabs.</p>
				<p>So what are you waiting for?</p>
				<p>Pick a category to get started</p>
				<p>Happy Browsing!!!</p>
				<hr />
			</div>
		</div>
		<div class="post">
		<%
		DBConnectionBean b = new DBConnectionBean();
		Connection conn = b.getDbconn();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select category_name, imgpath from categorylist order by category_name");
		while (rs.next()) {
		%>
		<table width="100%">
			<tr>
				<td>
					<div class="storylist">
						<a href="/HobbyCentral/RedirectToCategory?categoryname=<%=rs.getString("category_name").replaceAll(" ","+") %>"><img src="<%=rs.getString("imgpath") %>" alt="" /></a>
						<span><a href="/HobbyCentral/RedirectToCategory?categoryname=<%=rs.getString("category_name").replaceAll(" ","+") %>"><%=rs.getString("category_name") %></a></span>
					</div>
				</td>
				<%if (rs.next()) { %>
				<td>
					<div class="storylist">
						<a href="/HobbyCentral/RedirectToCategory?categoryname=<%=rs.getString("category_name").replaceAll(" ","+") %>"><img src="<%=rs.getString("imgpath") %>" alt="" /></a>
						<span><a href="/HobbyCentral/RedirectToCategory?categoryname=<%=rs.getString("category_name").replaceAll(" ","+") %>"><%=rs.getString("category_name") %></a></span>
					</div>
				</td>
				<%}%>
			</tr>
		</table>
		<%} %>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
