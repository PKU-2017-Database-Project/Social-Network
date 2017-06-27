<%@page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.ResultSetMetaData"%>

<body style="background:url(background2.jpg);background-attachment:fixed;background-size:cover; background-position: center;">
<div style="position:absolute;left:43%;top:30%">
<%
	int ok=0;
	if(session.getAttribute("login")!=null && session.getAttribute("login").equals("ok")){
		session.setAttribute("login",null);
		session.setAttribute("email",null);
		ok=1;
	}
	out.println("<p style='color:white'>Sign out.</p>");
	out.println("<p style='color:white'>Back to <a href=\"login.jsp\">Sign in</a> webpage after 5 secs...</p>");
	String content=5+";URL="+"login.jsp";
	response.setHeader("REFRESH",content);
%>
%</div>
</body>
