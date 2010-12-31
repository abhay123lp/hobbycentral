<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String search = request.getParameter("searchQuery");
%>
<body>
<%if (search !=null) {%>
<object width="240" height="300">
<param name="movie" value="http://togo.ebay.com/togo/togo.swf?2008013100" />
<param name="flashvars" value="base=http://togo.ebay.com/togo/&lang=en-us&mode=search&query=<%=search %>" />
<embed src="http://togo.ebay.com/togo/togo.swf?2008013100" type="application/x-shockwave-flash" width="235" height="300" flashvars="base=http://togo.ebay.com/togo/&lang=en-us&mode=search&query=<%=search %>">
</embed>
</object>
<%} %>
</body>
</html>