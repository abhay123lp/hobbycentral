<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.hobbycentral.java.AutoComplete" %>
<%@ page import="java.io.*"%>
<%@ page import="java.net.*"%>
<%@ page import="org.jdom.*"%>
<%@ page import="org.jdom.input.*"%>
<%@ page import="org.jdom.xpath.XPath"%>
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
<script type="text/javascript" src="scripts/validate.js" ></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" 	href="/HobbyCentral/css/jquery-ui-1.8.custom.css" type="text/css" ></link>
</head>
<body>
<%
String[] hobbies = {"photography", "painting", "drawing", "film making", "golf", "hiking", "fencing", "camping", "bar tending", "beer brewing", "coffee roasting", "wine tasting", "coin collecting", "comic classics", "sports collectibles", "music collectibles", "billiards", "foosball", "poker", "table tennis"};
			
Random r = new Random();
int n = r.nextInt(20);
if (n != 0 )
	n-= 1;

String query = URLEncoder.encode(hobbies[n], "UTF-8");
// 	Construct URL query to send to youtube
String urlString = "http://gdata.youtube.com/feeds/api/videos?q=" + query;

// Establish connection with Youtube server
URL url = new URL(urlString);
URLConnection con = url.openConnection();
con.connect();

//Reading the response from Youtube
BufferedReader webReader = new BufferedReader(new InputStreamReader(con.getInputStream()));

String line = "", text = "";
while ((line = webReader.readLine()) != null)
	text += line;

SAXBuilder builder = new SAXBuilder();
Document d = builder.build(new StringReader(text));

Namespace ns_com = Namespace.getNamespace("def","http://www.w3.org/2005/Atom");

XPath xp = XPath.newInstance("/def:feed/def:entry");
xp.addNamespace(ns_com);

List elems = xp.selectNodes(d);
%>
<script type="text/javascript">
	$(function() {
		var availableTags = [<%=AutoComplete.getHobbykeywords()%>];
		$("#qry").autocomplete({
			source: availableTags
		});
	});
</script>
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
</div>

<div id="content">
	<div id="postsmain">
		<div class="postGallery">
			<h2>Search for videos of your choice...</h2>
			<div class="storyGallery">
				<form id="form1" method="get" action="/HobbyCentral/SearchYoutubeVideos" onSubmit="return validateForm();" >
					<input type="text" name="query" id="qry" />
					<input type="submit" name="submit" id="submit" value="Search on Youtube.com" />
				</form>
				<br />
				<hr />
			</div>
			<div class="storyGallery">
				<h2>... or see vidoes that others might be watching...</h2><br />
				<table width="100%" style="text-align:center;">
					<%
					int counter = 1;
				
					xp.addNamespace(ns_com);
					for (int i = 0; i < 6; i++) {
						xp = XPath.newInstance("def:id");
						xp.addNamespace(ns_com);
						Element id = (Element) xp.selectSingleNode((Element) elems.get(i));
						String idString = id.getText().replaceAll(".*/", "");
						String videoUrl = "http://www.youtube.com/v/" + idString;
						String imgUrl = "http://img.youtube.com/vi/" + idString + "/2.jpg";
					%>
					<%if (counter == 1) { %><tr> <%} %>
<!--						<td><a href="<%//=videoUrl %>"><img src="<%//=imgUrl %>" /></a></td>-->
						<td><object width="250" height="250">
								<param name="movie" value="<%=videoUrl %>"></param>
								<param name="allowFullScreen" value="true"></param>
								<param name="allowscriptaccess" value="always"></param>
								<embed src="<%=videoUrl %>" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="250" height="250"></embed>
							</object>
						</td>
					<%if (counter == 2) { %></tr> <%} %>
					<%
						if (counter == 2)
							counter = 1;
						else
							counter++;
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
