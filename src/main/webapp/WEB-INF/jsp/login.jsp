<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/style3.css">
    <link rel="stylesheet" href="../../resources/lib/jquery-ui-1.12.1/jquery-ui.css">
    <script src="../../resources/lib/jquery-ui-1.12.1/jquery-ui.js"></script>
</head>
<body>

<div class="boxSite">
    <div class="system">Система управления студентами и их успеваемостью</div>
    <div class="enter"><h2>Вход в систему:</h2></div>
    <form action="/login" method="post">
        <p><label for="login">Введите логин</label>
            <input type="text" id="login" name="login" placeholder="Ваш логин" required autofocus></p>
        <p><label for="password">Введите пароль</label>
            <input type="text" id="password" name="password" placeholder="Ваш пароль" required autofocus></p>
        <p><label for="role">Выберите роль</label>
            <select id="role" name="role">
                <option value="admin">Администратор</option>
                <option value="student">Студент</option>
            </select></p>
        <input type="submit" value="Войти" class="buttonModify">
        <c:if test="${error eq 1}">
            <p>Пользователь не найден!</p>
        </c:if>
    </form>
</div>
</body>
</html>
