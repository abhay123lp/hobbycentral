<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://www.google.com/jsapi" type="text/javascript"></script>

<!-- Dynamic Feed Control and Stylesheet -->
<script src="http://www.google.com/uds/solutions/dynamicfeed/gfdynamicfeedcontrol.js"
        type="text/javascript"></script>
<style type="text/css">
  @import url("http://www.google.com/uds/solutions/dynamicfeed/gfdynamicfeedcontrol.css");
</style>

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
  	  ];
    
      var options = {
        stacked : true,
        horizontal : false,
        title : "Feeds"
      };
    
      new GFdynamicFeedControl(feeds, 'googlefeeds', options);
      document.getElementById('googlefeeds').style.width = "240px";
    }
    
    google.setOnLoadCallback(OnLoad);
</script>
</head>
<body>
<div id="googlefeeds">
   	<span style="color:#676767;font-size:11px;margin:10px;padding:4px;">Loading Feeds...</span>
</div>
</body>
</html>