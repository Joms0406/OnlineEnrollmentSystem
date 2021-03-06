<?php 
require 'function/function.php';
session_start();
if (!isset($_SESSION['student_id'])) {
    header("location:login.php");
}
$current_id = $_SESSION['student_id'];
session_destroy();
session_start();
$_SESSION['student_id'] = $current_id;
ob_start(); 
// Establish Database Connection
$conn = connect();
$profilesql = "SELECT * FROM students a
    JOIN enrollment b ON a.student_id = b.student_id
    JOIN curriculums c ON c.curriculum_id = b.curriculum_id
    JOIN curriculum_details d ON d.curriculum_id = c.curriculum_id
    JOIN subjects e ON e.subject_id = d.subject_id
    JOIN courses f ON f.course_id = d.course_id
    JOIN yearlevel g ON g.yearlevel_id = d.yearlevel_id
    JOIN schoolyear h ON h.schoolyear_id =  d.schoolyear_id
    JOIN semester i ON i.semester_id = d.semester_id
    WHERE a.student_id = $current_id";

if($profilesql == null){
    
    $profilesql = "SELECT * FROM students a
    WHERE student_id = $current_id";
    $profilequery = mysqli_query($conn, $profilesql);
}
$profilequery = mysqli_query($conn, $profilesql);
$row = mysqli_fetch_assoc($profilequery);
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

<?php
  if (!isset($_SESSION['student_id'])) {
    ?><div class="navbar">
    <a href="home.php">Home</a>
    <a class="active" href="login.php">Login</a>
    <a  href="admission.php">Admission</a>
  </div><?php
  }
  else{
    ?><div class="navbar">
    <a href="home.php">Home</a>
    <a class="active" href="myprofile.php">My Profile</a>
    <a  href="admission1.php">Admission</a>
  </div><?php
  }
?>

<div class="button2">
    <button class="bttn1">Status</button>
    <button class="bttn2">Update</button>
    <button onclick="location.href = 'logout.php';" class="bttn3">Log-out</button>
</div>

<div class="container2">
	<form id="form1">
		<h3>PROFILE INFORMATION</h3>
    <table class="table1">
            <th width= "200px" rowspan="4"><img src="img/Logo.png"></th>
            <td>NAME: <?php echo $row['first_name'] . ' ' . $row['middle_name'] . ' ' . $row['last_name'] ?></td>
        <tr>
            <td>STUDENT ID: <?php echo $row['student_id']?><td>
        </tr>
        <tr>
            <td>COURSE: <?php if($row['course_name']!=null){ 
                echo $row['course_name']; 
                } ?>
                </td>
        </tr>
        <tr>
            <td>BATCH: 2019-2020</td>
        </tr>
        <table class="table2">
        <tr>
            <td>DATE OF BIRTH: <?php echo $row['birth_date']?></td>
        </tr>
        <tr>
            <td>GENDER :<?php echo $row['gender']?></td>
        </tr>
        <tr>
            <td>CONTACT NUMBER: 0999122421</td>
        </tr>
        <tr>
            <td>EMAIL ADDRESS: <?php echo $row['email_address']?></td>
        </tr>
        <tr>
            <td>ADDRESS: <?php echo $row['address']?></td>
        </tr>
        <tr>
            <th>PARENT INFORMATION</th>
        </tr>
        <tr>
            <td>FATHER'S NAME: <?php echo $row['father_name']?></td>
        </tr>
        <tr>
            <td>OCCUPATION: <?php echo $row['father_occupation']?></td>
        </tr>
        <tr>
            <td>CONTACT NUMBER: <?php echo $row['father_phone_number']?></td>
        </tr>
        <tr>
            <td>MOTHER'S NAME: <?php echo $row['mother_name']?></td>
        </tr>
        <tr>
            <td>OCCUPATION: <?php echo $row['mother_occupation']?></td>
        </tr>
        <tr>
            <td>CONTACT NUMBER: <?php echo $row['mother_phone_number']?></td>
        </tr>
        <tr>
            <td>GUARDIAN NAME: <?php echo $row['guardian_name']?></td>
        </tr>
        <tr>
            <td>OCCUPATION: <?php echo $row['guardian_occupation']?></td>
        </tr>
        <tr>
            <td>CONTACT NUMBER: <?php echo $row['guardian_phone_number']?></td>
        </tr>

    </table>
        </table>
		</div>
	</form>
	</form>

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
