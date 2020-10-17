<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Create new Task</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/general.css">
</head>
<body>

<%@include file="header.jsp" %>
<br>

<h2>Create new Task</h2>
<%String info = (String) request.getAttribute("taskExists");%>

<h5>${errorMessage}</h5>

<form action="${pageContext.request.contextPath}/create-task" name="newTask" method="post">

    <table align="center">
        <tr>
            <td>
                <label for="title">Name: </label>
            </td>
            <td>
                <input type="text" id="title" name="title" required>
            </td>
        </tr>

        <tr>
            <td>
                <label for="priority">Priority: </label>
            </td>
            <td>

                <label for="priority"></label>

                <select id="priority" name="priority" required>
                    <c:forEach items="${priorities}" var="p">
                        <option value="${p}">${fn:toUpperCase(fn:substring(p, 0, 1))}${fn:toLowerCase(fn:substringAfter(p, fn:substring(p, 0, 1)))}</option>
                    </c:forEach>
                </select>

            </td>
        </tr>

        <tr>
            <td>
                <input type="submit" value="Create">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>

</body>
</html>
