<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Name: HobbyCentral.com
Author: Vineet Potdar | Niketa Hira
Date: 03-22-2010
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Recommend a Hobby | HobbyCentral.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/HobbyCentral/css/style.css" rel="stylesheet" type="text/css" />
<script>
window.dhx_globalImgPath = "codebase/imgs/";
</script>
<script src="scripts/validateRecoForm.js" type="text/javascript"></script>
<script  src="codebase/dhtmlxcommon.js"></script>
<script  src="codebase/dhtmlxslider.js"></script>
<script  src="codebase/ext/dhtmlxslider_start.js"></script>
<link rel="stylesheet" type="text/css" href="codebase/dhtmlxslider.css"></link>
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
	<jsp:include page="/facebooklike.jsp" />
	<jsp:include page="feeds.jsp" />
</div>

<div id="rightbar">
	<jsp:include page="/facebook.jsp" />
</div>

<div id="content">
	<div id="postsmain">
		<div class="post">
			<h2>Find me a Hobby</h2>
			<div class="story">
				<p>Want to pursue a hobby but don't know where to start? Select your preferences below
				 , we'll find a hobby for you</p>
			</div>
			<div class="story">
				<form id="form1" name="form1" method="get" action="/HobbyCentral/JaccardServlet" onSubmit="return validateRecoForm(form1)">
					<label for="location">1. Are you an outdoor person? Do you enjoy different kinds of weather, getting 
					close to nature? Or are you more of an indoor person? Do you enjoy doing creative things within the 
					confines of your home? Select the option that best reflects you! </label> <br /><br />
					<input type="radio" name="location" value="Indoor" checked="checked"><span style="color: #FF5500">I am an indoor person</span></input>
					<input type="radio" name="location" value="Outdoor"><span style="color: #FF5500">Take me outdoors to enjoy the world</span></input>
					<br/><br />
					
					<label for="activity_type">2. Do you enjoy solitary activities--getting away from all the noise and stress? Or do you relax better when 
					you are socializing in a group? The answer is different for different people... Select the option that best reflects you!!!</label>
					<br /><br />
					<input type="radio" name="activity_type" value="Individual" checked="checked"><span style="color: #FF5500">I like to work alone</span></input>
					<input type="radio" name="activity_type" value="Group"><span style="color: #FF5500">I want to socialize</span></input>
					<input type="radio" name="activity_type" value="Both"><span style="color: #FF5500">I don't mind either</span></input>
					<br/><br />
					
					<label for="physical_strain">3. Exercise or physical activity is relaxing--but not so, if you absolutely HATE exercise! If you love physical 
					exercise, consider a more active hobby. If you can hardly wait to get home to rest, consider choosing a hobby that is quieter. Select 
					the option that best reflects your interest!!!</label>
					<br /><br />
					<input type="hidden" id="physical_strain" name="physical_strain"></input>
					<script>
						var slider1 = new dhtmlxSlider(null, 400, null, null, 0, 11, 0, 1);
						slider1.linkTo('physical_strain');
						slider1.init();
					</script>
					<span style="color: #FF5500">Very Low</span><span style="margin-left: 320px;color: #FF5500"> Very High</span>
					<br /><br />
					
					<label for="cost">4. How much are you willing to invest to pursue a new hobby? Select a level that is appropriate for you!!!</label>
					<br /><br />
					<input type="hidden" id="cost" name="cost"></input>
					<script>
						var slider2 = new dhtmlxSlider(null, 400, null, null, 0, 11, 0, 1);
						slider2.linkTo('cost');
						slider2.init();
					</script>
					<span style="color: #FF5500">Very Low</span><span style="margin-left: 320px;color: #FF5500"> Very High</span>
					<br /><br />
					
					<label for="popularity">5. Are you willing to trod down the unbeaten path and pursue a hobby not many have tried before? Or 
					would you rather choose something that has been tried and tested by numerous other people. Please select your preference!!!</label>
					<br /><br />
					<input type="hidden" id="popularity" name="popularity"></input>
					<script>
						var slider3 = new dhtmlxSlider(null, 400, null, null, 0, 11, 0, 1);
						slider3.linkTo('popularity');
						slider3.init();
					</script>
					<span style="color: #FF5500">Very Low</span><span style="margin-left: 320px;color: #FF5500"> Very High</span>
					<br /><br />
					
					<label for="extra_equipment">6. Are you willing to purchase some additional equipment that may be needed to pursue a particular hobby? 
					Please select yes or not to reflect your intention!!!</label>
					<br /><br />
					<input type="radio" name="extra_equipment" value="1"><span style="color: #FF5500">Yes, I am willing to purchase</span></input>
					<input type="radio" name="extra_equipment" value="0" checked="checked"><span style="color: #FF5500">No, thanks.</span></input>
					<br /><br />
					<input type="submit" id="submit" name="submit" value="Find me a hobby"></input>
				</form>
			</div>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
