<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
        <a href="exit">Logout</a>
    </span>
</div>

<span>
    <div class="link2">
    <a href="../../main.jsp">На главную</a>
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
        <td>Фёдоров</td>
        <td>Фёдор</td>
        <td>КП-1251</td>
        <td>2018-02-21</td>
    </tr>
</table>

<table class="semestr">
    <tr style="background-color: green">
        <td>Дисциплина</td>
        <td>Оценка</td>
    </tr>
    <tr>
        <td>Информатика</td>
        <td>5</td>
    </tr>
    <tr>
        <td>Системный Анализ</td>
        <td>4</td>
    </tr>
    <tr>
        <td>Управление проектами</td>
        <td>5</td>
    </tr>
    <tr>
        <td>Основы Дискретной Математики</td>
        <td>4</td>
    </tr>
    <div class="choose">Выбрать семестр</div>

    <fieldset>
        <select>
            <optgroup>
                <option value="1">Семестр 1</option>
                <option value="2">Семестр 2</option>
                <option value="3">Семестр 3</option>
                <option value="4">Семестр 4</option>
            </optgroup>
        </select>
    </fieldset>
    <button>Выбрать</button>
</table>

</body>
</html>
