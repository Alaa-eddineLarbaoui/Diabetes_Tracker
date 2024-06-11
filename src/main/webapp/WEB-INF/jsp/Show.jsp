<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show infos of tracking</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>

        /* le style de header */
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            /*background-color: #ffddd3;*/
            background-color: #fff;


        }
        .header {
            background: url(https://assets.mynetdiary.com/images/texture-noise@1x.png), radial-gradient(ellipse at top, #05b24a 0, #05963d 60%);
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
            margin-top: 52px;
        }

        .titre{
            margin-top: 20px;

        }

/* card */


        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            transition: transform 0.1s ease, box-shadow 0.3s ease;
        }

    </style>
</head>
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
        <h1 class="page-title">View your diabetes records</h1>
    </div>

</header>

<div class="container">
    <div class="row">
        <c:forEach var="Diabetes" items="${Diabetes}">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">ID: ${Diabetes.getId()}</h5>
                        <h6 class="card-subtitle mb-2 text-muted">Time: ${Diabetes.getTime_of_tracking()}</h6>
                        <p class="card-text">Diabetes: ${Diabetes.getValue_Glucose()}</p>
                        <p class="card-text"><small class="text-muted">Date: ${Diabetes.getDate_of_Tracking()}</small></p>
                        <a href="delete?id=${Diabetes.getId()}" class="btn btn-danger">Delete</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>






</body>
</html>
