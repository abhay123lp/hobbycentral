<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.hobbycentral.java.SearchResultBean" %>
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
<%
ArrayList<SearchResultBean> resultlist = (ArrayList<SearchResultBean>) request.getAttribute("resultList");
//out.println(resultlist.get(0).getHobbyName());
//out.println(resultlist.size());
int resultCount = Integer.parseInt(request.getAttribute("resultcount").toString());
String searchQuery = (String) request.getAttribute("query");
%>
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
		<div class="post">
			<h2>Search Results</h2>
			<p>Your searched for: <span style="color: #FF8400;">"<%=searchQuery %>"</span></p>
			<div class="story">
			<%
				if (resultCount > 0) {%>
				<table width="100%" style="text-align:center">
					<th>#</th>
					<th>Hobby Name</th>
					<th>Hobby Category</th>
					<%
						for (int i = 0; i < resultlist.size(); i++) { 
							SearchResultBean b = null;
							b = resultlist.get(i);
						%>
							<tr>
								<td><%=(i+1) %></td>
								<td><a href="<%=b.getHobbyUrl()%>"><%=b.getHobbyName() %></a></td>
								<td><%=b.getCategoryName() %></td>
							</tr>
						<%		
						}
					} else { %>
						<p>No results found</p>
					<%}
					%>
				</table>
			</div>
		</div>
	</div>
</div>
<%
resultlist.clear();
%>
<div id="footer"> 
	<p id="copy">&copy;2010 Copyright HobbyCentral.com</p>
</div>
</body>
</html>
