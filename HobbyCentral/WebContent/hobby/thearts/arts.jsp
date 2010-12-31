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
<title>The Arts | HobbyCentral.com</title>
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
			<a href="/HobbyCentral/info.jsp">Info Center</a> | The Arts
		</div>
		<div class="post">
			<h2>The Arts</h2>
			<div class="story">
				<img src="/HobbyCentral/images/hobbies/thearts.jpg" alt="Image not avaialble" style="float:right; height:200px; width:300px;" />
				<p>The arts is a broad subdivision of culture, composed of many creative endeavors and disciplines. It is a broader term 
				than "art," which as a description of a field usually means only the visual arts. The arts encompasses visual arts - 
				photography, architecture, painting, drawing, literature and the performing arts - music, drama, dance and film, among others. 
				This list is by no means comprehensive, but only meant to introduce the concept of the arts.</p>
				
				<p>A good definition of the arts is given by the Free Dictionary as "imaginative, creative, and nonscientific branches of 
				knowledge considered collectively, esp. as studied academically." The singular term art is defined by the Irish Art 
				Encyclopedia as follows: "Art is created when an artist creates a beautiful object, or produces a stimulating experience 
				that is considered by his audience to have artistic merit." So, one could conclude that art is the process that leads 
				to a product (the artwork or piece of art), which is then examined and analyzed by experts in the field of the arts or 
				simply enjoyed by those who appreciate the arts.</p>
				
				<p>The same source states:</p>

				<p style="padding-left: 20px;" ><i>Art is a global activity which encompasses a host of disciplines, as evidenced by the 
				range of words and phrases which have been invented to describe its various forms. Examples of such phraseology include: 
				Fine Arts, Liberal Arts, Visual Arts, Decorative Arts, Applied Arts, Design, Crafts, Performing Arts, and so on.</i></p>
				
				<p>Get started today! </p>
				<hr />
			</div>
		</div>
		<div class="post">
			<div class="story">
				<table width="100%" cellpadding="10" style="text-align: center; border-bottom: 1px solid #B8B8B8">
					<tr>
						<td><img src="/HobbyCentral/images/hobbies/photography.jpg" alt="Image" /><br />
						<a href="photography.jsp">Photography</a></td>
						<td><img src="/HobbyCentral/images/hobbies/filmmaking.jpg" alt="Image" /><br />
						<a href="filmmaking.jsp">Film Making</a></td>
						<td><img src="/HobbyCentral/images/hobbies/calligraphy.jpg" alt="Image" /><br />
						<a href="calligraphy.jsp">Calligraphy</a></td>
						<td><img src="/HobbyCentral/images/hobbies/painting.jpg" alt="Image" /><br />
						<a href="painting.jsp">Painting/Drawing</a></td>
					</tr>
<!--					<tr>-->
<!--						<td><img src="/HobbyCentral/images/hobbies/pottery.jpg" alt="Image" /><br />-->
<!--						<a href="pottery.jsp">Pottery</a></td>-->
<!--						<td><img src="/HobbyCentral/images/hobbies/candlemaking.jpg" alt="Image" /><br />-->
<!--						<a href="candlemaking.jsp">Candle Making</a></td>-->
<!--						<td><img src="/HobbyCentral/images/hobbies/jewelrymaking.jpg" alt="Image" /><br />-->
<!--						<a href="jewelrymaking.jsp">Jewelry Making</a></td>-->
<!--						<td><img src="/HobbyCentral/images/hobbies/gardening.jpg" alt="Image" /><br />-->
<!--						<a href="gardening.jsp">Gardening</a></td>-->
<!--					</tr>-->
				</table>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
