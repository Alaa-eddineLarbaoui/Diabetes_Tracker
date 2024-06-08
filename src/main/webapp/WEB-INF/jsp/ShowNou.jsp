<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Nourriture</title>
</head>
<body>
<h1>nourriture</h1>



<div class="list-group">
    <c:forEach var="Nou" items="${Nourritures}">
        <div class="list-group-item">
            <span class="badge badge-secondary">${Nou.getIdNourriture()}</span>
            <span class="badge badge-secondary">${Nou.getAvantages_Nourriture()}</span>
            <span class="badge badge-secondary">${Nou.getNom_Nourriture()}</span>

        </div>
    </c:forEach>
</div>
</body>
</html>
