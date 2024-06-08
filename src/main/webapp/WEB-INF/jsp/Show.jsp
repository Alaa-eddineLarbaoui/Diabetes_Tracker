<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show infos of tracking</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        .chart-container {
            width: 100%;
            max-width: 600px;
            margin: auto;
            height: 500px;
        }
    </style>
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
