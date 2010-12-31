<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
			<li><a href="/HobbyCentral/photos.jsp" accesskey="3" title="">Photos</a></li>
			<li><a href="/HobbyCentral/videos.jsp" accesskey="4" title="">Videos</a></li>
			<li><a href="/HobbyCentral/wiki.jsp" accesskey="5" title="">Wiki</a></li>
		</ul>
	</div>
</div>

<div id="content">
	<div id="postsmain">
		<div class="post">
			<h2>Welcome to HobbyCentral.com</h2>
			<div class="story">
				<p>Intro Text Here</p>
			</div>
		</div>
		<div class="post">
			<h2 class="title">Title Text Here</h2>
			<div class="story">
			</div>
		</div>
	</div>
</div>
<div id="footer"> 
	<p id="copy">&copy;2010 Copyright HobbyCentral.com</p>
</div>
</body>
</html>
