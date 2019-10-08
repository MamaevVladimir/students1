<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/style4.css">
</head>
<body>

<div>
    <div class="system">Система управления студентами и их успеваемостью</div>
    <span class="link1" style="float: right">
        <a href="/logout">Logout</a>
    </span>
</div>

<span>
    <div class="link2">
    <a href="/">На главную</a>
    <a href="#" onclick="history.back();">Назад</a>
    </div>
</span>

<span><strong class="modification">Отображена успеваемость для следующего студента:</strong></span>

<table class="tutor">
    <tr style="background-color: green">
        <td>Фамилия</td>
        <td>Имя</td>
        <td>Группа</td>
        <td>Дата поступления</td>
    </tr>
    <tr>
        <td>${student.surname}</td>
        <td>${student.name}</td>
        <td>${student.group}</td>
        <td><f:formatDate value="${student.date}" pattern="dd/MM/yyyy"></f:formatDate></td>
    </tr>
</table>

<table class="semestr">
    <tr style="background-color: green">
        <td>Дисциплина</td>
        <td>Оценка</td>
    </tr>

    <c:forEach items="${marks}" var="mark">
        <tr>
            <td>${mark.discipline.discipline}</td>
            <td>${mark.mark}</td>
        </tr>
    </c:forEach>
</table>

<div class="choose">Выбрать семестр</div>

<form action="/termStudentProgress" method="get" id="choiceSemStudProgressForm">
    <select name="selectedTermStudentProgressId" id="multipleStudentProgressSelect">
        <c:forEach items="${semestrs}" var="sem">
            <c:choose>
                <c:when test="${sem.id eq selectedStudentProgressTerm.id}">
                    <option value="${sem.id} selected">${sem.semestr}</option>
                </c:when>
            <c:otherwise>
                <option value="${sem.id}">${sem.semestr}</option>
            </c:otherwise>
            </c:choose>
        </c:forEach>
    </select>

    <input type="submit" value="Выбрать" class="buttonModify" id="idChoiceSemStudProgress">
</form>

</body>
</html>
