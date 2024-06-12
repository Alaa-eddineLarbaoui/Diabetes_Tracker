<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>Registration</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>



</head>
<style>


    body, html {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        /*background-color: #ffddd3;*/
        background-color: #f8f9fa;


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

    .logo {
        display: flex;
        align-items: center;
    }

    .logo img {
        height: 50px;
        margin-right: 0px;
        padding-bottom: 8px;
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
        margin-top: 50px;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        background-color: #FCEDE9;
        align-content: center;
        height: 190px;
        max-width: none;
    }

    h1 {
        text-align: center;
        color: #268fd0;
        margin: 50px auto;
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
        margin: 10px 0;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
        background-color: #fe5353; /* Nouvelle couleur de fond */
        color: #333; /* Nouvelle couleur du texte */
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button[type="submit"]:hover {
        background-color: #FAB4C0; /* Couleur de fond au survol */
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
        width: 60%;
    }





</style>
<body>

<header class="header">
    <div class="container1">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/resources/img/image.png" alt="Logo">
            <span>Diabete Tracker</span>
        </div>
        <nav class="nav">
            <ul class="ul">
                <li><a class="a" href="/DiabetesTracker_war_exploded/">Home</a></li>
                <li><a class="a" href="#">Registration</a></li>
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
        <h1 class="page-title">Registration</h1>
    </div>

</header>


<h1>Formulaire de suivi du diabate</h1>


<div class="container">

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
            <div class="btn2">
                <button type="submit">
                    Ajouter <i class="bi bi-plus"></i>
                </button>
            </div>
        </div>



    </form>
</div>



</body>
</html>