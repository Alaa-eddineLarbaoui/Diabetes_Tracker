<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show infos of tracking</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>



<div class="list-group">
    <c:forEach var="Diabetes" items="${Diabetes}">
        <div class="list-group-item">
            <span class="badge badge-secondary">ID: ${Diabetes.getId()}</span>
            <small>Time: ${Diabetes.getTime_of_tracking()}</small>
            <p class="mb-1">Diabetes: ${Diabetes.getValue_Glucose()}</p>
            <small>Date: ${Diabetes.getDate_of_Tracking()}</small>

            <a href="delete?id=${Diabetes.getId()}" class="btn btn-danger">
                delete
            </a>
        </div>
    </c:forEach>
</div>
</body>
</html>
