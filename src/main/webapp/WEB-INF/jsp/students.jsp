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

<div class="link2">
    <a href="/">На главную</a>

    <div class="secondRow">
        <div class="admin-bottom">

            <form action="/records" id="studentProgressForm">
                <input type="hidden" id="idStudentProgress" name="idStudentProgress">
            </form>
            <input onclick="studentProgress()" type="submit" value="Просмотреть успеваемость выбранного студента">


            <c:if test="${role eq 'admin'}">
                <form action="/createstudent" method="get">
                    <input type="submit" value="Создать студента">
                </form>

                <input type="submit" onclick="modifingStudent()" value="Модифицировать выбранного студента">
                <form action="/modificationstudent" id="modifStudForm">
                    <input type="hidden" name="idModifStud" id="idModifStud">
                </form>

                <input type="submit" value="Удалить выбранных студентов" onclick="deleteStudent()">
                <form action="/deletestudent" id="deleteStudForm">
                    <input type="hidden" name="idsDeleteStud" id="idsDeleteStud">
                </form>
            </c:if>
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
                <input type="checkbox" value="${s.id}">
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