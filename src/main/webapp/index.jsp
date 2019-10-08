<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>

<div>
    <div class="system">Система управления студентами и их успеваемостью</div>
    <span class="link1" style="float: right">
        <c:choose>
            <c:when test="${isLogin eq 1}">
                <a href="/logout" class="logout">Logout</a>
            </c:when>
            <c:otherwise>
                <a href="/login" class="logout">Login</a>
            </c:otherwise>
        </c:choose>
    </span>
</div>

<div>
    <div class="link2">
        <a href="/students" class="students">Студенты</a>
    </div>
</div>

<div>
    <div class="link3">
        <a href="/disciplines" class="disciplines">Дисциплины</a>
    </div>
</div>

<div>
    <div class="link4">
        <a href="/terms" class="semestrs">Семестры</a>
    </div>
</div>

</body>
</html>



