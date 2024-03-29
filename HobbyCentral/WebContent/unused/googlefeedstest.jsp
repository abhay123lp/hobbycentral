<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
  copyright (c) 2009 Google inc.

  You are free to copy and use this sample.
  License can be found here: http://code.google.com/apis/ajaxsearch/faq/#license
-->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Dynamic Feed Control</title>
    <script src="http://www.google.com/jsapi" type="text/javascript"></script>

    <!-- Dynamic Feed Control and Stylesheet -->
    <script src="http://www.google.com/uds/solutions/dynamicfeed/gfdynamicfeedcontrol.js"
            type="text/javascript"></script>
    <style type="text/css">
      @import url("http://www.google.com/uds/solutions/dynamicfeed/gfdynamicfeedcontrol.css");
    </style>

    <script type="text/javascript">
    /*
    *  How to use the Dynamic Feed Control, which has pretty UI already made for you!
    *  Don't forget to check out the options:
    *  http://www.google.com/uds/solutions/dynamicfeed/reference.html
    */
    
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
  	  ];
    
      var options = {
        stacked : true,
        horizontal : false,
        title : "Hollywood News"
      };
    
      new GFdynamicFeedControl(feeds, 'content', options);
      document.getElementById('content').style.width = "250px";
    }
    
    google.setOnLoadCallback(OnLoad);
    </script>
  </head>
  <body style="font-family: Arial, sans-serif;border: 0 none;">
  <div id="googlefeeds">
    <span style="color:#676767;font-size:11px;margin:10px;padding:4px;">Loading...</span>
  </div>
  </body>
</html>