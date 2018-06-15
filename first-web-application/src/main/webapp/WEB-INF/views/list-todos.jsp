<%@include file="common/header.jspf" %>
<%@include file="common/navigation.jspf" %>
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
				<td><fmt:formatDate pattern="dd/MM/yyyy"
									value="${todo.date}" /></td> 
				<td>${todo.done}</td>
				<td>
				<a href="/update-todo?id=${todo.id}" class="btn btn-danger">Update</a>
				<a href="/delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a>
				</td>
			</tr>
		</c:forEach>	
	</tbody>
</table>
<br/>
<div>
	<a class="btn btn-success " href="/add-todo">Add</a>
</div>
</div>
<%@include file="common/footer.jspf" %>