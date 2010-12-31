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
<link href="/HobbyCentral/css/default.css" rel="stylesheet" type="text/css" />
<link href="/HobbyCentral/css/tabs.css" rel="stylesheet" type="text/css" />

<script src="http://www.google.com/jsapi" type="text/javascript"></script>

<!-- Dynamic Feed Control and Stylesheet -->
<script src="http://www.google.com/uds/solutions/dynamicfeed/gfdynamicfeedcontrol.js"
        type="text/javascript"></script>
<style type="text/css">
  @import url("http://www.google.com/uds/solutions/dynamicfeed/gfdynamicfeedcontrol.css");
</style>
<script type="text/javascript" >
function validate() {
	var qry = document.getElementById("searchBox").value;
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
<script type="text/javascript" src="scripts/prototype.lite.js"></script>
<script type="text/javascript" src="scripts/moo.fx.js"></script>
<script type="text/javascript" src="scripts/moo.fx.pack.js"></script>
<script type="text/javascript">
function init(){
	var stretchers = document.getElementsByClassName('box');
	var toggles = document.getElementsByClassName('tab');
	var myAccordion = new fx.Accordion(
		toggles, stretchers, {opacity: false, height: true, duration: 600}
	);
	//hash functions
	var found = false;
	toggles.each(function(h3, i){
		var div = Element.find(h3, 'nextSibling');
			if (window.location.href.indexOf(h3.title) > 0) {
				myAccordion.showThisHideOpen(div);
				found = true;
			}
		});
		if (!found) myAccordion.showThisHideOpen(stretchers[0]);
}
</script>
<script type="text/javascript">
    google.load('feeds', '1');
    
    function OnLoad() {
  	  var feeds = [
		  {
			  title: 'Not So Boring Life',
			  url: 'http://feeds.feedburner.com/Notsoboringlife?format=xml'
		  },
		  {
			  title: 'Hobby Thing',
			  url: 'http://feeds.feedburner.com/HobbyThing?format=xml'
		  },

		  {
			  title: 'Home-Hobby',
			  url: 'http://www.downloadfilesfree.com/RSS/Windows/Games-Entertainment/Sports.xml'	
		  },
		  
		  {
              title: 'Home-Hobby',
			  url: 'http://www.downloadfilesfree.com/RSS/Windows/Games-Entertainment/Casino-Gambling.xml'
		  },
		  
		  {
			  title: 'Home-Hobby',
			  url: 'http://www.downloadfilesfree.com/RSS/Windows/Games-Entertainment/Board.xml'	  
		  }	   	  
  	  ];
    
      var options = {
        stacked : true,
        horizontal : false,
        title : "Feeds"
      };
    
      new GFdynamicFeedControl(feeds, 'googlefeeds', options);
      document.getElementById('googlefeeds').style.width = "250px";
    }
    
    google.setOnLoadCallback(OnLoad);
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
			<li class="active"><a href="/HobbyCentral/wiki.jsp" accesskey="5" title="">Wiki</a></li>
		</ul>
	</div>
</div>
<div id="googlefeeds">
    <span style="color:#676767;font-size:11px;margin:10px;padding:4px;">Loading...</span>
</div>
<div id="content">
	<div id="postsmain">
		<div class="post">
			<a href="/HobbyCentral/info.jsp">Info Center</a> |
		</div>
		<div class="post">
			<div class="story">
				
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	Element.cleanWhitespace('content');
	init();
</script>
<div id="footer"> 
	<p id="copy">&copy;2010 Copyright HobbyCentral.com</p>
</div>
</body>
</html>
