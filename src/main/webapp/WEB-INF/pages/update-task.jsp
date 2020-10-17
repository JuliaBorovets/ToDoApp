<%@ page import="com.softserve.itacademy.model.Priority" %>
<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Edit existing Task</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/general.css">
</head>
<body>

<%@include file="header.jsp" %>
<br>

<h2>Edit existing Task</h2>

<form action="${pageContext.request.contextPath}/edit-task" name="newTask" method="post">

    <table align="center">

        <% Task task = (Task) request.getAttribute("task");%>
        <tr>
            <td>
                <label for="id">Id: </label>
            </td>
            <td>
                <input type="text" id="id" name="id" value="<%=task.getId()%>" disabled>
            </td>
        </tr>

        <tr>
            <td>
                <label for="title">Name: </label>
            </td>
            <td>
                <input type="text" id="title" name="title" value="<%=task.getTitle()%>" required>
            </td>
        </tr>

        <tr>
            <td>
                <label for="priority">Priority: </label>
            </td>
            <td>

                <label for="priority"></label>

                <select id="priority" name="priority" required>

                    <% for (Priority p : (Priority[]) request.getAttribute("priorities")) {
                    %>

                    <option value="<%=p%>" <%=p == task.getPriority() ? "selected" : ""%> >
                        <%=p.name().substring(0, 1).toUpperCase() + p.name().substring(1).toLowerCase()%>
                    </option>

                    <%
                        }
                    %>

                </select>

            </td>
        </tr>

        <tr>
            <td>
                <input type="submit" value="Update">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>

</body>
</html>
