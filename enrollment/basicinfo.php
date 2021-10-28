<?php 
require 'function/function.php';
$conn = connect();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $first_name = $_POST['first_name'];
  $middle_name = $_POST['middle_name'];
  $last_name = $_POST['last_name'];
  $email_address = $_POST['email_address'];
  $contact = $_POST['contact'];
  $course = $_POST['course'];
  

       $sql = "INSERT INTO students (first_name, middle_name, last_name, email_address, contact) 
       VALUES ('$first_name', '$middle_name', '$last_name', '$email_address', '$contact')";
      
     $query = mysqli_query($conn, $sql);
     if($query){
     $query = mysqli_query($conn, "SELECT student_id FROM students WHERE email_address = '$email_address'");
     $row = mysqli_fetch_assoc($query);
     $_SESSION['student_id'] = $row['student_id'];
     $student_id = $_SESSION['student_id'];

     header("location:home.php");
    }
}
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
  <a class="active" href="admission.html">Admission</a>
</div>
</nav>

<div class="container1">
	<form id="form1" method="post">
		<h3>BASIC INFORMATION</h3>
        <td>First Name: <input type="text" name="first_name" placeholder="Enter Here"></td>
        <td>Last Name: <input type="text" name="last_name" placeholder="Enter Here"></td>
        <td>Middle Name: <input type="text" name="middle_name" placeholder="Enter Here"></td>
        <td>Email Address: <input type="text" name="email_address" placeholder="Enter Here"></td>
        <td>Contact Number: <input type="text" name="contact" placeholder="Enter Here"></td>
        <td>							  
			<select name="course">
        <?php 
        $coursesql = "SELECT * FROM courses";
        $result2 = mysqli_query($conn, $coursesql); ?>
				<?php while($row2 = mysqli_fetch_array($result2)):;?>

            		<option value="<?php echo $row2['course_id'];?>"><?php echo $row2[1];?></option>
            		<?php endwhile;?>
			  </select>
			  <td>
		<p id="wait">Wait for your Username and Password will be sent at your Email address</p>
    <input type="submit" name="Submit" value="Submit">
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