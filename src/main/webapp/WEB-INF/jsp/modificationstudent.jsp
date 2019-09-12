<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../css/style2.css">
</head>
<body>

<div>
    <div class="system">Система управления студентами и их успеваемостью</div>
    <span class="link1" style="float: right">
        <a href="exit">Logout</a>
    </span>
</div>


<div class="link2">
    <a href="../../main.jsp">На главную</a>
    <a href="#" onclick="history.back();">Назад</a>
</div>


<span><strong class="modification">Для модификации, введите новые значения и нажмите кнопку "Применить"</strong></span>

<form>
    <fieldset>
        <label for="family">Фамилия</label>
        <input type="text" id="family" name="family" placeholder="Введите фамилию" required>
        <label for="name">Имя</label>
        <input type="name" id="name" name="name" placeholder="Введите имя">
        <label for="group">Группа</label>
        <input type="group" id="group" name="group" placeholder="Введите группу">
        <label for="date">Дата поступления</label>
        <input type="date" id="date" name="date" placeholder="Введите дату поступления">
        <input type="button" value="Применить" onclick="location.href='/students'">
    </fieldset>
</form>

</body>
</html>