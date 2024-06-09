<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Nourriture</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
    /*   Le style de Header*/
    body, html {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        /*background-color: #ffddd3;*/
        background-color: #fff;


    }
    .header {
        background-color: #0aa447;
        color: white;
        padding: 10px 0;
        border-bottom-right-radius: 100rem 5rem;
        border-bottom-left-radius: 100rem 5rem;
    }

    .container1 {
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 90%;
        margin: 0 auto;
        margin-top: 20px;
    }
    .container{
        margin-top: 65px;
    }

    .logo {
        display: flex;
        align-items: center;
    }

    .logo img {
        height: 40px;
        margin-right: 10px;
    }

    .logo span {
        font-size: 1.5em;
        font-weight: bold;
    }

    .ul {
        list-style: none;
        display: flex;
        margin: 0;
        padding: 0;
    }

    .nav ul li {
        margin: 0 15px;
    }

    .a {
        color: white;
        text-decoration: none;
        font-size: 1em;
    }

    .a:hover {
        text-decoration: underline;
    }

    .buttons {
        display: flex;
        align-items: center;
    }

    .btn {
        padding: 10px 20px;
        margin-left: 10px;
        border-radius: 20px;
        text-decoration: none;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }

    .btn-signup {
        background-color: #f4a261;
        color: white;
    }

    .btn-signin {
        background-color: transparent;
        color: white;
        border: 2px solid white;
    }

    .btn-signup:hover {
        background-color: #e76f51;
    }

    .btn-signin:hover {
        background-color: white;
        color: #2a9d8f;
    }

    .page-title {
        text-align: center;

        color: white;
        padding: 20px 0;
        font-size: 3rem;
        letter-spacing: -.04em;
        line-height: 1.2;
        margin-bottom: .5rem;
        position: relative;
        z-index: 2;
        border-bottom-right-radius: 100rem 5rem;
        border-bottom-left-radius: 100rem 5rem;
    }

    .titre{
        margin-top: 20px;

    }

    /* style */
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
    .food-item {
        transition: transform 0.3s, box-shadow 0.3s;
        border: 1px solid #ddd;
        padding: 10px;
        border-radius: 10px;
        background-color: #fff;
    }
    .food-item:hover {
        transform: scale(1.05);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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

<header class="header">
    <div class="container1">
        <div class="logo">
            <img src="logo.png" alt="Logo">
            <span>Diabete Tracker</span>
        </div>
        <nav class="nav">
            <ul class="ul">
                <li><a class="a" href="/DiabetesTracker_war_exploded/">Home</a></li>
                <li><a class="a" href="/DiabetesTracker_war_exploded/Registration">Registration</a></li>
                <li><a class="a" href="/DiabetesTracker_war_exploded/ShowInfo" >Show</a></li>
                <li><a class="a"  href="/DiabetesTracker_war_exploded/Showchart">Chart</a></li>

                <div class="dropdown">
                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Food
                    </a>
                    <ul class="dropdown-menu" style="">
                        <li><a class="dropdown-item" href="ShowNourriture?id=1">meat</a></li>
                        <li><a class="dropdown-item" href="ShowNourriture?id=2">fruits</a></li>
                        <li><a class="dropdown-item"  href="ShowNourriture?id=3">vegetables</a></li>
                    </ul>
                </div>

                <li><a class="a"  href="#">Conseils</a></li>
            </ul>


        </nav>
        <div class="buttons">
            <a href="#" class="btn btn-signup">SIGN UP</a>
            <a href="#" class="btn btn-signin">SIGN IN</a>
        </div>
    </div>
    <div class="titre">
        <h1 class="page-title">Food</h1>
    </div>

</header>


<c:forEach var="Nou" items="${Nourritures}">
<div class="container mt-5">

        <div class="food-item row align-items-center mb-3">
            <div class="col-md-1 text-center">
                <img src="${Nou.getPhoto_url()}" alt="${Nou.getNom_Nourriture()}" style="width: 50px; height: auto;">
            </div>
            <div class="col-md-8">
                <h5>${Nou.getNom_Nourriture()} <span class="font-weight-bold"> : </span> ${Nou.getAvantages_Nourriture()}</h5>
                <p>
                    <span class="text-success">Carbs ${Nou.getCarbs()}g</span>
                    <span class="text-warning">Fat ${Nou.getFats()}g</span>
                    <span class="text-info">Protein ${Nou.getProtein()}g</span>
                    <span class="text-info">Sucre ${Nou.getValeur_de_Sucre100g()}g</span>
                </p>
            </div>
            <div class="col-md-2 text-right">
                <span class="calories font-weight-bold">${Nou.getCal()}</span><span class="text-muted">cals</span>
            </div>
        </div>
    </c:forEach>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
