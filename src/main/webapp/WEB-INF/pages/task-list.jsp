<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List of Tasks</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/general.css">
</head>
<body>

<%@include file="header.jsp" %>

<h2>List of Tasks</h2>

<table border="1" align="center">
    <tr>
        <th>No.</th>
        <th>Name</th>
        <th>Priority</th>
        <th colspan="3">Operation</th>
    </tr>

    <c:forEach items="${tasks}" var="t">

        <tr>
            <td>${t.id}</td>
            <td>${t.title}</td>
            <td>${t.priority}</td>
            <td><a href="${pageContext.request.contextPath}/read-task?id=${t.id}">Read</a></td>
            <td><a href="${pageContext.request.contextPath}/edit-task?id=${t.id}">Edit</a></td>
            <td><a href="${pageContext.request.contextPath}/delete-task?id=${t.id}">Delete</a></td>
        </tr>

    </c:forEach>

</table>

</body>
</html>
