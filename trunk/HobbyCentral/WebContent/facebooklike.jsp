<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#fb-root {
	margin: 5px auto auto 5px;
}
</style>
</head>
<body>
<div id="fb-root">
<script>
  window.fbAsyncInit = function() {
    FB.init({appId: '123700067645593', status: true, cookie: true,
             xfbml: true});
  };
  (function() {
    var e = document.createElement('script'); e.async = true;
    e.src = document.location.protocol +
      '//connect.facebook.net/en_US/all.js';
    document.getElementById('fb-root').appendChild(e);
  }());
</script>
<fb:like href="<%=request.getRequestURL() %>" layout="standard" show_faces="true" width="250" action="like" colorscheme="light" />
</div>

</body>
</html>