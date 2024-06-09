<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 04/06/2024
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style><%@ include file="Style.css"%></style>
</head>
<body>


<header class="header">
    <div class="container">
        <div class="logo">
            <img src="logo.png" alt="Logo">
            <span>Diabete Tracker</span>
        </div>
        <nav class="nav">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Registration</a></li>
                <li><a href="#">Chart</a></li>
                <li><a href="#">Food</a></li>
                <li><a href="#">Business</a></li>
            </ul>
        </nav>
        <div class="buttons">
            <a href="#" class="btn btn-signup">SIGN UP</a>
            <a href="#" class="btn btn-signin">SIGN IN</a>
        </div>
    </div>
    <div class="titre">
        <h1 class="page-title">Food Search</h1>
    </div>

</header>













<label for="types">Choisissez un type :</label>
<select id="types" name="types">
    <option value="viandes">Viandes</option>
    <option value="fruits">Fruits</option>
    <option value="legumes">Légumes</option>
</select>
<form method="post" action="save">
    <input type="date" name="date_of_Tracking">
    <input type="time" name="time_of_tracking">
    <input type="number" name="value_Glucose">
    <button type="submit">add</button>
</form>


<a href="/DiabetesTracker_war_exploded/ShowInfo">
    Page show
</a>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const selectElement = document.getElementById('types');

        selectElement.addEventListener('change', function() {
            const selectedValue = selectElement.value;
            if (selectedValue === 'viandes') {
                window.location.href = '/DiabetesTracker_war_exploded/ShowInfo';
            }
            // Ajoutez d'autres conditions si nécessaire pour les autres options
        });
    });
</script>

</body>
</html>
