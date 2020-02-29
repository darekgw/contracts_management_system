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
		<h2 style="text-align: center; margin-bottom: 20px">Add new contract</h2>
	</c:if>
	<c:if test="${not empty id}">
		<h2 style="text-align: center; margin-bottom: 20px">Edit contract</h2>
	</c:if>
	<div style="display: flex; justify-content: center">
		<form:form method="post" action="/add_contract" modelAttribute="contract">
			<table class="addingTable">
				<tr>
					<td>
						<form:label path="contractNumber">Contract Number</form:label>
					</td>
					<td>
						<form:input path="contractNumber" placeholder="next number/year" minlength="6" maxlength="20" required="required"/>
						<form:errors path="contractNumber"/>
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="contractDateFrom">Date from</form:label>
					</td>
					<td>
						<form:input path="contractDateFrom" placeholder="yyyy-mm-dd" minlength="10" maxlength="10" required="required"/>
						<form:errors path="contractDateFrom"/>
					</td>
				<tr>
					<td>
						<form:label path="contractDateTo">Date to</form:label>
					</td>
					<td>
						<form:input path="contractDateTo" placeholder="yyyy-mm-dd" minlength="10" maxlength="10" required="required"/>
						<form:errors path="contractDateTo"/>
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="contractAmount">Amount</form:label>
					</td>
					<td>
						<form:input path="contractAmount" placeholder="amount for contract" maxlength="30" required="required"/>
						<form:errors path="contractAmount"/>
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="contractBillingCycle">Billing cycle</form:label>
					</td>
					<td>
						<form:input path="contractBillingCycle" placeholder="month, quarter or year" maxlength="20" required="required"/>
						<form:errors path="contractBillingCycle"/>
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="OS.id">Select operation system</form:label>
					</td>
					<td>
						<form:select path="OS.id">
							<form:options items="${systemMap}"/>
						</form:select>
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
