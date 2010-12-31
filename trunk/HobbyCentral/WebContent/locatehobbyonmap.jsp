<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="com.hobbycentral.java.UserZip" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search on Google Maps | HobbyCentral.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<%
UserZip u = new UserZip(request.getRemoteAddr());

String zip = u.getZipcode();
%>
<style type="text/css">
 
    td {
      vertical-align : top;
    }
 
    td.search-form {
      width : 300px;
    }
 
    #results .header {
      font-size : 16px;
      font-weight : bold;
      margin-bottom : .25em;
      margin-top : 1em;
    }
 
    #results .gs-result {
      margin-bottom : .5em;
    }
 
    #results div.gs-watermark {
      display : none;
    }
 
    #results div.gs-directions {
      display : none;
    }
 
    #results div.gs-directions-to-from {
      display : block;
    }
 
    div.static-map {
      float : left;
      margin-right : 1em;
    }
 
    a.static-map img {
      border : 1px solid #7777cc;
    }
 
    .breaker {
      clear : both;
      margin-bottom : 2em;
    }
 
    .results-td {
      width : 300px
    }
    .maps-td {
      width : 300px
    }
 
    #resultsImg {
      border : 1px solid #f7f7f7;
      margin-bottom : 2em;
    }
    </style>
    <!-- Replace with http://www.google.com/jsapi -->
    <script src="http://www.google.com/jsapi" type="text/javascript"></script>
    <script type="text/javascript"><!--
    
    google.load('search', '1');
    function OnLoad() {
      var sc = new RawSearchControl();
    }
    
    function RawSearchControl() {
      this.searcherFormDiv = document.getElementById("searcher");
      this.results = document.getElementById("results");
      this.searchFormDiv = document.getElementById("searchform");
      this.searcher = new google.search.LocalSearch();
      this.searcher.setCenterPoint("<%=zip%>");
      this.searcher.execute("<%=request.getParameter("query")%>");
      this.searcher.setSearchCompleteCallback(this, RawSearchControl.prototype.searchComplete, [this.searcher]);
    
      // now, create a search form and wire up a submit and clear handler
      this.searchForm = new google.search.SearchForm(true, this.searchFormDiv);
      this.searchForm.setOnSubmitCallback(this, RawSearchControl.prototype.onSubmit);
      this.searchForm.setOnClearCallback(this, RawSearchControl.prototype.onClear);
    
    // demonstrate computeStaticMapUrl with simple point array
      this.worldPointsUrl = GlocalSearch.computeStaticMapUrl(worldPoints, 350, 400);
      document.getElementById("resultsImg").src = this.worldPointsUrl;
    }
    
    /**
     * onSubmit - called when the search form is "submitted" meaning that
     * someone pressed the search button or hit enter. The form is passed
     * as an argument
     */

    RawSearchControl.prototype.onSubmit = function(form) {
      if (form.input.value) {
        this.searcher.execute(form.input.value);
      }
    
      // always indicate that we handled the submit event
      return false;
    }
    
    
    /**
     * onClear - called when someone clicks on the clear button (the little x)
     */
    
    RawSearchControl.prototype.onClear = function(form) {
      this.clearResults();
      document.getElementById("resultsImg").src = this.worldPointsUrl;
      form.input.value = "";
    }
    
    
    RawSearchControl.prototype.execute = function(q) {
      this.searchForm.input.value = q;
      this.searcher.execute(q);
    }
    
    
    /**
     * searchComplete - called when a search completed.
     */
    
    RawSearchControl.prototype.searchComplete = function(searcher) {
      // always clear old from the page
      this.clearResults();
    
      // if the searcher has results then process them
      if (searcher.results && searcher.results.length > 0) {
    
        // now manually generate the html that we disabled
        // initially and display it
        for (var i=0; i<searcher.results.length; i++) {
          var result = searcher.results[i];
          div = result.html.cloneNode(true);
    
          // create a static map image for this result
          var img = document.createElement("img");
          GlocalSearch.resizeStaticMapUrl(result, 80, 80);
          img.src = result.staticMapUrl;
          img.title = result.titleNoFormatting;
    
          // now hyperlink the image
          // and then insert it into a float-left div
    
          var a = document.createElement("a");
          a.className = "static-map";
          a.href = result.url;
          a.appendChild(img);
    
          var fdiv = createDiv(null,"static-map");
          fdiv.appendChild(a);
          this.results.appendChild(fdiv);
          this.results.appendChild(div);
    
          var breaker = createDiv(null,"breaker");
          this.results.appendChild(breaker);
        }
    
    
        // create an image url for all the results
        var imageUrl = GlocalSearch.computeStaticMapUrl(searcher.results, 350, 400);
        document.getElementById("resultsImg").src = imageUrl;
      }
    }
    
    
    /**
     * clearResults - clear out any old search results
     */
    
    RawSearchControl.prototype.clearResults = function() {
      removeChildren(this.results);
    }
    
    /**
     * Static DOM Helper Functions
     */
    
    function removeChildren(parent) {
      while (parent.firstChild) {
        parent.removeChild(parent.firstChild);
      }
    }
    
    function createDiv(opt_text, opt_className) {
      var el = document.createElement("div");
      if (opt_text) {
        el.innerHTML = opt_text;
      }
      if (opt_className) { el.className = opt_className; }
      return el;
    }
    
  //var worldPoints = [
    //{ lat : 48.8565, lng : 2.3509 },      // paris
    //{ lat : 52.5238, lng : 13.4119},      // berlin
    //{ lat : 52.3738, lng : 4.8909},       // amsterdam
    //{ lat : 55.676294, lng : 12.568115},  // copenhagen
    //{ lat : 60.160791, lng : 24.952548},  // helsinki
    //{ lat : 59.332725, lng : 18.064454},  // stockholm
    //{ lat : 59.913820, lng : 10.738741}   // oslo
  //];

    
    // register to be called at OnLoad when the page loads
    google.setOnLoadCallback(OnLoad, true);
    
    </script>  
</head>
<body>
<div id="maps" align="center">
	<form id="searcher">
		<table>
			<tr>
				<td class="search-form">
<!--						<div id="searchform">-->
<!--							Loading...<br />-->
<!--							If are still seeing this message after 10 seconds, it means your browser does not support scripts. Please use Mozilla Firefox or Microsoft Internet Explorer-->
<!--						</div>-->
				</td>
			</tr>
		</table>
	</form>
	<table>
		<tr>
			<td class="results-td">
				<div id="results"></div>
			</td>
			<td class="maps-td"><img id="resultsImg"></img></td>
		</tr>
	</table>
</div>
</body>
</html>