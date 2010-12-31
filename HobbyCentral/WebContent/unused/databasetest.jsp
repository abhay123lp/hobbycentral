<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.hobbycentral.java.CollectingBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Database Connectivity Test</title>
</head>
<body>
<%
String state = (String) request.getAttribute("state");
%>
<form id="form1" name="form1" method="post" action="/HobbyCentral/DatabaseConnection" >
	<input type="submit" value="Test Connectivity" id="submit" name="submit" />
</form>
<%if (state == "open") {%>
<p>Connection was successful</p>
<%} %>
<form id="form2" name="form2" method="post" action="/HobbyCentral/SelectCollectingTable" >
	<input type="submit" name="submit" id="submit" value="Select from Collecting Table" />
</form>

</body>
</html>