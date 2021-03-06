<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title><tiles:getAsString name="title"/></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link href="<c:url value='/bootstrap-3.3.7-dist/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
<header id="header">
	<tiles:insertAttribute name="header"/>
</header>
<section id="site-content">
	<tiles:insertAttribute name="body"/>
</section>
</body>
</html>
