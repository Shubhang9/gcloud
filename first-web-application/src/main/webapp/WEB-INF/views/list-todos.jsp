<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
Hi  ${name}
<br/>
<table>
	<caption>Your todos are</caption>
	<thead>
		<tr>
			<th>Description</th>
			<th>Target Date</th>
			<th>is Completed</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${todo}" var="todo">
			<tr>
				<td>${todo.desc}</td>
				<td>${todo.date}</td> 
				<td>${todo.done}</td>
			</tr>
		</c:forEach>	
	</tbody>
</table>
<br/>
<a class="button" href="/add-todo">Add</a>
</body>
</html>