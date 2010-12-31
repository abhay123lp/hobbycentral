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
</head>
<body>
<%AutoComplete a = new AutoComplete(); %>
<script type="text/javascript">
	$(function() {
		var availableTags = [<%=AutoComplete.getHobbylist()%>];
		$("#siteSearchBox").autocomplete({
			source: availableTags
		});
		availableTags = [<%=AutoComplete.getHobbylist()%>];
		$("#qry").autocomplete({
			source: availableTags
		});
	});
</script>

<div id="search">
	<form id="formSearch" name="formSearch" method="post" action="/HobbyCentral/Search" onSubmit="return validate();">
		<input type="text" id="siteSearchBox" name="siteSearchBox" />
		<input class="btn" type="submit" id="submit" name="submit" value="Search"/>
	</form>
</div>
</body>
</html>