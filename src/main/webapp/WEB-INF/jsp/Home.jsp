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
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>Bootstrap Example</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style><%@ include file="Style.css"%></style>
</head>


<body class="body">
<header class="header">
    <div class="container">
        <div class="logo">
            <img src="logo.png" alt="Logo">
            <span>Diabete Tracker</span>
        </div>
        <nav class="nav">
            <ul class="ul">
                <li><a href="#">Home</a></li>
                <li><a href="#">Registration</a></li>
                <li><a href="#">Chart</a></li>
                <div class="dropdown">
                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown link
                    </a>

                    <ul class="dropdown-menu" style="">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </div>

                <li><a href="#">Conseils</a></li>
            </ul>
        </nav>
        <div class="buttons">
            <a href="#" class="btn btn-signup">SIGN UP</a>
            <a href="#" class="btn btn-signin">SIGN IN</a>
        </div>
    </div>
    <div class="titre">
        <img class="img-header" src="IMAGE LINKDEEN.jpg" alt="">
        <div class="about">
            <h1>hello test tetst vdgqg dtvsdvsdb <br>hrfhhdfh hfhhf hfhdhhdf </h1>
        </div>
    </div>
</header>
<!-- Votre contenu -->
<h1>hello</h1>
<h1 class="ti"> hello alaa </h1>
<!-- Inclure Bootstrap JS -->



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
