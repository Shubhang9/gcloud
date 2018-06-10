<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP</title>
</head>
<%
Date d=new Date();
%>
<body>
Nacho JSP
<br/>
Date is <%=d%>
<form action="/spring-mvc/login" method="post">
<p><font color="red" size="100">${errorMessage}</font></p>
Enter Name:<input type="text" name="name"/>
<br/>
Enter Password:<input type="password" name="password"/>
<input type="submit" value="SUBMIT"/>
</form>
</body>
</html>