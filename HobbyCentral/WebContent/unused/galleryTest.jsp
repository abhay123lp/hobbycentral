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
<link href="/HobbyCentral/css/default.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/HobbyCentral/scripts/highslide-with-gallery.js"></script>
<link rel="stylesheet" type="text/css" href="/HobbyCentral/css/highslide.css" />
<script type="text/javascript" >
function validate() {
	var qry = document.getElementById("searchBox");
	if (qry == "") {
		alert("Search box cannot be empty");
		return false;
	}
	return true;
}
function MM_jumpMenuGo(objId,targ,restore){ //v9.0
  var selObj = null;  with (document) { 
  if (getElementById) selObj = getElementById(objId);
  if (selObj) eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0; }
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
			<li><a href="/HobbyCentral/info.jsp" accesskey="2" title="">Info Center</a></li>
			<li class="active"><a href="/HobbyCentral/photos.jsp" accesskey="3" title="">Photos</a></li>
			<li><a href="/HobbyCentral/videos.jsp" accesskey="4" title="">Videos</a></li>
			<li><a href="/HobbyCentral/wiki.jsp" accesskey="5" title="">Wiki</a></li>
		</ul>
	</div>
</div>

<div id="content">
	<div id="postsmain">
		<div class="postGallery">
			<h2>Pictures courtesy Flickr.com</h2>
			<!--<div class="meta">
				<p class="date">Posted on February 25, 2007 by John Doe</p>
				<p><span>Filed under </span><a href="#" class="category">Uncategorized</a><span> | </span><a href="#" class="comments">28 Comments</a></p>
			</div>-->
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
<!--			<h2 class="title">Title Text Here</h2>-->
			<div class="story">
			<table width=100% style="text-align: center;" cellpadding="2">
			<%
			/*if(err == null) {
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
					String imgsrc = "http://farm" + farm + ".static.flickr.com/" + server + "/" + id + "_" + secr + ".jpg";		*/		
			%>
			<div class="highslide-gallery">
				<!--
					4) This is how you mark up the thumbnail image with an anchor tag around it.
					The anchor's href attribute defines the URL of the full-size image.
				-->
				<a id="thumb1" href="hobbies/autoracing.jpg" class="highslide" onclick="return hs.expand(this)">
					<img src="hobbies/autoracing.thumb.jpg" alt="Highslide JS"
						title="Click to enlarge" />
				</a>
				
				<!--
					5 (optional). This is how you mark up the caption. The correct class name is important.
				-->
				
				<div class="highslide-caption">
				
					Caption for the first image. This caption can be styled using CSS.
				</div>
			
			
			<!--
				6) Put the subsequent thumbnails in a hidden container. The thumbnailId parameter ensures
				these thumbnails zoom back out to the right thumbnail when closed.
			-->
				<div class="hidden-container">
					<a href="hobbies/antiques.jpg" class="highslide" onclick="return hs.expand(this, { thumbnailId: 'thumb1' })"></a>
					<div class="highslide-caption">
						Caption for the second image.
					</div>
				
					<a href="hobbies/ballet.jpg" class="highslide" onclick="return hs.expand(this, { thumbnailId: 'thumb1' })"></a>
				
					<div class="highslide-caption">
						Caption for the third image.
					</div>
				</div>
			
			</div>
			
				<%//if(counter==1) {%><tr><%//} %><td><a href="<%//=imgsrc%>" target="_blank"><img src=<%//=imgsrc%> /></a></td><%//if(counter == 6) {%></tr><%//} %>
			<%
				/*if(counter == 6)
					counter=1;
				else
					counter++;
				}
			}*/
			%>
				</table>
			</div>
		</div>
	</div>
</div>
<div id="footer"> 
	<p id="copy">&copy;2010 Copyright HobbyCentral.com</p>
	
</div>
</body>
</html>
