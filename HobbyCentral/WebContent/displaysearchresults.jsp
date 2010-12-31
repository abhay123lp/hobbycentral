<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="org.jdom.*"%>
<%@ page import="java.util.*" %>
<%@ page import="org.jdom.input.*" %>
<%@ page import="org.jdom.xpath.XPath" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>HobbyCentral.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/HobbyCentral/css/style.css" rel="stylesheet" type="text/css" />
<title>HoobyCentral</title>
<link href="/HobbyCentral/css/tabs.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="scripts/prototype.lite.js"></script>
<script type="text/javascript" src="scripts/moo.fx.js"></script>
<script type="text/javascript" src="scripts/moo.fx.pack.js"></script>
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
<%
String searchQuery = (String)request.getAttribute("searchQuery");
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
	<jsp:include page="/sitesearch.jsp" />
	<jsp:include page="/facebooklike.jsp" />
	<jsp:include page="/feeds.jsp" />
</div>

<div id="rightbar">
	<jsp:include page="/facebook.jsp" />
</div>
<div id="content">
	<div id="postsmain">
		<div id="post">
			<h2>Search Results for keyword: <%=searchQuery %></h2>
		</div>
		<div id="post">
		<div id="story">
			<div id="wrapper">
				<div id="content1">
					<h3 class="tab" title="first"><div class="tabtxt"><a href="#">Site Results</a></div></h3>
					<div class="tab"><h3 class="tabtxt" title="second"><a href="#">Flickr Results</a></h3></div>
					<div class="tab"><h3 class="tabtxt" title="third"><a href="#">Youtube Results</a></h3></div>
					<div class="tab"><h3 class="tabtxt" title="fourth"><a href="#">Wikipedia Results</a></h3></div>
					<div class="tab"><h3 class="tabtxt" title="fifth"><a href="#">Blog Results</a></h3></div>
					<div id="boxholder">
						<div class="box">
			<p><strong>The First Box</strong><br />Google Web Search</p>
		</div>
		<div class="box">
			<p><strong>The Second Box</strong><br />Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut molestie nunc eu turpis. Donec facilisis enim sed dui. Sed nunc. Cras eu arcu. Praesent vel augue vel dolor ultricies convallis. Nam consectetuer risus eu urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam suscipit. Duis quis lacus sed tellus auctor blandit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin eget massa in ante vehicula pharetra. Ut massa pede, ornare id, ultrices eget, porta et, metus.</p>
		</div>
		<div class="box">
			<p><strong>The Third Box</strong><br />Suspendisse accumsan velit at dui tristique consectetuer. Quisque vitae felis ac arcu dignissim facilisis. Quisque ullamcorper. Cras molestie, elit vel blandit mattis, eros metus tempus tortor, id lobortis sem nunc eget dolor. Nullam dui. Aenean justo. Curabitur ullamcorper, libero eu faucibus ultricies, ipsum arcu interdum tellus, eget tempus augue mauris nec purus. Donec a pede nec tortor venenatis bibendum. Nunc quis erat ac augue rhoncus dictum. Nullam id augue at augue iaculis posuere. Nulla volutpat facilisis quam.</p>
		</div>
		<div class="box">
			<p><strong>The Fourth Box</strong><br />Morbi feugiat mauris at velit. Proin rutrum lectus. Proin pulvinar turpis tempor nibh. Cras sit amet magna sed risus tempor vestibulum. Nunc vitae nulla. Vivamus fermentum. Praesent a sem. Cras eu neque ultricies tellus tristique vehicula. Praesent dignissim consequat metus. Integer dolor. Donec pellentesque, libero eu ullamcorper suscipit, lorem augue molestie arcu, vitae sodales quam nulla vel urna. Suspendisse accumsan sem nec leo. Proin dui ante, placerat id, consectetuer et, gravida in, velit. Duis non massa. Etiam mollis. Vestibulum id est. Sed sit amet tellus. Vestibulum varius dolor vitae velit.</p>
		</div>
						
						<div id="box">
							<input type="hidden" id="blogQuery" name="blogqry" value="<%=searchQuery %>" />
							<jsp:include page="blogger.jsp" />
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	Element.cleanWhitespace('content1');
	init();
</script>
</body>
<jsp:include page="/footer.jsp" />
</html>