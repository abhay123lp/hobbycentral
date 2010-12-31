<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="org.jdom.*"%>
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
<script type="text/javascript" src="scripts/prototype.js"></script>
<script type="text/javascript" src="scripts/scriptaculous.js?load=effects,builder"></script>
<script type="text/javascript" src="scripts/lightbox.js"></script>
<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="screen" />
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
<body onload="initLightbox();">
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
	<jsp:include page="/facebooklike.jsp" />
</div>
	<jsp:include page="feeds.jsp" />	
</div>

<div id="rightbar">
</div>

<div id="content">
	<div id="postsmain">
		<div class="postGallery">
<!--			<h2>Pictures courtesy <img src="/HobbyCentral/images/flickr.gif" height="30px" width="80px" /></h2>-->
			<div class="storyGallery">
			<% String sQry = (String) request.getAttribute("searchQuery"); %>
				<p>You searched for: <span>"<%=sQry %>"</span></p>
				<%
				String err = (String) request.getAttribute("error");
				if(err != null ) { %>
					<p><%=err %></p>
				<% } %>
				
				<p>Looking for something else?</p>
				<form name="form1" id="form1" method="post" action="/HobbyCentral/SearchFlickrPhotos">
					<input type="text" id="text1" name="qry" />
					<input type="submit" id="submit" name="submit" value="Search on Flickr.com" />
				</form>
			</div>
		</div>
		<div class="post">
			<div class="story">
			<table width=100% style="text-align: center;" cellpadding="2">
			<%
			if(err == null) {
				List elems = (List) request.getAttribute("pics");
				int counter=1;
				for (int i = 0; i < elems.size(); i++)
				{
					Element elem = (Element) elems.get(i);
					String id = elem.getAttributeValue("id");
					String farm = elem.getAttributeValue("farm");
					String server = elem.getAttributeValue("server");
					String secr = elem.getAttributeValue("secret");
					String title = elem.getAttributeValue("title");
					//Create image URL
					String imgsrc = "http://farm" + farm + ".static.flickr.com/" + server + "/" + id + "_" + secr + ".jpg";				
			%>
				<%if(counter==1) {%><tr><%} %><td><a href="<%=imgsrc%>" rel="lightbox[flickr]"><img src=<%=imgsrc%> /></a></td><%if(counter == 6) {%></tr><%} %>
			<%
				if(counter == 6)
					counter=1;
				else
					counter++;
				}
			}
			%>
				</table>
<!--				<a href="http://www.flickr.com/search/?q=" target="_blank">More photos on Flickr.com</a>-->
			</div>
<!--			<div class="post">-->
<!--				<jsp:include page="ebayWidget.jsp" />-->
<!--				</div>-->
<!--			</div>-->
		</div>
	</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
