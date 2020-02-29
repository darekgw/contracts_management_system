<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@    taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@    page isELIgnored="false" %>
<%@    taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<title>Title</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/jq-3.3.1/dt-1.10.18/datatables.min.css"/>
	<script type="text/javascript" src="https://cdn.datatables.net/v/dt/jq-3.3.1/dt-1.10.18/datatables.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/ju/datatables.min.css"/>
	<script type="text/javascript" src="https://cdn.datatables.net/v/ju/datatables.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$('#systemsTable').DataTable({
				"bJQueryUI": true
			});
		});
	</script>
</head>

<body>
<div class="container">
	<div class="siteTitle">
		<h2>List of systems</h2>
	</div>
	<div class="addButton">
		<a type="button" href="/add_system" class="btn btn-danger">Add new system</a>
	</div>

	<table id="systemsTable" class="display">
		<thead>
		<tr>
			<th>System name</th>
			<th>Description</th>
			<th>Lead technologies</th>
			<th>Actions</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${systems}" var="s">
			<tr>
				<td>${s.systemName}</td>
				<td>${s.systemDescription}</td>
				<td>${s.systemLeadTechnologies}</td>
				<td>
					<a type="button"
					   class="btn btn-danger btn-sm"
					   href="/edit_system/${s.id}"
					>Edit system</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>
