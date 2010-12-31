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
ArrayList<CollectingBean> rs = (ArrayList<CollectingBean>) request.getAttribute("result");

for (CollectingBean bean : rs) {
	String i1, i2, i3, i4, w1, w2, w3, w4, s1, s2, s3, s4;%>
	<b><p><%=bean.getHobbyName() %></p></b>
	<p style="font-weight:bold">Introduction</p>
	<% i1 = bean.getIntro1();
	if (i1 != null) { %>
		<%= i1 %>
	<%}
	i2 = bean.getIntro2();
	if (i2 != null) {%>
		<%= i2 %>
	<%}
	i3 = bean.getIntro3();
	if (i3 != null) {%>
		<%= i3 %>
	<%}
	i4 = bean.getIntro4();
	if (i4 != null) {%>
		<%= i4 %>
	<%}%>
	<p style="font-weight: bold;">Where to Find</p>
	<%
	w1 = bean.getWhere1();
	if (w1 != null) {%>
		<%=w1 %>
	<%}
	w2 = bean.getWhere2();
	if (w2 != null) {%>
		<%=w2 %>
	<%}
	w3 = bean.getWhere3();
	if (w3 != null) {%>
		<%=w1 %>
	<%}
	w4 = bean.getWhere4();
	if (w4 != null) {%>
		<%=w4 %>
	<%}%>
	<p style="font-weight:bold;">Storage</p>
	<%
	s1 = bean.getStorage1();
	if (s1 != null) {%>
		<%=s1 %>
	<%}
	s2 = bean.getStorage2();
	if (s2 != null) {%>
		<%=s2 %>
	<%}
	s3 = bean.getStorage3();
	if (s3 != null) {%>
		<%=s3 %>
	<%}
	s4 = bean.getStorage4();
	if (s4 != null) {%>
		<%=s4 %>
	<%}
}
%>

</body>
</html>