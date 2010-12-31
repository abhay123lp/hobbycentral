<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Name: HobbyCentral.com
Author: Vineet Potdar | Niketa Hira
Date: 03-22-2010
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Feedback | HobbyCentral.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/HobbyCentral/css/style.css" rel="stylesheet" type="text/css" />
<script language = "Javascript">
/**
 * DHTML email validation script. Courtesy of SmartWebby.com (http://www.smartwebby.com/dhtml/)
 */

function echeck(str) {
		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID")
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID")
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

 		 return true;
	}

function validateFeedback(){
	var nm = document.getElementById("txtName");
	if ((nm.value == null) || (nm.value == "")) {
		alert("Please enter your name");
		return false;
	}
	
	var emailID=document.getElementById("txtEmail");
	
	if ((emailID.value==null)||(emailID.value=="")){
		alert("Please Enter your Email ID")
		emailID.focus()
		return false
	}
	if (echeck(emailID.value)==false){
		emailID.value=""
		emailID.focus()
		return false
	}
	
	var comment = document.getElementById("txtComment");
	if (comment.length > 1000) {
		alert("Maximum characters permitted is 1000 characters. You have entered " + comment);
		return false;
	}
	return true
}
</script>
</head>
<body>
<jsp:include page="addthis.jsp" />
<div id="header">
	<jsp:include page="logo.jsp" />
	<jsp:include page="menu.jsp" />
</div>
<div id="leftbar">
	<jsp:include page="categorypick.jsp" />
	<jsp:include page="sitesearch.jsp" />
	<jsp:include page="feeds.jsp" />
</div>

<div id="rightbar">
	
</div>

<div id="content">
	<div id="postsmain">
		<div class="post">
			<h2>Leave us a comment</h2>
			<div class="story">
				<form id="form" method="post" action="/HobbyCentral/Feedback" onsubmit="return validateFeedback();" >
					<table width="100%">
						<tr>
							<td><label for="txtname">Name</label></td>
							<td><input type="text" id="txtName" name="txtName"></input></td>
						</tr>
						<tr>
							<td><label for="txtname">Email</label></td>
							<td><input type="text" id="txtEmail" name="txtEmail"></input></td>
						</tr>
						<tr>
							<td><label for="txtname">Comment</label>
							<br /><span style="font-size: 10px;">(max 1000 characters)</span>
							</td>
							<td><textarea id="txtComment" name="txtComment" rows="6" cols="50"></textarea></td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" id="submit" class="btn" name="submit" value="Submit"></input>
							</td>
						</tr>
					</table>
					<%
						String status = (String)request.getAttribute("status");
						if (status != null && status.equals("success")) {
					%>
					<br /><br />
					<span style="font-weight: bold">Message posted successfully. Thank you for your comments.</span>
					<%} if(status != null && status.equals("fail")) {%>
					<span style="font-weight: bold">There was some error. Please try again later.</span>
					<%} %>
				</form>
			</div>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
