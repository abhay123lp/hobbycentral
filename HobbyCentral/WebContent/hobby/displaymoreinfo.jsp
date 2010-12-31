<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.hobbycentral.java.DataBean" %>
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
	DataBean bean = (DataBean) request.getAttribute("resultBean");
	String i1 = bean.getIntro1();
	String i2 = bean.getIntro2();
	String wh1 = bean.getWhere1();
	String wh2 = bean.getWhere2();
	String s1 = bean.getStorage1();
	String s2 = bean.getStorage2();
	String l1 = bean.getLearn1();
	String l2 = bean.getLearn2();
	String wt1 = bean.getWhat1();
	String wt2 = bean.getWhat2();
	String b1 = bean.getBasics1();
	String b2 = bean.getBasics2();
	String h1 = bean.getHistory1();
	String h2 = bean.getHistory2();
	String t1 = bean.getType1();
	String t2 = bean.getType2();
	String o1 = bean.getOnlineRes1();
	String o2 = bean.getOnlineRes2();
	String p1 = bean.getProcess1();
	String p2 = bean.getProcess2();
	
	String hobbyname = (String)request.getAttribute("hobbyname");
	String category = (String)request.getAttribute("category");
	String urlcategory = "/HobbyCentral/hobby/" + category.replaceAll(" ","").toLowerCase() + "/" + category.replaceAll(" ","").toLowerCase() + ".jsp";
	String url = "/HobbyCentral/hobby/" + category + "/" + hobbyname.replaceAll(" ", "") + ".jsp";
%>
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
			<a href="<%=urlcategory %>"> <%=category %> </a> |
			<%=hobbyname %></a>
		</div>	
		<div class="post">
			<h2><%=hobbyname %></h2>
			<div class="story">
				<div class="moreinfo">
					<%if (i1 != null || i2 != null) { %>
						<span>Introduction</span>
					<%}%>
					<%if(i1 != null) {%>
						<%=i1 %>
					<%}%>
					<%if(i2 != null) {%>
						<%=i2 %>
					<%}%>
					<%if (h1 != null || h2 != null) { %>
						<span>History</span>
					<%}%>
					<%if(h1 != null) {%>
						<%=h1 %>
					<%}%>
					<%if(h2 != null) {%>
						<%=h2 %>
					<%}%>
					<%if (b1 != null || b2 != null) { %>
						<span>Basics</span>
					<%}%>
					<%if(b1 != null) {%>
						<%=b1 %>
					<%}%>
					<%if(b2 !=null) { %>
						<%=b2 %>
					<%}%>
					<%if (l1 != null || l2 != null) { %>
						<span>Learning</span>
					<%}%>
					<%if(l1 != null) {%>
						<%=l1 %>
					<%}%>
					<%if(l2 !=null) { %>
						<%=l2 %>
					<%}%>
					<%if (t1 != null || t2 != null) { %>
						<span>Types</span>
					<%}%>
					<%if(t1 != null) {%>
						<%=t1 %>
					<%}%>
					<%if(t2 !=null) { %>
						<%=t2 %>
					<%}%>
					<%if (wt1 != null || wt2 != null) { %>
						<span>What you need</span>
					<%}%>
					<%if(wt1 != null) {%>
						<%=wt1 %>
					<%}%>
					<%if(wt2 !=null) { %>
						<%=wt2 %>
					<%}%>
					<%if (wh1 != null || wh2 != null) { %>
						<span>Where to find</span>
					<%}%>
					<%if(wh1 != null) {%>
						<%=wh1 %>
					<%}%>
					<%if(wh2 !=null) { %>
						<%=wh2 %>
					<%}%>
					<%if (s1 != null || s2 != null) { %>
						<span>Storage</span>
					<%}%>
					<%if(s1 != null) {%>
						<%=s1 %>
					<%}%>
					<%if(s2 !=null) { %>
						<%=s2 %>
					<%}%>
					<%if (p1 != null || p2 != null) { %>
						<span>Process</span>
					<%}%>
					<%if(p1 != null) {%>
						<%=p1 %>
					<%}%>
					<%if(p2 !=null) { %>
						<%=p2 %>
					<%}%>
					<%if (o1 != null || o2 != null) { %>
						<span>Online Resources</span>
					<%}%>
					<%if(o1 != null) {%>
						<%=o1 %>
					<%}%>
					<%if(o2 !=null) { %>
						<%=o2 %>
					<%}%>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
