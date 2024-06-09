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

    /* le style de formulaire d'enregistrement :  */

    .container {
        width: 100%;
        margin: 50px auto;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        background-color: #FCEDE9;
        border-top-right-radius: 100rem 5rem;
        border-top-left-radius: 100rem 5rem;
        max-width: none;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    input[type="date"],
    input[type="time"],
    input[type="number"],
    button[type="submit"] {
        margin: 10px 0;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }

    button[type="submit"] {
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button[type="submit"]:hover {
        background-color: #0056b3;
    }

    .input {
        display: flex;
        justify-content: space-between;
        width: 65%;
        align-items: center;
        margin-top: 20px;
        margin-bottom: 10px;
    }

    .input div {
        flex-grow: 1;
        margin-right: 10px;
    }

    .input div:last-child {
        margin-right: 0;
    }
    .btn2{
        display: flex;
        justify-content: end;
        width: 60%;
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
                <li><a class="a" href="#">Registration</a></li>
                <li><a class="a"  href="#">Chart</a></li>

                <div class="dropdown">
                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Food
                    </a>
                    <ul class="dropdown-menu" style="">
                        <li><a class="dropdown-item" href="#">meats</a></li>
                        <li><a class="dropdown-item" href="#">fruits</a></li>
                        <li><a class="dropdown-item" href="#">vegetables</a></li>
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


<div class="container">
    <h1>Formulaire de suivi du diabète</h1>
    <form method="post" action="save">


        <div class="input">
            <div>
                <input type="date" name="date_of_Tracking" required>
            </div>
            <div>
                <input type="time" name="time_of_tracking" required>
            </div>
            <div>
                <input type="number" name="value_Glucose" placeholder="Niveau de glucose (mg/dL)" required>
            </div>
        </div>

        <div class="btn2">
            <button type="submit">Ajouter</button>
        </div>

    </form>
</div>


<a href="/DiabetesTracker_war_exploded/ShowInfo">
    Page show
</a>
</body>
</html>