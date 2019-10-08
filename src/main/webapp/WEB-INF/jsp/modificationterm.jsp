<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/style8.css">
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

<div>
    <strong
            class="modification">Для модифицирования семестра отредактируйте данные и нажмите кнопку "Применить"
    </strong>
</div>

<form action="/modifyterm" method="post">
    <label for="nameDuration">Длительность (в неделях)</label>
    <input type="number" step="2" id="nameDuration" name="secondNameDuration" placeholder="${semestr.duration}" required autofocus>

    <select name="selectedModifTermId" id="modifMultipleSelect">
        <c:forEach items="${massDiscInModifingSemestr}" var="ds">
            <c:choose>
                <c:when test="${ds.id eq modifTermId.id}">
                    <option value="${ds.id}" multiple selected>${ds.semestr}</option>
                </c:when>
                <c:otherwise>
                    <option value="${ds.id}">${ds.semestr}</option>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </select>


    <input type="hidden" name="discId" value="${discipline.id}">
    <input type="submit" class="buttonModify" value="Применить">
</form>



</body>
</html>

