<?php
// Initialize the session
session_start();

// Check if the user is logged in, if not then redirect him to login page
if (!isset($_SESSION["logged_in"]) || $_SESSION["logged_in"] !== true) {
    header("location: ../login.php");
    exit;
}
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Search</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css?family=Coustard|Lato&display=swap" rel="stylesheet">

    <style>
        body {

            background-image: url("../images/back22.jpg");

            background-size: cover;


        }

        .navtitle {
            font-family: 'Lato', sans-serif;
        }

        .heads {
            font-family: 'Coustard', serif;
            font-size: 50px;
            color: #ffffff;
            padding-top: 1%;
        }

        .navbar {
            box-shadow: 0 3px 4px rgba(0, 0, 0, 0.16), 0 3px 4px;
        }
    </style>
</head>

<body>

    <!-- Grey with black text -->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">

        <div class="container">
            <a class="navbar-brand" href="../welcome.php">
                <h1 class="text-center navtitle">Parent-Teacher Association (PTA)</h1>
            </a>


            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item dropdown ">
                    <a class="navbar-toggler-icon" href="#" id="navbardrop" data-toggle="dropdown"></a>
                    <div class="dropdown-menu">

                        
                        <a class="dropdown-item" href="../welcome.php">Home</a>
                        <a class="dropdown-item" href="../reset-password.php">Reset Password</a>
                        <a class="dropdown-item" href="../logout.php">Log out</a>

                    </div>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container" style="padding-top: 1%;  opacity: 0.9; ">

        <div class="row row h-100 justify-content-center align-items-center">
            <div class="card" style="width: 18rem; height: 20rem; margin: 2%;">
               
                <div class="card-body">
                <img src="../images/student-icon.png" class="card-img-top mx-auto d-block" alt="student icon" style="width: 50%; height: 50%;" >
                    <div class="col-md-12 text-center">
                        <h5 class="card-title">Students</h5>
                        <p class="card-text">Search Students.</p>
                        <a href="search-students.php" class="btn btn-primary">Students</a>
                    </div>
                </div>
            </div>
            <div class="card" style="width: 18rem; height: 20rem; margin: 2%;">
                
                <div class="card-body">
                <img src="../images/teacher-icon.png" class="card-img-top mx-auto d-block" alt="parent icon" style="width: 50%; height: 50%;" >
                    <div class="col-md-12 text-center">
                        <h5 class="card-title">Parents</h5>
                        <p class="card-text">Search Parents.</p>
                        <a href="search-parents.php" class="btn btn-primary">Parents</a>
                    </div>
                </div>
            </div>

<!-- Teachers            -->
            <div class="card" style="width: 18rem; height: 20rem; margin: 2%;">
                <div class="card-body">
                <img src="../images/parent-icon.png" class="card-img-top mx-auto d-block" alt="teacher icon" style="width: 50%; height: 50%;" >
                    <div class="col-md-12 text-center">
                        <h5 class="card-title">Teachers</h5>
                        <p class="card-text">Search Teachers.</p>
                        <a href="search-teachers.php" class="btn btn-primary">Teachers</a>
                    </div>
                </div>
            </div>

        </div>

        <div class="row row h-100 justify-content-center align-items-center">
            



<!-- Emergency people                 -->
            <div class="card" style="width: 18rem; height: 22rem; margin: 2%;">
                
                <div class="card-body">
                <img src="../images/emergency-people-icon.png" class="card-img-top mx-auto d-block" alt="emergency people icon" style="width: 50%; height: 45%;" >
                    <div class="col-md-12 text-center">
                        <h5 class="card-title">Emergency people</h5>
                        <p class="card-text">Show Emergency People.</p>
                        <a href="search-people-emergency.php" class="btn btn-primary">Emergency People</a>
                    </div>
                </div>
            </div>


<!-- fees -->
            <div class="card" style="width: 18rem; height: 22rem; margin: 2%;">
                
                <div class="card-body">
                <img src="../images/fees-icon.png" class="card-img-top mx-auto d-block" alt="fees icon" style="width: 50%; height: 45%;" >
                    <div class="col-md-12 text-center">
                        <h5 class="card-title">Fees</h5>
                        <p class="card-text">Show Fees.</p>
                        <a href="search-fees.php" class="btn btn-primary">Fees</a>
                    </div>
                </div>
            </div>
         

            </div>

            


        </div>
    </div>

</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>