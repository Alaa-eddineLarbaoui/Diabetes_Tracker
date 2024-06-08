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
</head>
<body>

<label for="types">Choisissez un type :</label>
<select id="types" name="types">
    <option value="viandes">Viandes</option>
    <option value="fruits">Fruits</option>
    <option value="legumes">Légumes</option>
</select>

<p>hello alaa </p>
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
