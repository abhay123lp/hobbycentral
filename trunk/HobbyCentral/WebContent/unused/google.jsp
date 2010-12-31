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
<script type="text/javascript" src="/HobbyCentral/scripts/slideshow.js"></script>
<link href="/HobbyCentral/css/default.css" rel="stylesheet" type="text/css" />
    <script src="http://www.google.com/jsapi?key=ABQIAAAA1XbMiDxx_BTCY2_FkPh06RRaGTYH6UMl8mADNa0YKuWNNa8VNxQEerTAUcfkyrr6OwBovxn7TDAH5Q"></script>
    <script type="text/javascript">
    /*
    *  How to draw results in tabbed mode.
    */
    
    google.load('search', '1');
    
    function OnLoad() {
    
      // create a tabbed mode search control
      var tabbed = new google.search.SearchControl();
    
      // create our searchers.  There will now be 3 tabs.
    
      tabbed.addSearcher(new google.search.WebSearch());
      tabbed.addSearcher(new google.search.ImageSearch());
      tabbed.addSearcher(new google.search.BlogSearch());
      tabbed.addSearcher(new google.search.NewsSearch());
    
      // draw in tabbed layout mode
      var drawOptions = new google.search.DrawOptions();
      drawOptions.setDrawMode(google.search.SearchControl.DRAW_MODE_TABBED);
    
      // Draw the tabbed view in the content div
      tabbed.draw(document.getElementById("googlesearch"), drawOptions);
    
      // Search!
      tabbed.execute(document.getElementById("googlesearch").value);
    }
    google.setOnLoadCallback(OnLoad);
    </script>
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
    <script src="http://www.google.com/jsapi?key=ABQIAAAA1XbMiDxx_BTCY2_FkPh06RRaGTYH6UMl8mADNa0YKuWNNa8VNxQEerTAUcfkyrr6OwBovxn7TDAH5Q"></script>
    <script type="text/javascript">
    /*
     * This sample shows how to create a Custom Search Control.  By default, it
     * will allow you to add a search box to your page that searches your site.
     * Optionally, you can give it a CSE ID (http://www.google.com/coop/cse/) to
     * have it search sites you specify
    */
    
    google.load('search', '1');
    
    function OnLoad() {
      // Create a custom search control that uses a CSE restricted to code.google.com
      var customSearchControl = new google.search.CustomSearchControl();
    
      // Draw the control in content div
      customSearchControl.draw('customsearch');
      
      // run a query
      customSearchControl.execute(document.getElementById("customsearch"));
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
<div id="slideshow" style="position: absolute; top: 500px; right: 20px;">
<script type="text/javascript"> 
<!--
sts_bs("jwscroller2dbd",[20080623,"","","/HobbyCentral/images/slideshow_images/blank.gif",0,1,1,5,"200px","left",0,2,200,300,0,230,0,1,200,3000,3,24,1,"stEffect(\"scroll(Rate=24,enabled=0,Duration=0.50)\")",-2,60],["none",1,"#454545","#FFFFFF","","repeat"]);
sts_sca(["center","middle","center","middle"],["/HobbyCentral/images/slideshow_images/arrowu_out.gif","/HobbyCentral/images/slideshow_images/arrowu_over.gif","/HobbyCentral/images/slideshow_images/arrowu_gray.gif",13,19,"/HobbyCentral/images/slideshow_images/arrowd_out.gif","/HobbyCentral/images/slideshow_images/arrowd_over.gif","/HobbyCentral/images/slideshow_images/arrowd_gray.gif",13,19]);
sts_tbd([1],["solid",1,"#454545",5,"/HobbyCentral/images/slideshow_images/round_tl.gif","/HobbyCentral/images/slideshow_images/round_tr.gif","/HobbyCentral/images/slideshow_images/round_br.gif","/HobbyCentral/images/slideshow_images/round_bl.gif","transparent","/HobbyCentral/images/slideshow_images/round_t.gif","repeat","transparent","/HobbyCentral/images/slideshow_images/round_r.gif","repeat","transparent","/HobbyCentral/images/slideshow_images/round_b.gif","repeat","transparent","/HobbyCentral/images/slideshow_images/round_l.gif","repeat"]);
sts_ai("i0",[0,"","","_self","/HobbyCentral/images/slideshow_images/archery.gif",196,202,"center"],["transparent","9pt Verdana,Arial","#000000","none","9pt Verdana,Arial","#000000","none"]);
sts_ai("i1",[,,,,"/HobbyCentral/images/slideshow_images/games.jpg"],[],"i0","i0");
sts_ai("i2",[,,,,"/HobbyCentral/images/slideshow_images/filmaking.jpg"],[],"i0","i0");
sts_ai("i3",[,,,,"/HobbyCentral/images/slideshow_images/comicbooks.jpg"],[],"i0","i0");
sts_ai("i4",[,,,,"/HobbyCentral/images/slideshow_images/games_2.jpg"],[],"i0","i0");
sts_ai("i5",[,,,,"/HobbyCentral/images/slideshow_images/spiritual.jpg"],[],"i0","i0");
sts_ai("i6",[,,,,"/HobbyCentral/images/slideshow_images/salsa.gif"],[],"i0","i0");
sts_ai("i7",[,,,,"/HobbyCentral/images/slideshow_images/birdwatching.jpg"],[],"i0","i0");
sts_ai("i8",[,,,,"/HobbyCentral/images/slideshow_images/beerbrewing.jpg"],[],"i0","i0");
sts_ai("i9",[,,,,"/HobbyCentral/images/slideshow_images/autoracing.jpg"],[],"i0","i0");
sts_es();
//-->
</script>
</div>
<div id="content">
	<div id="postsmain">
		<div class="postGallery">
<!--			<h2>Search results courtesy Wikipedia.org</h2>-->
<!--			<div class="storyGallery">-->
<!--				<p>Search for wikis of your choice</p>-->
<!--				<form id="form1" method="get" action="/HobbyCentral/SearchWikipedia" onSubmit="return validate();" >-->
<!--					<input type="text" name="query" id="searchBox" />-->
<!--					<input type="submit" name="submit" id="submit" value="Search on Wikipedia.org" />-->
<!--				</form>-->
<!--				-->
<!--			</div>-->
		</div>
		<div class="postGallery">
			<div class="story">
				<div id="googlesearch">Loading...</div>
				<div id="customsearch">Loading...</div>
			</div>
		</div>
	</div>
</div>
<div id="footer"> 
	<p id="copy">&copy;2010 Copyright HobbyCentral.com</p>
</div>
</body>
</html>
