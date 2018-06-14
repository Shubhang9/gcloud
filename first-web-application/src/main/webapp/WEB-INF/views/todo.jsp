<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
</head>
<body>
<div class="container">
<H1>Add a Todo</H1>
<form:form method="post" commandName="todo">
	<fieldset  class="form-group">
	<form:hidden path="id"/>
	<form:label path="desc">Description</form:label>
	<form:input path="desc" type="text" class="form-control" required="required"/>
	<form:errors path="desc" cssClass="text-warning"/>
	</fieldset>
	<input class="btn btn-success" type="Submit" value="SUBMIT">
</form:form>
</div>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>