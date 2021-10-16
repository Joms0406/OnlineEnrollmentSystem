<?php 
require 'function/function.php';
session_start();
ob_start();
// Check whether user is logged on or not
// Establish Database Connection
?>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/57ce411ce4.js" crossorigin="anonymous"></script>
<meta charset="utf-8">
<title>University of Manila</title>
<link rel="stylesheet" href="css/main.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif&display=swap" rel="stylesheet">
</head>
<body>
	<div class ="logo">
		<img src="img/Logo.png" alt="logo"></div>
<h1 class="heading">The University of Manila</h1>
<h2 class="heading2">• Patria • Sciencia • Virtus </h1>
<?php
  if (!isset($_SESSION['student_id'])) {
    ?><div class="navbar">
    <a class="active" href="home.php">Home</a>
    <a href="login.php">Login</a>
    <a  href="admission.php">Admission</a>
  </div><?php
  }
  else{
    ?><div class="navbar">
    <a class="active" href="home.php">Home</a>
    <a href="myprofile.php">My Profile</a>
    <a  href="admission.php">Admission</a>
  </div><?php
  }
?>


<div class="column">
		<img src="img/enrollmentlogo.png" alt="enroll">
		<button onclick="location.href = 'admission.php';">Enroll Now</button>
		<h1>Enrollment is ongoing</h1>
		<p> For 2022 - 2023</p>
		<p>Online Enrollment Available</p>
</div>

<footer>
        <div class="footer-content">
            <p><i class="fas fa-map-marker-alt"></i> 546 MV delos Santos St., Sampaloc, Manila, Metro Manila</p>
            <p><i class="fas fa-phone"></i> 8735-5085</p>
            <p><i class="far fa-envelope"></i> umnla.edu.ph@gmail.com</p>
        </div>
    </footer>
</body>
</html>