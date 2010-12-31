<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#slideShow {
  width : 250px;
  height : 250px;
  padding : 10px;
}
</style>
<script src="http://www.google.com/jsapi" type="text/javascript"></script>
<script src="http://www.google.com/uds/solutions/slideshow/gfslideshow.js" type="text/javascript"></script>
<script type="text/javascript">
  function LoadSlideShow() {
    var feed  = "http://feed.photobucket.com/images/hobbies/feed.rss";
    var options = {displayTime:2000, transistionTime:600, scaleImages:true, fullControlPanel : true, fullControlPanelSmallIcons : true };
    var ss = new GFslideShow(feed, "slideShow", options);
  }
  /**
   * Use google.load() to load the AJAX Feeds API
   * Use google.setOnLoadCallback() to call LoadSlideShow once the page loads
   */
  google.load("feeds", "1");
  google.setOnLoadCallback(LoadSlideShow);
</script>

</head>
<body>
<div id="slideShow">Loading PhotoBucket Slide Show...</div>
</body>
</html>