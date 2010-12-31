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
<title>Dancing | HobbyCentral.com</title>
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
			<a href="/HobbyCentral/info.jsp">Info Center</a> | Dancing
		</div>
		<div class="post">
			<h2>Dancing</h2>
			<div class="story">
				<img src="/HobbyCentral/images/hobbies/dancing.jpg" alt="Image not avaialble" style="float:right; height:200px; width:300px;" />
				<p>Dance (from French danser, perhaps from Frankish) is an art form that generally refers to movement of the 
				body, usually rhythmic and to music, used as a form of expression, social interaction or presented in a 
				spiritual  or performance setting.</p>
				
				<p>Dance may also be regarded as a form of nonverbal communication between humans, and is also performed by 
				other animals (bee dance, patterns of behaviour such as a mating dance). Gymnastics, figure skating and 
				synchronized swimming are sports that incorporate dance, while martial arts kata are often compared to dances. 
				Motion in inanimate objects may also be described as dances (the leaves danced in the wind), and certain 
				musical forms or genres.</p>
				
				<p>The same source states:</p>

				<p>Dancing has evolved many styles. Breakdancing and Krumping  are related to the hip hop culture. African 
				dance is interpretive. Ballet, Ballroom, Waltz, and Tango are classical styles of dance while Square and the 
				Electric Slide are forms of step dances.</p>
				
				<p>Get started today! </p>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="story">
				<table width="100%" cellpadding="10" style="text-align: center; border-bottom: 1px solid #B8B8B8">
					<tr>
						<td><img src="/HobbyCentral/images/hobbies/ballet.jpg" alt="Image" /><br />
						<a href="ballet.jsp">Ballet</a></td>
						<td><img src="/HobbyCentral/images/hobbies/breakdancing.jpg" alt="Image" /><br />
						<a href="breakdancing.jsp">Break Dancing</a></td>
						<td><img src="/HobbyCentral/images/hobbies/salsa.jpg" alt="Image" /><br />
						<a href="salsa.jsp">Salsa</a></td>
					</tr>
					<tr>
						<td><img src="/HobbyCentral/images/hobbies/swing.jpg" alt="Image" /><br />
						<a href="swing.jsp">Swing Dancing</a></td>
						<td><img src="/HobbyCentral/images/hobbies/tango.jpg" alt="Image" /><br />
						<a href="tango.jsp">Tango</a></td>
						<td><img src="/HobbyCentral/images/hobbies/waltz.jpg" alt="Image" /><br />
						<a href="waltz.jsp">Waltz</a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp" />
</body>
</html>
