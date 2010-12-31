<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%String hobbypage = request.getParameter("page"); %>
<body>
<div class="wiki">
	<iframe id="wiki" src="http://en.wikipedia.org/wiki/<%=hobbypage %>" height="600" width="700" frameborder="0" scrolling="auto" ></iframe>
</div>
</body>
</html>