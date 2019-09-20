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
        <a href="exit">Logout</a>
    </span>
</div>

<span>
    <div class="link2">
    <a href="../../main.jsp">На главную</a>
    <a href="#" onclick="history.back();">Назад</a>
    </div>
</span>

<div>
    <strong
        class="modification">Для того чтобы модифицировать дисциплину введите новое значение поля и нажмите кнопку "Применить"
    </strong>
</div>

<form action="/modifydiscipline" method="post">
    <label for="nameDiscipline">Название</label>
    <input type="text" id="nameDiscipline" name="secondName" placeholder="${discipline.discipline}" required autofocus>

    <input type="hidden" name="discId" value="$(discipline.id)">
    <button class="buttonModify">Применить</button>
</form>

</body>
</html>
