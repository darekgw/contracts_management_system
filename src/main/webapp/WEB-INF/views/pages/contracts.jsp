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
			$('#contractsTable').DataTable({
				"bJQueryUI": true
			});
		});
	</script>
</head>

<body>
<div class="container">
	<c:if test="${onlyActiveContracts}">
		<div class="siteTitle">
			<h2>List of active contracts</h2>
		</div>
	</c:if>
	<c:if test="${!onlyActiveContracts}">
		<div class="siteTitle">
			<h2>List of contracts</h2>
		</div>
	</c:if>
	<div class="addButton">
		<a type="button" href="/add_contract" class="btn btn-danger">Add new contract</a>
	</div>

	<table id="contractsTable" class="display">
		<thead>
		<tr>
			<th>Contract number</th>
			<th>System</th>
			<th>Date from</th>
			<th>Date to</th>
			<th>Amount</th>
			<th>Billing cycle</th>
			<th>Active</th>
			<th>Actions</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${contracts}" var="c">
			<tr>
				<td>${c.contractNumber}</td>
				<td>${c.OS.systemName}</td>
				<td>${c.contractDateFrom}</td>
				<td>${c.contractDateTo}</td>
				<td>${c.contractAmount}</td>
				<td>${c.contractBillingCycle}</td>
				<td>${c.contractIsActive}</td>
				<td>
					<a type="button"
					   class="btn btn-danger btn-sm"
					   <c:if test="${c.contractIsActive !='yes'}">disabled</c:if>
					   <c:if test="${c.contractIsActive =='yes'}">href="/edit_contract/${c.id}"</c:if>
					>Edit</a>
					<a type="button"
					   class="btn btn-danger btn-sm"
					   <c:if test="${c.contractIsActive !='yes'}">disabled</c:if>
					   <c:if test="${c.contractIsActive =='yes'}">href="/deactivate/${c.id}"</c:if>
					>Deactivate</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>
