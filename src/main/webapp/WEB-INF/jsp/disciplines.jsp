<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/style6.css">
</head>
<body>

<div>
    <div class="system">Система управления студентами и их успеваемостью</div>
    <span class="link1" style="float: right">
        <a href="exit">Logout</a>
    </span>
</div>

<span>
    <div class="link2">
    <a href="/../main.jsp">На главную</a>
    <a href="#" onclick="history.back();">Назад</a>
    </div>
</span>

<span><strong class="modification">Список дисциплин</strong></span>

<table class="semestr">
    <tr style="background-color: green">
        <td></td>
        <td>Наименование дисциплины</td>
    </tr>

    <c:forEach items="${disciplines}" var="d">
        <tr>
            <td>
                <input type="checkbox" name="color" value="green">
            </td>
            <td>${d.discipline}</td>
        </tr>
    </c:forEach>

    <div class="secondRow">
        <div class="admin-bottom">

            <form action="/creatediscipline" method="get">
                <input type="submit" value="Создать дисциплину">
            </form>

        </div>
    </div>

    <div>
        <input type="hidden">
        <input type="button" value="Модифицировать выбранную дисциплину">
    </div>

    <div>
        <input type="hidden">
        <input type="button" value="Удалить выбранную дисциплину">
    </div>

</table>

</body>
</html>
