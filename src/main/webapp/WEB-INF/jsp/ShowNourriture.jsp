<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Nourriture</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa;
        color: #333;
    }

    .container {
        max-width: 900px;
    }

    .food-item {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        padding: 20px;
        margin-bottom: 15px;
    }

    .food-icon {
        width: 50px;
        height: 50px;
    }

    .chart-icon {
        width: 50px;
        height: 50px;
    }

    .food-item h5 {
        margin: 0;
        font-size: 1.1em;
        color: #333;
    }

    .food-item p {
        margin: 5px 0 0;
        font-size: 0.9em;
        display: flex;
        gap: 15px;
    }

    .text-success {
        color: #28a745;
    }

    .text-warning {
        color: #ffc107;
    }

    .text-info {
        color: #17a2b8;
    }

    .calories {
        font-size: 1.2em;
        color: #007bff;
    }

    .text-muted {
        color: #6c757d;
    }

    @media (max-width: 768px) {
        .food-icon, .chart-icon {
            width: 40px;
            height: 40px;
        }

        .calories {
            font-size: 1em;
        }
    }
</style>
<body>




<div class="list-group">

        <div class="list-group-item">
            <h5 class="card-title">ID: ${Nou.getIdNourriture()}</h5>
            <p class="mb-1"><strong>Nom:</strong> ${Nou.getNom_Nourriture()}</p>
            <p class="mb-1"><strong>Avantages:</strong> ${Nou.getAvantages_Nourriture()}</p>
            <p class="mb-1"><strong>Valeur de Sucre (100g):</strong> ${Nou.getValeur_de_Sucre100g()}</p>
            <p class="mb-1"><strong>Valeur de Sucre (1g):</strong> ${Nou.getValeur_de_Sucre1g()}</p>
            <p class="mb-1"><strong>Photo:</strong> <img src="${Nou.getPhoto_url()}" alt="${Nou.getNom_Nourriture()}" style="width: 100px; height: auto;"></p>
            <p class="mb-1"><strong>Protéines:</strong> ${Nou.getProtein()}g</p>
            <p class="mb-1"><strong>Graisses:</strong> ${Nou.getFats()}g</p>
            <p class="mb-1"><strong>Glucides:</strong> ${Nou.getCarbs()}g</p>
            <p class="mb-1"><strong>Kcal:</strong> ${Nou.getKcal()}</p>
            <p class="mb-1"><strong>Cal:</strong> ${Nou.getCal()}</p>
        </div>

</div>



<c:forEach var="Nou" items="${Nourritures}">
<div class="container mt-5">
    <div class="food-item row align-items-center mb-3">
        <div class="col-md-1 text-center">
            <img src="${Nou.getPhoto_url()}" alt="${Nou.getNom_Nourriture()}" style="width: 50px; height: auto;">
        </div>
        <div class="col-md-8">
            <h5>${Nou.getNom_Nourriture()} <span class="font-weight-bold"> : </span> ${Nou.getAvantages_Nourriture()}</h5>
            <p><span class="text-success">Carbs ${Nou.getCarbs()}g</span> <span class="text-warning">Fat ${Nou.getFats()}g</span> <span class="text-info">Protein ${Nou.getProtein()}g</span> <span class="text-info">Sucre ${Nou.getValeur_de_Sucre100g()}g</span></p>
        </div>
        <div class="col-md-2 text-right">
            <span class="calories font-weight-bold">${Nou.getCal()}</span><span class="text-muted">cals</span>
        </div>

    </div>
</div>
</c:forEach>

</body>
</html>
