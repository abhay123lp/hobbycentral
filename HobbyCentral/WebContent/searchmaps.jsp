<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search on Google Maps | HobbyCentral.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/HobbyCentral/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<jsp:include page="addthis.jsp" />
<div id="header">
	<jsp:include page="logo.jsp" />
	<jsp:include page="menu.jsp" />
</div>
<div id="leftbar">
	<jsp:include page="categorypick.jsp" />
	<jsp:include page="sitesearch.jsp" />
	<jsp:include page="feeds.jsp" />
</div>

<div id="rightbar">
	<jsp:include page="ads.jsp" />
	<jsp:include page="slideshow.jsp" />
</div>
<div id="content">
	<div id="postsmain">
		<div class="postGallery">
			<h2>Search Google Maps</h2>
			<div class="storyGallery">
				<form id="form1" name="form1" method="post" action="/HobbyCentral/GoogleMapsResults">
						<input type="text" id="searchbox" name="searchbox" ></input>
						<input type"text" id="zip" name="zip"></input>
						<input type="submit" id="submit" name="submit" value="Search"></input>
				</form>
			</div>
		</div>
		<div class="post">
				
		</div>
	</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>