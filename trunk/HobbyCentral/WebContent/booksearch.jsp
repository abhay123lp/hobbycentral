<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- ++Begin Book Bar Wizard Generated Code++ -->
  <!--
  // Created with a Google AJAX Search Wizard
  // http://code.google.com/apis/ajaxsearch/wizards.html
  -->

  <!--
  // The Following div element will end up holding the actual bookbar.
  // You can place this anywhere on your page.
  -->


  <!-- Ajax Search Api and Stylesheet
  // Note: If you are already using the AJAX Search API, then do not include it
  //       or its stylesheet again
  //
  // The Key Embedded in the following script tag is designed to work with
  // the following site:
  // http://128.196.27.137/HobbyCentral/
  -->
  <script src="http://www.google.com/uds/api?file=uds.js&v=1.0&source=uds-bbw&key=ABQIAAAA-ew1kHXLNLboFYk-H3dUIBSE_wROv8Vo8dGBF6hhuiNk_yqHtBQq5u6DlFhGTNHBJZJzono8vQFDGg"
    type="text/javascript"></script>
  <style type="text/css">
    @import url("http://www.google.com/uds/css/gsearch.css");
  </style>

  <!-- Video Bar Code and Stylesheet -->
  <script type="text/javascript">
    window._uds_bbw_donotrepair = true;
  </script>
  <script src="http://www.google.com/uds/solutions/bookbar/gsbookbar.js?mode=new"
    type="text/javascript"></script>
  <style type="text/css">
    @import url("http://www.google.com/uds/solutions/bookbar/gsbookbar.css");
  </style>

  <script type="text/javascript">
    function LoadBookBar() {

    var bookBar;
    var options = {
        largeResultSet : !false,
        horizontal : false,
        autoExecuteList : {
          cycleTime : GSbookBar.CYCLE_TIME_MEDIUM,
          cycleMode : GSbookBar.CYCLE_MODE_RANDOM,
          executeList : ["coin collecting"]
        }
      }

    bookBar = new GSbookBar(document.getElementById("bookBar-bar"),
                              options);
    }
    // arrange for this function to be called during body.onload
    // event processing
    GSearch.setOnLoadCallback(LoadBookBar);
  </script>
<!-- ++End Book Bar Wizard Generated Code++ -->
</head>
<body>
  <div id="bookBar-bar">
    <span style="color:#676767;font-size:11px;margin:10px;padding:4px;">Loading...</span>
  </div>
</body>
</html>