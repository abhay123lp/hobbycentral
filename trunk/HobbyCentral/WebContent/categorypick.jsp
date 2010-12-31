<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.hobbycentral.java.DBConnectionBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function MM_jumpMenuGo(objId,targ,restore){ //v9.0
  var selObj = null;  with (document) { 
  if (getElementById) selObj = getElementById(objId);
  if (selObj.options[selObj.selectedIndex].value == "Pick a Hobby Category") {
	  alert("Select a category first");
	  return false;
  }
  if (selObj) eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0; }
}
</script>
<style type="text/css">
.gobtn {
	background-color: #FF8400;
	padding: 1px;
	color: white;
	font-size: 13px;
	width: 27px;
	vertical-align: middle;
	border: 1px solid black;
}
.gobtn:hover {
	background-color: #FFA400;
}
</style>
</head>
<body>
<%
Connection conn = null;
ResultSet rs = null;
Statement stmt = null;
%>
<div id="jumpto">
       	  <form id="form">
        	  <select name="jumpMenu" id="jumpMenu">
        	  	<option selected="selected">Pick a Hobby Category</option>
<!--        	    <option value="/HobbyCentral/hobby/thearts/thearts.jsp">The Arts</option>-->
<!--        	    <option value="/HobbyCentral/hobby/collecting/collecting.jsp">Collecting</option>-->
<!--        	    <option value="/HobbyCentral/hobby/dancing/dancing.jsp">Dancing</option>-->
<!--        	    <option value="/HobbyCentral/hobby/extremesports/extremesports.jsp">Extreme Sports</option>-->
<!--        	    <option value="/HobbyCentral/hobby/foodanddrinks/foodanddrinks.jsp">Food &amp; Drinks</option>-->
<!--        	    <option value="/HobbyCentral/hobby/games/games.jsp">Games</option>-->
<!--        	    <option value="/HobbyCentral/hobby/music/music.jsp">Music</option>-->
<!--        	    <option value="/HobbyCentral/hobby/sports/sports.jsp">Sports</option>-->
        	    <%
        	    try {
        	    	String sqlqry = "SELECT DISTINCT category_name FROM hobby_data";
	        	    DBConnectionBean d = new DBConnectionBean();
	        	    conn = d.getDbconn();
	        	    stmt = conn.createStatement();
	        	    rs = stmt.executeQuery(sqlqry);
	        	    while(rs.next()) {
	        	    	String category = rs.getString("category_name");
	        	    	//String url = "/HobbyCentral/hobby/" + category.replaceAll(" ", "_").toLowerCase() + "/" + 
	        	    		//category.replaceAll(" ", "_").toLowerCase() + ".jsp";
	        	    	String url = "/HobbyCentral/RedirectToCategory?categoryname=" + category;
	        	    %>
        	    	<option value="<%=url %>"><%=category %></option>
        	    	<%} 
        	    } catch (Exception e) {
        	    	e.printStackTrace();
        	    }
        	    %>
          </select>
        	  <input class="gobtn" type="button" name="go_button" id= "go_button" value="Go" onclick="return MM_jumpMenuGo('jumpMenu','parent',0)" />
      	  </form>
        </div>
<%
if (conn!=null)
	conn.close();
if (stmt!=null)
	stmt.close();
if (rs!=null)
	rs.close();
%>
</body>
</html>