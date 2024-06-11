<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>
<head>
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>Bootstrap Example</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style><%@ include file="Style.css"%></style>
</head>


<body class="body">
<header class="header">
    <div class="container1">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="Logo">
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
                        <li><a class="dropdown-item" href="ShowNourriture?genre=meat">meat</a></li>
                        <li><a class="dropdown-item" href="ShowNourriture?genre=fruit">fruits</a></li>

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
        <img class="img-header" src="https://media.baamboozle.comploads/images/5698/1519890717_129992" alt="">
        <div class="about">
            <h1>hello test tetst vdgqg dtvsdvsdb <br>hrfhhdfh hfhhf hfhdhhdf </h1>
        </div>
    </div>
</header>



<div class="container text-center my-5">
    <h2>Ce que nous offrons à nos clients</h2>
    <p class="text-muted">Construisez l'avenir avec notre application de gestion de projets de construction, efficace et durable.</p>
    <div class="row mt-4">
        <div class="col-md-4">
            <div class="card1">
                <div class="card-body">
                    <h5 class="card-title">Gestion de Projet</h5>
                    <p class="card-text">
                        La gestion des projets consiste à planifier, organiser et suivre toutes les activités nécessaires pour atteindre les objectifs d'un projet.
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card1">
                <div class="card-body">
                    <h5 class="card-title">Gestion des Taches</h5>
                    <p class="card-text">
                        La gestion des tâches consiste à planifier, organiser et suivre toutes les activités nécessaires pour atteindre les objectifs d'un projet.
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card1">
                <div class="card-body">
                    <h5 class="card-title">Gestion des Ressources</h5>
                    <p class="card-text">
                        La gestion des ressources implique la planification, l'allocation et le suivi des ressources nécessaires à un projet, comme le personnel, les matériaux et le temps.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>





<script>
    document.addEventListener('DOMContentLoaded', function() {
        const selectElement = document.getElementById('types');

        selectElement.addEventListener('change', function() {
            const selectedValue = selectElement.value;
            if (selectedValue === 'viandes') {
                window.location.href = '/DiabetesTracker_war_exploded/ShowInfo';
            }

        });
    });
</script>

</body>
</html>
