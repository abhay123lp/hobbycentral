<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.hobbycentral.java.DataBean" %>
<%@ page import="com.hobbycentral.java.UserZip" %>
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
<link href="/HobbyCentral/css/tabs.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/HobbyCentral/scripts/prototype.lite.js"></script>
<script type="text/javascript" src="/HobbyCentral/scripts/moo.fx.js"></script>
<script type="text/javascript" src="/HobbyCentral/scripts/moo.fx.pack.js"></script>
<script type="text/javascript">
function init(){
	var stretchers = document.getElementsByClassName('box');
	var toggles = document.getElementsByClassName('tab');
	var myAccordion = new fx.Accordion(
		toggles, stretchers, {opacity: false, height: true, duration: 600}
	);
	//hash functions
	var found = false;
	toggles.each(function(h3, i){
		var div = Element.find(h3, 'nextSibling');
			if (window.location.href.indexOf(h3.title) > 0) {
				myAccordion.showThisHideOpen(div);
				found = true;
			}
		});
		if (!found) myAccordion.showThisHideOpen(stretchers[0]);
}
</script>
<script type="text/javascript" >
function validate() {
	var qry = document.getElementById("siteSearchBox");
	if (qry.value == "") {
		alert("Search box cannot be empty");
		return false;
	}
	return true;
}
</script>
<%
UserZip u = new UserZip(request.getRemoteAddr());

String zip = u.getZipcode();
%>
<%
	DataBean bean = (DataBean) request.getAttribute("resultBean");
	String i1 = bean.getIntro1();
	String i2 = bean.getIntro2();
	String intro=null;
	if (i1 != null) {
		if (i2 != null)
			intro = i1.concat(i2.toString());
		else
			intro = i1.toString();
	}
	
	String wh1 = bean.getWhere1();
	String wh2 = bean.getWhere2();
	String where = null;
	if (wh1 != null) {
		if (wh2 != null)
			where = wh1.concat(wh2.toString());
		else
			where = wh1.toString();
	}
	String s1 = bean.getStorage1();
	String s2 = bean.getStorage2();
	String storage = null;
	if (s1 != null) {
		if (s2!=null)
			storage = s1.concat(s2);
		else
			storage = s1.toString();
	}
	String l1 = bean.getLearn1();
	String l2 = bean.getLearn2();
	String learn = null;
	if(l1 != null) {
		if(l2 !=null)
			l1.concat(l2);
		else
			learn = l1.toString();
	}
	String wt1 = bean.getWhat1();
	String wt2 = bean.getWhat2();
	String what = null;
	if(wt1 !=null ) {
		if(wt2 !=null)
			what = wt1.concat(wt2);
		else
			what = wt1;
	}
	String b1 = bean.getBasics1();
	String b2 = bean.getBasics2();
	String basic = null;
	if(b1 != null) {
		if (b2 !=null)
			basic = b1.concat(b2);
		else
			basic = b1;
	}
	String h1 = bean.getHistory1();
	String h2 = bean.getHistory2();
	String history = null;
	if (h1 != null) {
		if (h2 != null)
			history = h1.concat(h2);
		else
			history = h1;
	}
	String t1 = bean.getType1();
	String t2 = bean.getType2();
	String types = null;
	if(t1!=null) {
		if(t2!=null)
			types = t1.concat(t1);
		else
			types = t1;
	}
	String o1 = bean.getOnlineRes1();
	String o2 = bean.getOnlineRes2();
	String online = null;
	if(o1!=null) {
		if(o2!=null)
			online = o1.concat(o2);
		else
			online = o1;
	}
	String p1 = bean.getProcess1();
	String p2 = bean.getProcess2();
	String process = null;
	if(p1 != null) {
		if (p2!=null)
			process = p1.concat(p2);
		else
			process = p1;
	}

	String hobbyname = (String)request.getAttribute("hobbyname");
	String category = (String)request.getAttribute("category");
	String urlcategory = "/HobbyCentral/hobby/" + category.replaceAll(" ","").toLowerCase() + "/" + category.replaceAll(" ","").toLowerCase() + ".jsp";
	String url = "/HobbyCentral/hobby/" + category + "/" + hobbyname.replaceAll(" ", "") + ".jsp";
%>
</head>
<body>
<jsp:include page="/addthis.jsp" />
<div id="header">
	<jsp:include page="/logo.jsp" />
	<jsp:include page="/menu.jsp" />
</div>

<div id="leftbar">
	<jsp:include page="/categorypick.jsp" />
	<div id="search">
		<form id="formSearch" method="post" action="/HobbyCentral/Search" onSubmit="return validate();">
			<input type="text" id="siteSearchBox" name="siteSearchBox" />
			<input class="btn" type="submit" id="submit" name="submit" value="Search"/>
		</form>
	</div>
	<jsp:include page="/facebooklike.jsp" />
	<jsp:include page="/feeds.jsp" />	
	<jsp:include page="/facebook.jsp" />
</div>

<div id="rightbar">
	<jsp:include page="/recolike.jsp">
		<jsp:param value="<%=hobbyname %>" name="hobbyname"/>
	</jsp:include>
	<jsp:include page="/ebayWidget.jsp">
		<jsp:param value="<%=hobbyname %>" name="searchQuery"/>
	</jsp:include>
<!--	<jsp:include page="/ads.jsp" />-->
<!--	<jsp:include page="/slideshow.jsp" />-->
</div>

<div id="content">
	<div id="postsmain">
		<div class="post">
			<a href="/HobbyCentral/info.jsp">Info Center</a> |
			<a href="/HobbyCentral/RedirectToCategory?categoryname=<%=category %>"> <%=category %> </a> |
			<%=hobbyname %></a>
		</div>	
		<div class="post">
			<h2><%=hobbyname %></h2>
			<div class="story">
				<div id="wrapper">
					<div id="content1">
						<%if (i1 != null || i2 != null) { %>
							<h3 class="tab" title="first"><div class="tabtxt"><a href="#">Introduction</a></div></h3>
						<%} %>
						<%if (h1 != null || h2 != null) { %>
							<div class="tab"><h3 class="tabtxt" title="second"><a href="#">History</a></h3></div>
						<%} %>
						<%if (b1 != null || b2 != null) { %>
							<div class="tab"><h3 class="tabtxt" title="third"><a href="#">Basics</a></h3></div>
						<%} %>
						<%if (l1 != null || l2 != null) { %>
							<div class="tab"><h3 class="tabtxt" title="fourth"><a href="#">Learning</a></h3></div>
						<%} %>
						<%if (t1 != null || t2 != null) { %>
							<div class="tab"><h3 class="tabtxt" title="fifth"><a href="#">Types</a></h3></div>
						<%} %>
						<%if (wt1 != null || wt2 != null) { %>
							<div class="tab"><h3 class="tabtxt" title="sixth"><a href="#">What you need</a></h3></div>
						<%} %>
						<%if (wh1 != null || wh2 != null) { %>
							<div class="tab"><h3 class="tabtxt" title="seventh"><a href="#">Where to find</a></h3></div>
						<%} %>
						<%if (s1 != null || s2 != null) { %>
							<div class="tab"><h3 class="tabtxt" title="eighth"><a href="#">Storage</a></h3></div>
						<%} %>
						<%if (p1 != null || p2 != null) { %>
							<div class="tab"><h3 class="tabtxt" title="ninth"><a href="#">Process</a></h3></div>
						<%} %>
						<%if (o1 != null || o2 != null) { %>
							<div class="tab"><h3 class="tabtxt" title="tenth"><a href="#">Online Resources</a></h3></div>
						<%} %>
						<div class="boxholder">
								<%if(intro != null) {%>
									<div class="box">
										<%=intro %>
									</div>
								<%}%>
								<%if(history != null) {%>
									<div class="box">
										<%=history %>
									</div>
								<%}%>
							
								<%if(basic != null) {%>
									<div class="box">
										<%=basic %>
									</div>
								<%}%>
							
								<%if(learn != null) {%>
									<div class="box">
										<%=learn %>
									</div>
								<%}%>
							
								<%if(types != null) {%>
									<div class="box">
										<%=types %>
									</div>
								<%}%>
							
								<%if(what != null) {%>
									<div class="box">
										<%=what %>
									</div>
								<%}%>
							
								<%if(where != null) {%>
									<div class="box">
										<%=where %>
									</div>
								<%}%>
							
								<%if(storage != null) {%>
									<div class="box">
										<%=storage %>
									</div>
								<%}%>
							
								<%if(process != null) {%>
									<div class="box">
										<%=process %>
									</div>
								<%}%>
							
								<%if(online != null) {%>
									<div class="box">
										<%=online %>
									</div>
								<%}%>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr />
		<%
		String mapquery = hobbyname.replaceAll("Collection", "") + " classes stores";
		//out.println(mapquery);
		%>
		<b>Stores and classes for <%=hobbyname %> closest to your zip code (<%=zip %>)</b><br /><br />
		<jsp:include page="/locatehobbyonmap.jsp" >
			<jsp:param value="<%=mapquery %>" name="query"/>
		</jsp:include>
	</div>
</div>
<script type="text/javascript">
	Element.cleanWhitespace('content1');
	init();
</script>
<jsp:include page="/footer.jsp" />
</body>
</html>
