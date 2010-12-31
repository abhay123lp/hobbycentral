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
<title>Calligraphy | HobbyCentral.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/HobbyCentral/css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>
<jsp:include page="/addthis.jsp" />
<div id="header">
	<jsp:include page="/logo.jsp" />
	<jsp:include page="/menu.jsp" />
</div>

<div id="leftbar">
	<jsp:include page="/categorypick.jsp" />
	<jsp:include page="/sitesearch.jsp" />
	<jsp:include page="/feeds.jsp" />	
</div>

<div id="rightbar">
	<jsp:include page="/ads.jsp" />
	<jsp:include page="/slideshow.jsp" />
</div>

<div id="content">
	<div id="postsmain">
		<div class="post">
			<a href="/HobbyCentral/info.jsp">Info Center</a> | 
			<a href="thearts.jsp"> The Arts</a> | Calligraphy
		</div>
		<div class="post">
			<h2>Calligraphy</h2>
			<div class="story">
				<p>Calligraphy is a type of visual art. It is often called the art of 
				fancy lettering (Mediavilla 1996: 17). A contemporary definition of calligraphic practice is "the art of giving form to signs 
				in an expressive, harmonious and skillful manner" (Mediavilla 1996: 18). The story of writing is one of aesthetic evolution 
				framed within the technical skills, transmission speed(s) and materials limitations of a person, time and place (Diringer 
				1968: 441). A style of writing is described as a script, hand or alphabet (Fraser and Kwiatkowski 2006; Johnston 1909: Plate 
				6).</p>

				<p>Modern calligraphy ranges from functional hand-lettered inscriptions and designs to fine-art pieces where the abstract 
				expression of the handwritten mark may or may not compromise the legibility of the letters (Mediavilla 1996). Classical 
				calligraphy differs from typography and non-classical hand-lettering, though a calligrapher may create all of these; 
				characters are historically disciplined yet fluid and spontaneous, improvised at the moment of writing (Pott 2006 and 
				2005; Zapf 2007 and 2006).</p>

				<p>Calligraphy continues to flourish in the forms of wedding and event invitations, font design/typography, original 
				hand-lettered logo design, religious art, announcements/graphic design/commissioned calligraphic art, cut stone inscriptions 
				and memorial documents. It is also used for props and moving images for film and television, testimonials, birth and death 
				certificates, maps, and other works involving writing (see for example Letter Arts Review; Propfe 2005; Geddes and Dion 
				2004).</p>
				
				<p>Good Luck and Have Fun!!!</p>
				
				<span><a href="/HobbyCentral/DisplayMoreInfo?category=The+Arts&hobby=Calligraphy">More...</a></span>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="blogs">
				<h2>Blogs for Calligraphy</h2><br></br>
				<input type="hidden" id="blogQuery" name="blogqry" value="calligraphy" />
				<jsp:include page="/blogger.jsp"></jsp:include>
			</div>
			<hr />
			<div class="wiki">
			<iframe id="wiki" src="http://en.wikipedia.org/wiki/Calligraphy" height="600" width="700" 
			frameborder="0" scrolling="auto" ></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
