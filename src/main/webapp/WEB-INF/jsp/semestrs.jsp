<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../css/style9.css">
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
    </div>
</span>

<table class="semestr">
    <tr style="background-color: green">
        <td>Наименование дисциплины</td>
    </tr>
    <tr>
        <td>Алгебра</td>
    </tr>
    <tr>
        <td>Химия</td>
    </tr>
    <tr>
        <td>Физика</td>
    </tr>
    <tr>
        <td>Теория алгоритмизации</td>
    </tr>
    <tr>
        <td>История науки и техники</td>
    </tr>

    <div class="choose">Выбрать семестр</div>

    <fieldset>
        <select>
            <optgroup>
                <option value="1">Семестр 1</option>
                <option value="2">Семестр 2</option>
                <option value="3">Семестр 3</option>
            </optgroup>
        </select>
    </fieldset>
    <button>Выбрать</button>


    <div>
        <span><strong class="modification">Длительность семестра: 24 недели</strong></span>
    </div>

    <div>
    <span>
        <strong class="disciplines">Список дисциплин семестра</strong>
    </span>
    </div>

    <div>
        <input type="hidden">
        <input type="button" value="Создать семестр">
    </div>

    <div>
        <input type="hidden">
        <input type="button" value="Модифицировать текущий семестр">
    </div>

    <div>
        <input type="hidden">
        <input type="button" value="Удалить текущий семестр">
    </div>

</table>

</body>
</html>
