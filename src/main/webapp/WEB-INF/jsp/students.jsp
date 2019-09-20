<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/style1.css">
</head>
<body>

<div>
    <div class="system">Система управления студентами и их успеваемостью</div>
    <span class="link1" style="float: right">
        <a href="exit">Logout</a>
    </span>
</div>


<div class="link2">
    <a href="../../index.jsp">На главную</a>

    <div class="secondRow">
        <div class="admin-bottom">

            <form action="#">
                <input type="button" value="Просмотреть успеваемость выбранных студентов" onclick="location.href='/records'">
            </form>

            <form action="/createstudent" method="get">
                <input type="submit" value="Создать студента">
            </form>

            <form action="#">
                <input type="button" value="Модифицировать выбранного студента" onclick="location.href='/modificationstudent'">
            </form>

            <form action="#">
                <input type="button" value="Удалить выбранных студентов" onclick="location.href='/deletestudent'">
            </form>
        </div>
    </div>
</div>
<table>
    <caption>
        <strong>
            Список студентов
        </strong>
    </caption>
    <tr style="background-color: green">
        <td></td>
        <td>Фамилия</td>
        <td>Имя</td>
        <td>Группа</td>
        <td>Дата поступления</td>
    </tr>

    <c:forEach items="${students}" var="s">
        <tr>
            <td>
                <input type="checkbox" name="color" value="green">
            </td>
            <td>${s.surname}</td>
            <td>${s.name}</td>
            <td>${s.group}</td>
            <td>${s.date}</td>
        </tr>
    </c:forEach>

</table>


</body>
</html>