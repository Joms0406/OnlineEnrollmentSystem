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
include 'upload.php';

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
<form method = "post">
<div class="container">
  <p>List of requirements you need to upload to proceed for the next step:</p>
 <br> <center><select id="mySelect" onchange="myFunction()"></center>
        <option></option>
        <option value="1">Freshmen</option>
        <option value="2">Transferee</option>
</br>
  </select>
  <p id="demo"></p>
  <script>
    function myFunction() {
          var s = document.getElementById('mySelect');
        var item1 = s.options[s.selectedIndex].value;

        if (item1 == 1) {
          document.getElementById("demo").innerHTML = "<br><p>• Original Form 138/ST-9SHS (Learner's Progress Report Card)</p><p>• Form 137/ SF10-SHS (Learner's Permanent Academic Record) </p><p> • PSA Issued Birth Certificate</p></br>";
        }
        else if (item1 == 2) {
          document.getElementById("demo").innerHTML = "<br><p>• Original Form 138/ST-9SHS (Learner's Progress Report Card)</p><p>• Form 137/ SF10-SHS (Learner's Permanent Academic Record)</p></br>";
        }
        else{
          document.getElementById("demo").innerHTML = "";
        }
    }
  </script>
 <div class="content">
  <label for="requirements">Select files:</label>
  <input type="file" id="requirements" name="requirements"><br><br>
  </div>
  
  <button class="next" name="upload" type="submit">Next</button>

</div>
  </form>
<script>
function showPath(){
    var path = document.getElementById("selectedFile").value;
    path = path.replace(/^.*\\/, "");
    document.getElementById("path").innerHTML = path;
}
</script>
<footer>
        <div class="footer-content">
            <p><i class="fas fa-map-marker-alt"></i> 546 MV delos Santos St., Sampaloc, Manila, Metro Manila</p>
            <p><i class="fas fa-phone"></i> 8735-5085</p>
            <p><i class="far fa-envelope"></i> umnla.edu.ph@gmail.com</p>
        </div>
    </footer>
</body>
</html>