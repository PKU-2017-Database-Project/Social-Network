﻿<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="checkvalid.jsp" %>
<%@page import="java.util.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.ResultSetMetaData"%>

<%

	response.setCharacterEncoding("UTF-8");
	request.setCharacterEncoding("UTF-8");

	String path = request.getContextPath();
		String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	/** 链接数据库参数 **/
	String driverName = "com.mysql.jdbc.Driver"; //驱动名称
    String DBUser = "admin"; //mysql用户名
    String DBPasswd = "1234567890"; //mysql密码
    String DBName = "working"; //数据库名
    String MySQLServer = "127.0.0.1"; //MySQL地址
    String MySQLServerPort = "3306"; //MySQL端口号（默认为3306）

	//数据库完整链接地址
	String connUrl = "jdbc:mysql://"+MySQLServer+":"+MySQLServerPort+"/" + DBName + "?user="
		+ DBUser + "&password=" + DBPasswd ;

	//加载数据库驱动
	Class.forName(driverName).newInstance();

	//链接数据库并保存到 conn 变量中
	Connection conn = DriverManager.getConnection(connUrl);

	//申明～？
	Statement stmt = conn.createStatement();

	//设置字符集
	stmt.executeQuery("SET NAMES UTF8");

	//要执行的 sql 查询

	String email=(String)session.getAttribute("email");

	String sql="";
%>
<html>
<head>
	<title>Profile</title>
	<meta http-equiv="content-Type" content="text/html;charset=UTF-8">
</head>

<body  align="center" style="width:700">
	<div align="center">
	<table>
	<tr>
	<td style="width:100">Hi, <a href="main.jsp"><%
	sql= "SELECT * FROM `working`.`user` where email='"+email+"' LIMIT 15";
	System.out.println(sql);

	//取得结果
	ResultSet rs = stmt.executeQuery(sql);
	if (rs.next()){
		out.println(rs.getString("UserName"));
	}%></a>
	</td>
    <td style="width:100">
    <a href="myFriends.jsp">Following</a>
    </td>
    <td style="width:100">
    <a href="personalInfo.jsp">Profile</a>
    </td>
	<td style="width:500">
	<form action="search.jsp" method="post">
		<input type="text" name="searchName" maxlength="20" style="width:120"/>
		<input type="submit" value="Find friends" />
		<input type="button" value="Sign out" onclick="location.href='logout.jsp'" />
	</form>
	</td>
	</tr>
	</table>
	</div>
	<hr  style="width:700" />
	<center>
	<form action="modifyInfo.jsp" method="post">
		<table border="2" bordercolor="black" bgcolor="">
			<tbody>
			<tr>
				<td height="28">Name</td>
				<td><input type="text" name="username" maxlength="20" style="width:150" ></td>
			</tr>
            <tr>
				<td height="28">Avatar</td>
				<td><input type="text" name="icon"  style="width:150"></td>
			</tr>
			<tr>
				<td height="28">Gender</td>
				<td>
				Male<input type="radio" name="sex" value="Male" />&nbsp;
				Female<input type="radio" name="sex" value="Female" />&nbsp;
                Others<input type="radio" name="sex" checked="selected" value="Others" />
				</td>
			</tr>
			<tr>
				<td height="28">Date of birth</td>
				<td>
				<SELECT onclick="onSelect(this)" name="year">
				<%
					for (int i=1900;i<=2017;i++){
						%><option value=<%=i%>><%=i%></option><%
					}
				%>
				</SELECT>
				<SELECT onclick="onSelect(this)" name="month">
				<%
					for (int i=1;i<=12;i++){
						%><option value=<%=i%>><%=i%></option><%
					}
				%>
				</SELECT>
                <SELECT onclick="onSelect(this)" name="day">
				<%
					for (int i=1;i<=31;i++){
						%><option value=<%=i%>><%=i%></option><%
					}
				%>
				</SELECT>
				</td>
			</tr>
            <tr>
				<td height="28">Introduction: </td>
				<td><TEXTAREA type="text" name="introduction"  rows=4 cols=20 class="input_detail"></TEXTAREA></td>
			</tr>
			</tbody>
		</table>

	<input type="submit" value="Submit" >&nbsp;&nbsp;
	<input type="button" value="Back" onclick="location.href='main.jsp'">
	</form>
	</center>
</body>
</html>
<%

		/** 关闭连接 **/
		conn.close();
		stmt.close();
		rs.close();
%>
