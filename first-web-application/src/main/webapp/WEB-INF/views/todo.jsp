<%@include file="common/header.jspf" %>
<%@include file="common/navigation.jspf" %>
<div class="container">
<H1>Add a Todo</H1>
<form:form method="post" commandName="todo">
	<fieldset  class="form-group">
	<form:hidden path="id"/>
	<form:label path="desc">Description</form:label>
	<form:input path="desc" type="text" class="form-control" required="required"/>
	<form:errors path="desc" cssClass="text-warning"/>
	</fieldset>
	<fieldset  class="form-group">
	<form:label path="date">Target Date</form:label>
	<form:input path="date" type="text" class="form-control" required="required"/>
	<form:errors path="date" cssClass="text-warning"/>
	</fieldset>
	<input class="btn btn-success" type="Submit" value="SUBMIT">
</form:form>
</div>
<%@include file="common/footer.jspf" %>