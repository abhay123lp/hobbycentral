<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="org.jdom.*"%>
<%@ page import="org.jdom.input.*" %>
<%@ page import="org.jdom.xpath.XPath" %>
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
<script type="text/javascript" src="scripts/validate.js" ></script>
<script type="text/javascript" src="/HobbyCentral/scripts/mootools.js"></script>
<script type="text/javascript" src="/HobbyCentral/scripts/swfobject.js"></script>
<script type="text/javascript" src="/HobbyCentral/scripts/videobox.js"></script>
<link rel="stylesheet" href="/HobbyCentral/css/videobox.css" type="text/css" media="screen" />
<script type="text/javascript" >
function validate() {
	var qry = document.getElementById("siteSearchBox");
	if (qry.value == "") {
		alert("Search box cannot be empty");
		return false;
	}
	return true;
}
</script>
</head>
<body>
<jsp:include page="addthis.jsp" />
<div id="header">
	<jsp:include page="logo.jsp" />
	<jsp:include page="menu.jsp" />
</div>

<div id="leftbar">
	<jsp:include page="categorypick.jsp" />
	<div id="search">
		<form id="formSearch" name="formSearch" method="post" action="/HobbyCentral/Search" onSubmit="return validate();">
			<input type="text" id="siteSearchBox" name="siteSearchBox" />
			<input class="btn" type="submit" id="submit" name="submit" value="Search"/>
		</form>
	</div>
	<jsp:include page="/facebooklike.jsp" />
	<jsp:include page="feeds.jsp" />	
</div>

<div id="rightbar">
</div>

<div id="content">
	<div id="postsmain">
		<div class="postGallery">
			<h2>Videos courtesy &nbsp;<img src="/HobbyCentral/images/youtube.gif" height="30px" width="80px"/></h2>
			<div class="storyGallery">
				<%
				String query = (String) request.getAttribute("query");
				%>
				<p>You searched for : <span>"<%=query %>"</span> </p>
				<%
				String err = (String) request.getAttribute("err");
				if ( err != null ) {%>
					<p><%=err %></p>
				<%} %>
				
				<p>Looking for something else?</p>
				<form id="form1" method="post" action="/HobbyCentral/SearchYoutubeVideos" onSubmit="return validateForm();">
					<input type="text" name="query" id="text1" />
					<input type="submit" name="submit" id="submit" value="Search on Youtube.com" />
				</form>
			</div>
		</div>
		<div class="post">
			<div class="story">
				<table width="100%" style="text-align:center;">
					<%
					int counter = 1;
					if ( err == null) {
						List elems = (List) request.getAttribute("videos");
						XPath xp = XPath.newInstance("/def:feed/def:entry");;
						Namespace ns_com = Namespace.getNamespace("def","http://www.w3.org/2005/Atom");
						xp.addNamespace(ns_com);
						for (int i = 0; i < elems.size(); i++) {
							xp = XPath.newInstance("def:id");
							xp.addNamespace(ns_com);
							Element id = (Element) xp.selectSingleNode((Element) elems.get(i));
							String idString = id.getText().replaceAll(".*/", "");
							String videoUrl = "http://www.youtube.com/v/" + idString;
							String imgUrl = "http://img.youtube.com/vi/" + idString + "/2.jpg";
					%>
					<%if (counter == 1) { %><tr> <%} %>
						<td><a href="<%=videoUrl %>" rel="vidbox"><img src="<%=imgUrl %>" /></a></td>
					<%if (counter == 4) { %></tr> <%} %>
					<%
						if (counter == 4)
							counter = 1;
						else
							counter++;
						}
					}
					%>
				</table>
			</div>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
