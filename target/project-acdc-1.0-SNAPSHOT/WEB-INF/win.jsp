<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Вы выиграли</title>
    <link type="image/x-icon" href="${pageContext.request.contextPath}/static/favicon.png" rel="shortcut icon">
    <style><%@include file="/static/styles-win.css"%></style>
    <style>
        body {
            background: url("/static/background-win.jpg") no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
    <c:set var="name" value="${sessionScope.get('name')}"/>
    <div>
    <h1>Поздравляем, <c:out value="${name}"/></h1>
    <h2>Вы выиграли. Хотите начать заново?</h2>
    <form method="post">
        <input class="buttonWin" type="submit" value="Рестарт">
    </form>
    </div>
</body>
</html>
