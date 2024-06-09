<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>Bootstrap Example</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<style>


    body, html {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-color: #ffddd3;


    }
    .header {
        background-color: #2D799C;
        color: white;
        padding: 10px 0;
        border-bottom-right-radius: 100rem 5rem;
        border-bottom-left-radius: 100rem 5rem;
    }

    .container {
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
        background-color: #2D799C;
        color: white;
        padding: 20px 0;
        font-size: 3rem; /* La valeur la plus grande est conservée */
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
    <div class="container">
        <div class="logo">
            <img src="logo.png" alt="Logo">
            <span>Diabete Tracker</span>
        </div>
        <nav class="nav">
            <ul class="ul">
                <li><a class="a" href="/DiabetesTracker_war_exploded/">Home</a></li>
                <li><a class="a" href="#">Registration</a></li>
                <li><a class="a"  href="#">Chart</a></li>
                <div class="dropdown">
                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown link
                    </a>

                    <ul class="dropdown-menu" style="">
                        <li><a class="dropdown-item" href="#">Via</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
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
        <h1 class="page-title">registration</h1>
    </div>

</header>



<form method="post" action="save">
    <input type="date" name="date_of_Tracking">
    <input type="time" name="time_of_tracking">
    <input type="number" name="value_Glucose">
    <button type="submit">add</button>
</form>


<a href="/DiabetesTracker_war_exploded/ShowInfo">
    Page show
</a>
</body>
</html>