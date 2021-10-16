<?php 
require 'function/function.php';
session_start();
if (!isset($_SESSION['student_id'])) {

}
session_destroy();
session_start();
ob_start(); 
// Establish Database Connection
$conn = connect();
?>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/57ce411ce4.js" crossorigin="anonymous"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>University of Manila</title>
<link rel="stylesheet" href="css/main.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif&display=swap" rel="stylesheet">
</head>
<body>
	<section>
  <div class ="logo">
		<img src="img/Logo.png" alt="logo"></div>
<h1 class="heading">The University of Manila</h1>
<h2 class="heading2">• Patria • Sciencia • Virtus </h1>
</div>
</section>

<nav>
<div class="navbar">
  <a href="home.php">Home</a>
  <a href="login.php">Login</a>
  <a class="active" href="admission.php">Admission</a>
</div>
</nav>

<div class="container">
  <p>List of Requirements you to upload to proceed to the next Step</p>
  <center><select id="mySelect" onchange="myFunction()"></center>
        <option></option>
        <option value="1">Freshmen</option>
        <option value="2">Transferee</option>
  </select>
  <p id="demo"></p>
  <script>
    function myFunction() {
          var s = document.getElementById('mySelect');
        var item1 = s.options[s.selectedIndex].value;

        if (item1 == 1) {
          document.getElementById("demo").innerHTML = "<p>• Original Form 138/ST-9SHS (Learner's Progress Report Card)</p><p>• Form 137/ SF10-SHS (Learner's Permanent Academic Record) </p><p> • PSA Issued Birth Certificate</p>";
        }
        else if (item1 == 2) {
          document.getElementById("demo").innerHTML = "<p>• Original Form 138/ST-9SHS (Learner's Progress Report Card)</p><p>• Form 137/ SF10-SHS (Learner's Permanent Academic Record)</p>";
        }
        else{
          document.getElementById("demo").innerHTML = "";
        }
    }
  </script>
 <div class="content">
  <label for="myfile">Select files:</label>
  <input type="file" id="myfile" name="myfile" multiple><br><br>
  </div>
  
  <button class="button-next" action="basicinfo.html" type="submit">Next</button>

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