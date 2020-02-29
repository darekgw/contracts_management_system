<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<title>Title</title>
</head>

<body>
<div class="container">
	<c:if test="${empty id}">
		<h2 style="text-align: center; margin-bottom: 20px">Add new system</h2>
	</c:if>
	<c:if test="${not empty id}">
		<h2 style="text-align: center; margin-bottom: 20px">Edit system</h2>
	</c:if>
	<div style="display: flex; justify-content: center">
		<form:form method="post" action="/add_system" modelAttribute="system">
			<table class="addingTable">
				<tr>
					<td>
						<form:label path="systemName">System name</form:label>
					</td>
					<td>
						<form:input path="systemName" maxlength="20" required="required"/>
						<form:errors path="systemName"/>
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="systemDescription">Description</form:label>
					</td>
					<td>
						<form:input path="systemDescription" maxlength="50" required="required"/>
						<form:errors path="systemDescription"/>
					</td>
				<tr>
					<td>
						<form:label path="systemLeadTechnologies">Lead technologies</form:label>
					</td>
					<td>
						<form:input path="systemLeadTechnologies" maxlength="100" required="required"/>
						<form:errors path="systemLeadTechnologies"/>
					</td>
				</tr>
				<c:if test="${not empty id}">
					<form:input type="hidden" path="id"/>
				</c:if>
				<tr>
					<td colspan="2" align="center">
						<input class="btn-width btn-danger" type="submit" value="Submit"/>
					</td>
				</tr>
			</table>
		</form:form>
	</div>
</div>
</body>
</html>
