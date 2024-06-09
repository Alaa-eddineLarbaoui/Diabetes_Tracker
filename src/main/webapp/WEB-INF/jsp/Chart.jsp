<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
    .chart-container {
        width: 100%;
        max-width: 600px;
        margin: auto;
        height: 500px;
    }

    /*  Style of Header */


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



<div class="chart-container mt-5">
    <canvas id="myChart"></canvas>
</div>
<script>

    document.addEventListener('DOMContentLoaded', (event) => {
        const labels = [
            <c:forEach var="gl" items="${Diabetes}" varStatus="status">
            "${gl.getDate_of_Tracking()}"<c:if test="${!status.last}">,</c:if>
            </c:forEach>
        ];
        const dataBefore = [
            <c:forEach var="gl" items="${Diabetes}" varStatus="status">
            ${gl.getValue_Glucose()}<c:if test="${!status.last}">,</c:if>
            </c:forEach>
        ];


        const data = {
            labels: labels,
            datasets: [
                {
                    label: 'Valeur Before',
                    data: dataBefore,
                    fill: true,
                    borderColor: 'rgb(255, 99, 132)',
                    backgroundColor: 'rgba(255, 99, 132, 0.2)',
                }
            ]
        };
        const config = {
            type: 'line',
            data: data,
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Glycemie Levels Over Time'
                    }
                }
            },
        };

        const ctx = document.getElementById('myChart').getContext('2d');
        new Chart(ctx, config);
    });
</script>
</body>
</html>
