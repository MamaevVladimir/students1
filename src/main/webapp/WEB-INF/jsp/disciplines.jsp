<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/style6.css">
    <script src="../../resources/js/functions.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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


<span><strong class="modification">Список дисциплин</strong></span>

<table class="disciplines">
    <tr style="background-color: green">
        <td></td>
        <td>Наименование дисциплины</td>
    </tr>

    <c:forEach items="${disciplines}" var="d">
        <tr>
            <td>
                <input type="checkbox" value="${d.id}">
            </td>
            <td>${d.discipline}</td>
        </tr>
    </c:forEach>

    <div class="secondRow">
        <div class="admin-bottom">

            <c:if test="${role eq 'admin'}">
                <form action="/creatediscipline" method="get">
                    <input type="submit" value="Создать дисциплину">
                </form>

                <input type="submit" onclick="modifingDiscipline()" value="Модифицировать выбранную дисциплину">
                <form action="/modifydiscipline" id="modifDiscForm">
                    <input type="hidden" name="idModifDisc" id="idModifDisc">
                </form>

                <input type="submit" onclick="deleteDiscipline()" value="Удалить выбранные дисциплины">
                <form action="/deletediscipline" id="deleteDiscForm">
                    <input type="hidden" name="idsDeleteDisc" id="idsDeleteDisc">
                </form>
            </c:if>
        </div>
    </div>
</table>
</body>
</html>
