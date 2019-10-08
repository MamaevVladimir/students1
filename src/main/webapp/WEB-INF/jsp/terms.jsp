<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/style9.css">
    <script src="../../resources/js/functions.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<nav class="top-menu">
    <ul class="menu-main">
        <li class="left-item"><a href="/logout">Logout</a></li>
        <li class="right-item"><a href="/" class="first">На главную</a></li>
        <li class="right-item"><a href="javascript:history.back()" title="Назад">Назад</a>
        </li>
    </ul>
    <div class="box">Система управления студентами и их успеваемостью</div>
</nav>
<div class="boxSite">
    <span>Выбрать семестр</span>

    <form action="/terms" method="get" id="ChoiseSemForm">
        <select name="selectedTermId" id="multipleSelect">
            <c:forEach items="${semestrs}" var="sem">
                <c:choose>
                    <c:when test="${sem.id eq selectedTerm.id}">
                        <option value="${sem.id}" selected>${sem.semestr}</option>
                    </c:when>
                    <c:otherwise>
                        <option value="${sem.id}">${sem.semestr}</option>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </select>

        <input type="submit" value="Выбрать" class="buttonModify" id="idChoiseSem">
    </form>

    <p>Длительность семестра: ${selectedTerm.duration}</p>
    <div class="firstRow">
        <div class="table">
            <div class="tableName">Список дисциплин семестра
                <div class="table-row">
                    <div class="table-cellH " style="height: auto">Наименование дисциплины</div>
                </div>
                <div class="table-row">
                    <c:forEach items="${disciplinesByTerm}" var="ds">
                        <div class="table-cell">"${ds.discipline}"</div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <div class="secondRow">

        <c:if test="${role eq 'admin'}">
            <form action="/create-semestr" method="get">
                <input type="submit" value="Создать семестр" class="buttonModify">
            </form>

            <input type="submit" onclick="modifingTerm()" value="Модифицировать семестр" class="buttonModify">
            <form action="/modifyterm" id="modifTermForm">
                <input type="hidden" name="idModifTerm" id="idModifTerm">
            </form>

            <form action="/delete-semestr" method="get" id="deleteSemForm">
                <input type="submit" value="Удалить семестр" onclick="deleteSemestr()" class="buttonModify">
                <input type="hidden" name="idsDeleteSem" id="idsDeleteSem">
            </form>
        </c:if>
    </div>
</div>
</body>
</html>