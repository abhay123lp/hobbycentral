<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.hobbycentral.java.AutoComplete" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="scripts/jquery-1.4.2.min.js" type="text/javascript" ></script>
<script src="scripts/jquery-ui-1.8.custom.min.js" type="text/javascript" ></script>
<link rel="stylesheet" 	href="/HobbyCentral/css/jquery-ui-1.8.custom.css" type="text/css" ></link>
</head>
<body>
<%
AutoComplete a = new AutoComplete();
%>
<script type="text/javascript">
	$(function() {
		//var availableTags =["c++", "java", "php", "coldfusion", "javascript", "asp", "ruby", "python", "c", "scala", "groovy", "haskell", "perl"];
		var availableTags = [<%=AutoComplete.getHobbylist()%>];
		//alert("Reading hobbylist");
		//var availableTags = document.getElementById("hobbylist").value;
		//alert(document.getElementById("hobbylist").value);
		$("#tags").autocomplete({
			source: availableTags
		});
	});
</script>

<div class="demo">

<div class="ui-widget">
	<label for="tags">Tags: </label>
	<input id="tags">
</div>

</div><!-- End demo -->

</body>
</html>