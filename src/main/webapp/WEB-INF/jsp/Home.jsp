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
<p>hello alaa </p>
<form method="post" action="save">
    <input type="date" name="date_of_Tracking" >
    <input type="time" name="time_of_tracking" >
    <input type="number" name="value_Glucose" >
   <button type="submit">add</button>
</form>
<a href="/DiabetesTracker_war_exploded/ShowInfo">
    Page show
</a>
</body>
</html>
