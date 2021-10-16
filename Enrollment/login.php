<?php 
require 'function/function.php';
session_start();
if (isset($_SESSION['StudentId'])) {
    header("location:myprofile.php");
}
session_destroy();
session_start();
ob_start(); 
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
<div class="navbar">
  <a href="home.html">Home</a>
  <a class="active" href="login.html">Login</a>
  <a  href="admission.html">Admission</a>
</div>
<form method="post" >
<div class="container">
    <div class="content">
       <label for="uname"><b>Username</b></label>
       <input type="text" placeholder="Enter Username" name="uname" required>
   
       <label for="psw"><b>Password</b></label>
       <input type="password" placeholder="Enter Password" name="psw" required>
   
       <button class="button1" type="submit">Login</button>
       <a href="#">Forgot password?</a>
     </div>
   </div>
</form>
<footer>
        <div class="footer-content">
            <p><i class="fas fa-map-marker-alt"></i> 546 MV delos Santos St., Sampaloc, Manila, Metro Manila</p>
            <p><i class="fas fa-phone"></i> 8735-5085</p>
            <p><i class="far fa-envelope"></i> umnla.edu.ph@gmail.com</p>
        </div>
    </footer>
</body>
</html>
<?php
$conn = connect();

if ($_SERVER['REQUEST_METHOD'] == 'POST') { // Login process
  $Username = $_POST['uname'];
  $Password = md5($_POST['psw']);
  $query = mysqli_query($conn, "SELECT * FROM student WHERE Username = '$Username' AND Password = '$Password'");
  if($query){
      if(mysqli_num_rows($query) == 1) {
          $row = mysqli_fetch_assoc($query);
          $_SESSION['StudentId'] = $row['StudentId'];
          header("location:myprofile.php");
      }
    }
  }
?>