<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.hobbycentral.java.EbayItemBean" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Name: HobbyCentral.com
Author: Vineet Potdar | Niketa Hira
Date: 03-22-2010
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>HobbyCentral.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/HobbyCentral/css/style.css" rel="stylesheet" type="text/css" />
<%
	String errorMsg = (String) request.getAttribute("err");
	System.out.println(errorMsg);
	ArrayList<EbayItemBean> aebay = null;
	int n = 0;
	String nofItems = null;
	if (errorMsg == null) {
		aebay = (ArrayList<EbayItemBean>)request.getAttribute("ebayItemList");
		nofItems = request.getAttribute("numberofitems").toString();
		n = Integer.parseInt(nofItems);
	}
		
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
	<jsp:include page="/feeds.jsp" />	
	<jsp:include page="/facebooklike.jsp" />
</div>

<div id="rightbar">
	<jsp:include page="/facebook.jsp" />
</div>

<div id="content">
	<div id="ebaypic">
		<img class="ebaypic" style="float:left; padding-right:10px" src="/HobbyCentral/images/ebaylarge.png" height="80px" width="160px"></img>
		<form id="form1" method="post" action="/HobbyCentral/Ebay" style="padding-top: 22px;">
			<label>Didn't find what you were looking for? Search again!</label>
			<input type="text" id="qry" name="qry"></input>
			<input type="submit" id="submit" name="submit" value="Search"></input>
		</form>
	</div>
	<div id="postsmain">
		<div class="post">
			<div class="story">
				<div id="ebay">
				<%if(errorMsg == null) { %>
					<table width="100%">
					<th></th>
					<th>Description</th>
					<th>Location</th>
					<th>Price Information</th>
						<%for(int i=0; i<n;i++) {%>
						<%
							EbayItemBean b = aebay.get(i);
							String galleryURL = (b.getGalleryURL() == null)? "" : b.getGalleryURL();
							String viewItemUrl = (b.getViewItemURL() == null)? "" : b.getViewItemURL();
							String title = (b.getTitle() == null)? "" : b.getTitle();
							String categoryName = (b.getCategoryName() == null)? "" : b.getCategoryName();
							String paymentMethod = (b.getPaymentMethod() == null)? "" : b.getPaymentMethod();
							String conditionDisplayName = (b.getConditionDisplayName() == null)? "" : b.getConditionDisplayName();							
							String location = (b.getLocation() == null)? "" : b.getLocation();
							String postalCode = (b.getPostalCode() == null)? "" : b.getPostalCode();
							String convertedCurrentPrice = (b.getConvertedCurrentPrice() == null)? "" : b.getConvertedCurrentPrice();
							String sellingState = (b.getSellingState() == null)? "" : b.getSellingState();
							%>
						<tr>
						<td style="vertical-align: center; horizontal-align: center;">
							<a href="<%=viewItemUrl%>"><img src="<%=galleryURL%>" alt=""></img></a>
						</td>
						<td>
							
							<a href="<%=viewItemUrl%>" target="_blank"><%=title%></a><br></br>
							Category: <%=categoryName%><br></br>
							Payment Method: <%=paymentMethod%><br></br>
							Condition: <%=conditionDisplayName%>								
						</td>
						<td>
							 <%=location%><br></br><%=postalCode%>			
						</td>
						<td>
							Price: $<%=convertedCurrentPrice%><br></br>
							Status: <%=sellingState%>				
						</td>
						</tr>
						<%} %>
					</table>
				<%} else { %>
					<p>Your search did not return any results from eBay. Try again</p>
				<%} %>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	Element.cleanWhitespace('content1');
	init();
</script>
<jsp:include page="/footer.jsp" />
</body>
</html>
