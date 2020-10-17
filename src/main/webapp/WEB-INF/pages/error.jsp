<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task not found</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/general.css">
</head>
<body>

<%@include file="header.jsp" %>
<br>

<div class="content">
    <h3>${message}</h3>
    <h4>url: ${url}</h4>
</div>

</body>
</html>
