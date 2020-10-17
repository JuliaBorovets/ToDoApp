<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Read existing Task</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/general.css">
</head>
<body>

<%@include file="header.jsp" %>
<br>

<h2>Read existing Task</h2>


<table align="center">

    <% Task task = (Task) request.getAttribute("task");%>

    <tr>
        <td>Id:</td>
        <td><%=task.getId()%>
        </td>
    </tr>

    <tr>
        <td>Title:</td>
        <td><%=task.getTitle()%>
        </td>
    </tr>

    <tr>
        <td>Priority:</td>
        <td><%=task.getPriority()%>
        </td>
    </tr>

</table>

</body>
</html>
