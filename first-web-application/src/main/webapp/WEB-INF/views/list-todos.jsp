<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
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
Hi  ${name}
<br/>
<table class="table table-striped">
	<caption>Your todos are</caption>
	<thead>
		<tr>
			<th>Description</th>
			<th>Target Date</th>
			<th>is Completed</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${todo}" var="todo">
			<tr>
				<td>${todo.desc}</td>
				<td>${todo.date}</td> 
				<td>${todo.done}</td>
				<td><a href="/delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a></td>
			</tr>
		</c:forEach>	
	</tbody>
</table>
<br/>
<div>
	<a class="btn btn-success " href="/add-todo">Add</a>
</div>
</div>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>