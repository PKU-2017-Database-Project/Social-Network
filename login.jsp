<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@page import="java.util.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.ResultSetMetaData"%>

<%

	response.setCharacterEncoding("UTF-8");
	request.setCharacterEncoding("UTF-8");
	if(session.getAttribute("login")!=null && session.getAttribute("login").equals("ok")){
		String content=0+";URL="+"main.jsp";
		response.setHeader("REFRESH",content);
	}
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>Sign in</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="social network,login">
		<meta http-equiv="description" content="This is the login page.">
		<meta http-equiv="content-Type" content="text/html;charset=UTF-8">
<style type="text/CSS">...
body{color:#000;background:#fff;font-size:12px;line-height:166%;text-align:center;}
body{font-family:verdana}
h1{font-size:100%}
body,h1{margin:0;padding:0;border:0;overflow:hidden}
a{text-decoration:none;color:#959595}
a:hover{color:#626262}
.fontWeight{font-weight:700}
.header{width:100%;height:12%;position:relative;margin:0 auto;z-index:2;overflow:hidden;background:url(background.jpg) no-repeat center top}
.headerLogo{top:7%;left:4%;position:absolute}
.headerIntro{height:5%;width:20%;display:block;background-position:0 -64px;top:35%;left:5%;position:absolute;font-size:30px}
.headerNav{top:21px;right:100px;text-align:right;color:#cfd0d0;position:absolute}
.headerNav a{padding-left:13px;display:inline-block;}
.headerNav .last{padding-left: 0;}

.main{margin:0 auto;height:100%;position:relative;min-width:1000px;}
.main-inner{margin:0 auto;background:url(background.jpg) no-repeat center top}
#mainCnt{width:100%;height:88%;position:relative;clear:both;background-repeat:no-repeat;background-position:center top;}

.style1{width:20%;padding:15px 15px 15px;top:30px;left:40%;text-align:center;
	position:absolute}
	input{width:150;height:30;text-align:center}
.input-row{margin:20px;margin-bottom:18px;height=40px;position:relative;font-size:20px;font-weight:300;text-align:center;}

</style>


<!-- added part -->
<script src="https://www.google.com/recaptcha/api.js"></script>
<!-- added part -->


</head>

<body width="300" height="300" class="main-inner">
	<header class="header">
	<a class="headerIntro">Social Network</a>
	<nav class="headerNav">
		
	</nav>		
	</header>
	<section class="main" >
		<div id="mainCnt" class="main-inner"></div>
		
		<div align="center" class="style1 style2"><a style="font-color:white">Log in</a>
    
    <form action="loginResponse.jsp" method="post">
      <div class="input-row" align="center">
      	<input class="email" placeholder="Email" type="text" name="email" maxlength="30" style="width:150" pattern="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?">
      </div>	
	    <div class="input-row password-row" align="center">
	    	<input type="password" name="passwd" placeholder="password" maxlength="20" style="width:150">
	    </div>			
	  <div>
		<input type="submit" value="Sign in" />
		<input type="button" value="Sign up" onclick="location.href='register.jsp'"/>
	</div>

		<div class="g-recaptcha" data-sitekey="6LdDNiMUAAAAAHDPfsdqqPKAPFEy5Xi3EoGwJIXi"></div>
</form>
			
	</div>
	</section>

</body>
</html>
