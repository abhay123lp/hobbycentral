<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.hobbycentral.java.RecommendationBean" %>
<%@ page import="com.hobbycentral.java.DBConnectionBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%
Connection conn = null;
ResultSet rs = null;
Statement stmt = null;
String hobbyname = request.getParameter("hobbyname"); 
ArrayList<RecommendationBean> recolist = new ArrayList<RecommendationBean>();
%>
</head>
<body>
<!--<a href="/HobbyCentral/RecommendAlsoLike">Click Here</a>-->
<div id="categories" class="boxed">
<%
try {
	DBConnectionBean d = new DBConnectionBean();
	conn = d.getDbconn();
	stmt = conn.createStatement();
	StringBuffer sqlqry = new StringBuffer();
	sqlqry.append("select id, hobby_name, category_name, grpNo from hobbycentral.hobby_charac where grpNo = ");
	sqlqry.append("(select grpNo from hobbycentral.hobby_charac where hobby_name = '");
	sqlqry.append(hobbyname + "') and hobby_name <> '" + hobbyname + "'");
	sqlqry.append(" and category_name = (select category_name from hobby_charac where hobby_name = '" + hobbyname + "')");
	//out.println(sqlqry.toString());
	rs = stmt.executeQuery(sqlqry.toString());
	int counter = 0;
	while (rs.next())
		counter++;
	if (counter > 0) { %>
		
		<h2>You might also like</h2>
		<div class="content">
			<ul>
<%		
		rs.beforeFirst();
		int i = 0;
		while (rs.next() && i < 8) {
			RecommendationBean b = new RecommendationBean();
			b.setHobbyId(rs.getInt("id"));
			b.setHobby_name(rs.getString("hobby_name"));
			String url = "/HobbyCentral/DisplayMoreInfo?category=" + rs.getString("category_name").replaceAll(" ","+") + "&hobby=" +
					rs.getString("hobby_name").replaceAll(" ","+");
			//out.println(url);
			%><li><a href="<%=url %>"><%=rs.getString("hobby_name") %></a></li><!-- <br /> -->
			<%
			recolist.add(b);
			i++;
		} %>
		</ul>
		</div>
	<%}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} finally {
	if (conn!=null)
		conn.close();
	if (stmt!=null)
		stmt.close();
	if (rs!=null)
		rs.close();
}
%>
</div>
</body>
</html>