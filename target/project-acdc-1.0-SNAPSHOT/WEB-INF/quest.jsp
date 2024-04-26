<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <c:set var="score" value="${sessionScope.get('score')}"/>
    <title>Alien Quest</title>
    <link type="image/x-icon" href="${pageContext.request.contextPath}/static/favicon.png" rel="shortcut icon">
    <style><%@include file="/static/styles-quest.css"%></style>
    <style>
        <c:choose>
        <c:when test="${score == 0}">
        body {
            background: url("/static/background-first.jpg") no-repeat;
            background-size: cover;
        }
        </c:when>
        <c:when test="${score == 1}">
        body {
            background: url("/static/background-second.jpg") no-repeat;
            background-size: cover;
        }
        </c:when>
        <c:when test="${score == 2}">
        body {
            background: url("/static/background-third.jpg") no-repeat;
            background-size: cover;
        }
        </c:when>
        </c:choose>
    </style>
</head>
<body>
    <form method="post" id="question-form">
        <p><c:choose>
            <c:when test="${score == 0}">
                Ты потерял память. Принять вызов НЛО?
            </c:when>
            <c:when test="${score == 1}">
                Ты принял вызов. Поднимешься на мостик к капитану?
            </c:when>
            <c:when test="${score == 2}">
                Ты поднялся на мостик. Ты кто?
            </c:when>
            <c:otherwise>Все плохо...</c:otherwise>
        </c:choose></p>
        <p><label><input type="radio" name="answer" value="1">
            <c:choose>
                <c:when test="${score == 0}">
                    Принять вызов НЛО
                </c:when>
                <c:when test="${score == 1}">
                    Подняться на мостик
                </c:when>
                <c:when test="${score == 2}">
                    Рассказать правду о себе
                </c:when>
                <c:otherwise>Все плохо...</c:otherwise>
            </c:choose>
        </label></p>
        <p><label><input type="radio" name="answer" value="0">
            <c:choose>
                <c:when test="${score == 0}">
                    Отклонить вызов
                </c:when>
                <c:when test="${score == 1}">
                    Отказаться подниматься на мостик
                </c:when>
                <c:when test="${score == 2}">
                    Солгать о себе
                </c:when>
                <c:otherwise>Все плохо...</c:otherwise>
            </c:choose>
        </label></p>
        <button type="submit" name="answer" class="buttonB" value="2">Ответить</button>
    </form>
    <div id="stats">
        <p>Информация: </p>
        <p>Ip address: ${sessionScope.get("address")}</p>
        <p>Name: ${sessionScope.get("name")}</p>
        <p>ID: ${sessionScope.get("id")}</p>
        <p>Curr score: ${sessionScope.get("score")}</p>
    </div>
</body>
</html>
