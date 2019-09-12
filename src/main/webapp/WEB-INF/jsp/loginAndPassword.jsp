<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/styleLoginAndPassword.css">
</head>
<body>

<form action="http://echo.htmlacademy.ru" method="post" target="_blank">

    <fieldset>
        <legend>Выберите тип пользователя</legend>
        <label for="visitor">Посетитель</label>
        <input type="radio" name="choose type of user" value="1" id="visitor">
        <label for="administrator">Администратор</label>
        <input type="radio" name="choose type of user" value="2" id="administrator">
    </fieldset>

    <fieldset>
        <legend>Введите логин и пароль</legend>
        <label for="login">Логин</label>
        <input type="text" id="login" name="login" placeholder="Введите логин" required>
        <label for="password">Пароль</label>
        <input type="password" id="password" name="password" minlength="5" maxlength="12" required
               placeholder="Введите пароль">
    </fieldset>

    <input type="submit">
    <input type="reset">
    <input type="hidden" name="cost" value="100">
</form>

</body>
</html>