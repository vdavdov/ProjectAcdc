<%@ page import="com.javarush.by.vdavdov.constants.Constants" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Prolog of Alien Quest</title>
    <link type="image/x-icon" href="${pageContext.request.contextPath}/static/favicon.png" rel="shortcut icon">
    <style><%@include file="/static/styles-home.css"%></style>
    <style>
        body {
            background: url("/static/background-home.jpg") no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
    <div id="prolog">
        <h1>Пролог</h1>
        <p><%= Constants.textForProlog%>
        </p>
    </div>
    <div id="meetup">
        <h1>Знакомство с командой</h1>
        <p><%= Constants.teamMeetUp%></p>
    </div>
    <form method="post">
        <label>
            <input id="inputName" type="text" alt="Введите свое имя: " name="name">
        </label>
        <button type="submit" class="submit" id="buttonA">Представится и в путь!</button>
    </form>
</body>
</html>
