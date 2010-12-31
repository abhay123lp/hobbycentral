<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.hobbycentral.java.CollectingBean" %>
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
<link href="/HobbyCentral/css/default.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" >
function validate() {
	var qry = document.getElementById("searchBox");
	if (qry == "") {
		alert("Search box cannot be empty");
		return false;
	}
	return true;
}
</script>
</head>
<body>
<div id="header">
	<div id="logo">
		<h1><a href="#">Hobby Central</a></h1>
		<div id="search">	
			<form id="formSearch" name="formSearch" method="post" action="/HobbyCentral/Search" onSubmit="return validate();">
				<input type="text" id="searchBox" name="searchBox" />
				<input type="submit" id="submit" name="submit" value="Search"/>
			</form>
		</div>
		<div id="jumpto">
       	  <form id="form">
        	  <select name="jumpMenu" id="jumpMenu">
        	  	<option selected="selected">Pick a category</option>
        	    <option value="/HobbyCentral/hobby/thearts/thearts.jsp">The Arts</option>
        	    <option value="/HobbyCentral/hobby/collecting/collecting.jsp">Collecting</option>
        	    <option value="/HobbyCentral/hobby/dancing/dancing.jsp">Dancing</option>
        	    <option value="/HobbyCentral/hobby/extremesports/extremesports.jsp">Extreme Sports</option>
        	    <option value="/HobbyCentral/hobby/foodanddrinks/foodanddrinks.jsp">Food &amp; Drinks</option>
        	    <option value="/HobbyCentral/hobby/games/games.jsp">Games</option>
        	    <option value="/HobbyCentral/hobby/music/music.jsp">Music</option>
        	    <option value="/HobbyCentral/hobby/sports/sports.jsp">Sports</option>
          </select>
        	  <input type="button" name="go_button" id= "go_button" value="Go" onclick="MM_jumpMenuGo('jumpMenu','parent',0)" />
      	  </form>
        </div>
	</div>
	<div id="menu">
		<ul>
			<li><a href="/HobbyCentral/index.jsp" accesskey="1" title="">Home</a></li>
			<li class="active"><a href="/HobbyCentral/info.jsp" accesskey="2" title="">Info Center</a></li>
			<li><a href="/HobbyCentral/photos.jsp" accesskey="3" title="">Photos</a></li>
			<li><a href="/HobbyCentral/videos.jsp" accesskey="4" title="">Videos</a></li>
			<li><a href="/HobbyCentral/wiki.jsp" accesskey="5" title="">Wiki</a></li>
		</ul>
	</div>
</div>

<div id="content">
	<div id="postsmain">
		<div class="post">
			<a href="/HobbyCentral/info.jsp">Info Center</a> | 
			<a href="hobby/collecting/collecting.jsp"> Collecting</a> | Model Cars
		</div>	
		<div class="post">
			<h2>Model Cars Collection</h2>
			<div class="story">
			<%
				CollectingBean bean = (CollectingBean) request.getAttribute("resultBean");
			%>
				<div class="moreinfo">
					<span>Introduction</span>
					<%
					if(bean.getIntro1() != null) {%>
						<%=bean.getIntro1() %>
					<%}%>
					<%
					if(bean.getIntro2() != null) {%>
						<%=bean.getIntro2() %>
					<%}%>
					<%
					if(bean.getIntro3() != null) {%>
						<%=bean.getIntro3() %>
					<%}%>
					<%
					if(bean.getIntro4() != null) {%>
						<%=bean.getIntro4() %>
					<%}%>
					<span>Where to find what you need</span>
					<%
					if(bean.getWhere1() != null) {%>
						<%=bean.getWhere1() %>
					<%}%>
					<%
					if(bean.getWhere2() != null) {%>
						<%=bean.getWhere2() %>
					<%}%>
					<%
					if(bean.getWhere3() != null) {%>
						<%=bean.getWhere3() %>
					<%}%>
					<%
					if(bean.getWhere4() != null) {%>
						<%=bean.getWhere4() %>
					<%}%>
					<span>How to safekeep your model cars collection</span>
					<%
					if(bean.getStorage1() != null) {%>
						<%=bean.getStorage1() %>
					<%}%>
					<%
					if(bean.getStorage2() != null) {%>
						<%=bean.getStorage2() %>
					<%}%>
					<%
					if(bean.getStorage3() != null) {%>
						<%=bean.getStorage3() %>
					<%}%>
					<%
					if(bean.getStorage4() != null) {%>
						<%=bean.getStorage4() %>
					<%}%>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="footer"> 
	<p id="copy">&copy;2010 Copyright HobbyCentral.com</p>
</div>
</body>
</html>
