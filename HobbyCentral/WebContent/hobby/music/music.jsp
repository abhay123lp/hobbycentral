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
			<a href="/HobbyCentral/info.jsp">Info Center</a> | Music 
		</div>
		<div class="post">
			<h2>Music </h2>
			<div class="story">
				<img src="/HobbyCentral/images/hobbies/musicinstruments.jpg" alt="Image not avaialble" style="float:right; height:200px; width:300px;" />
				<p>A musical instrument is constructed or used for the purpose of making the sounds of music. In principle, anything that 
				produces sound can serve as a musical instrument. The history of musical instruments dates back to the beginnings of human 
				culture. The academic study of musical instruments is called organology.</p>

				<p>The date and origin of the first device of disputed status as a musical instrument dates back as far as 67,000 years old; 
				artifacts commonly accepted to be early flutes date back as far as about 37,000 years old. However, most historians believe 
				determining a specific time of musical instrument invention to be impossible due to the subjectivity of the definition.</p>

				<p>Musical instruments developed independently in many populated regions of the world. However, contact among civilizations 
				resulted in the rapid spread and adaptation of most instruments in places far from their origin. By the Middle Ages, 
				instruments from Mesopotamia could be found in the Malay Archipelago and Europeans were playing instruments from North 
				Africa. Development in the Americas occurred at a slower pace, but cultures of North, Central, and South America shared 
				musical instruments.</p>
			</div>
		</div>
		<div class="post">
			<div class="story">
				<table width="100%" cellpadding="10" style="text-align: center; border-bottom: 1px solid #B8B8B8">
					<tr>
						<td><img src="/HobbyCentral/images/hobbies/guitar.jpg" alt="Image" /><br />
						<a href="guitar.jsp">Guitar</a></td>
						<td><img src="/HobbyCentral/images/hobbies/dj.jpg" alt="Image" /><br />
						<a href="dj.jsp">Disc Jockey</a></td>
						<td><img src="/HobbyCentral/images/hobbies/piano.jpg" alt="Image" /><br />
						<a href="piano.jsp">Piano/Keyboard</a></td>
						<td><img src="/HobbyCentral/images/hobbies/harmonica.jpg" alt="Image" /><br />
						<a href="harmonica.jsp">Harmonica</a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
