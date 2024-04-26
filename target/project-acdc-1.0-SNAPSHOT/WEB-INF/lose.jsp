<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Вы проиграли</title>
    <link type="image/x-icon" href="${pageContext.request.contextPath}/static/favicon.png" rel="shortcut icon">
    <style><%@include file="/static/styles-lose.css"%></style>
    <style>
        body {
            background: url("/static/background-lose.jpg") no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
    <c:set var="name" value="${sessionScope.get('name')}"/>
    <div>
    <h1>Сожалеем, <c:out value="${name}"/></h1>
    <h2>Вы проиграли. Хотите начать заново?</h2>
    <form method="post">
        <input type="submit" class="buttonLose" value="Рестарт" name="restart">
    </form>
    </div>
</body>
</html>
