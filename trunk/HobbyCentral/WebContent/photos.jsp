<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.*"%>
<%@ page import="org.jdom.*"%>
<%@ page import="org.jdom.input.*"%>
<%@ page import="org.jdom.xpath.XPath"%>
<%@ page import="com.hobbycentral.java.AutoComplete" %>
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
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="scripts/validate.js" ></script>
<script src="scripts/jquery-1.4.2.min.js" type="text/javascript" ></script>
<script src="scripts/jquery-ui-1.8.custom.min.js" type="text/javascript" ></script>
<link rel="stylesheet" 	href="/HobbyCentral/css/jquery-ui-1.8.custom.css" type="text/css" ></link>
</head>
<body>

		<%
			String key = "4f7e6cd5450f333df861b1f617688849";
			String secret = "490b56b5a53efb92";
			String[] hobbies = {"photography", "painting", "drawing", "film making", "golf", "hiking", "fencing", "camping", "bar tending", "beer brewing", "coffee roasting", "wine tasting", "coin collecting", "comic classics", "sports collectibles", "music collectibles", "billiards", "foosball", "poker", "table tennis"};
			
			Random r = new Random();
			int n = r.nextInt(20);
			if (n != 0 )
				n-= 1;
			
			String query = hobbies[n];
		
			//Generate query url 
			String urlString = "http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=" + key + "&safe_search=3&accuracy=6&content_type=1&sort=interestingness-desc&text=" + URLEncoder.encode(query, "UTF-8");

			//Create a connection
			URL url = new URL(urlString);
			URLConnection con = url.openConnection();
			con.connect();
			
			//Read data from API server
			BufferedReader webReader = new BufferedReader(new InputStreamReader(con.getInputStream()));

			String line = "", text = "";
			while ((line = webReader.readLine()) != null)
				text += line;

			//Load data as a XML document
			SAXBuilder builder = new SAXBuilder();
			Document d = builder.build(new StringReader(text));
			
			//Get photo list
			List elems = XPath.selectNodes(d, "rsp/photos/photo");
		%>
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
	<div id="galleryOtherPages">
		<div id="recent-photos">
			<a href="#" id="prev"></a>
			<span id="thumbs">
			<%
				for (int i = 0; i < 6; i++) {
					Element elem = (Element) elems.get(i);
					String id = elem.getAttributeValue("id");
					String farm = elem.getAttributeValue("farm");
					String server = elem.getAttributeValue("server");
					String secr = elem.getAttributeValue("secret");
					String title = elem.getAttributeValue("title");
					
					//Create image URL
					String imgsrc1 = "http://farm" + farm + ".static.flickr.com/" + server + "/" + id + "_" + secr + ".jpg";
			%>
					<a href="<%=imgsrc1%>" target="_blank"><img src=<%=imgsrc1%> alt="" width="93" height="84" /></a>
			<%
				}
			%>	
			</span>
			<a href="#"	id="next"></a>
		</div>
	</div>
	<div id="postsmain">
		<div class="postGallery">
			<br />
			<h2>Search for pictures of your choice</h2><br />
			<div class="storyGallery">
				<form action="/HobbyCentral/SearchFlickrPhotos" method="post" id="form1" onSubmit="return validateForm();">
					<input type="text" id="qry" name="qry" ></input>
					<input type="submit" id="submit" value="Search on Flickr.com" ></input>					
				</form>
			</div>
		</div>
		<hr></hr>
	</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
