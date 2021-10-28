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
$current_id = $_SESSION['student_id'];


$profilesql = "SELECT * FROM students,enrollment,curriculum,courses,yearlevel 
WHERE students.student_id = $current_id 
AND students.student_id = enrollment.student_id
AND enrollment.curriculum_id = curriculum.curriculum_id
AND courses.course_id = curriculum.course_id
AND yearlevel.year_level_id = curriculum.year_level_id ";
$profilequery = mysqli_query($conn, $profilesql);
$row = mysqli_fetch_assoc($profilequery);

//All available year Level
$yearsql = "SELECT * FROM yearlevel";
$result1 = mysqli_query($conn, $yearsql);
$coursesql = "SELECT * FROM courses";
$result2 = mysqli_query($conn, $coursesql);

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
    <a href="login.php">Login</a>
    <a class="active" href="admission.php">Admission</a>
  </div><?php
  }
  else{
    ?><div class="navbar">
    <a href="home.php">Home</a>
    <a  href="myprofile.php">My Profile</a>
    <a class="active" href="admission1.php">Admission</a>
  </div><?php
  }
?>

<div class="container1">
	<form id="form1">
		<h3>PERSONAL DETAILS</h3>
		<table>
			<tr>
				<th>First Name:</th>
    			<th>Middle Name:</th>
    			<th>Last Name:</th>
			</tr>
			<tr>
			  <td><input type="text" value= "<?php echo $row['first_name']?>" placeholder="Enter Here"></td>
			  <td><input type="text" value= "<?php echo $row['middle_name']?>" placeholder="Enter Here"></td>
			  <td><input type="text" value= "<?php echo $row['last_name']?>" placeholder="Enter Here"></td>
			</tr>
			<tr>
				<th>Last School Attended:</th>
    			<th>Course:</th>
    			<th>Year:</th>
			</tr>
			<tr>
			  <td><input type="text"  <?php if ($row['last_school_attended'] !=null) {
    											?> value= "<?php echo $row['last_school_attended'] ?>"
											<?php } 
											  ?> placeholder="Enter Here"></td>
				<td>							  
			<select>
				<?php while($row2 = mysqli_fetch_array($result2)):;?>

            		<option value="<?php echo $row2[0];?>" <?php if($row2[1] == $row['course_name']){?>selected<?php } ?>><?php echo $row2[1];?></option>

            		<?php endwhile;?>

			  </select>
			  <td>
				<select>
				<?php while($row1 = mysqli_fetch_array($result1)):;?>

            		<option value="<?php echo $row1[0];?>" <?php if($row1[1] == $row['year_level']){?>selected<?php } ?>><?php echo $row1[1];?></option>

            		<?php endwhile;?>

			  </select>
			</td>
			</tr>
			<tr>
				<th>Gender:</th>
    			<th>Date of Birth:</th>
    			<th>Address:</th>
			</tr>
			<tr>
				<td>
				<select name="gender">
					<option  value="Male" <?php if($row['gender'] == "Male"){ ?> selected <?php } ?>>Male</option>
					<option  value="Female" <?php if($row['gender'] == "Female"){ ?> selected <?php } ?>>Female</option>
					<option  value="No Comment" <?php if($row['gender'] == "No Comment"){ ?> selected <?php } ?>>No Comment</option>
			  </select>
				</td>
				<td>
					<input type="date" id="birthday" <?php if ($row['birth_date'] !=null) {
    											?> value= "<?php echo $row['birth_date'] ?>"
											<?php } 
											  ?> name="birthday">
				</td>
				<td>
					<input type="text" <?php if ($row['address'] !=null) {
    											?> value= "<?php echo $row['address'] ?>"
											<?php } 
											  ?> placeholder="Enter Here"></td>
				</td>
			</tr>
			<tr>
				<th>Contact:</th>
    			<th>Email Address:</th>
			</tr>
			<tr>
				<td><input type="text" value= "<?php echo $row['contact']?>" placeholder="Enter Here"></td>
				<td><input type="text" value= "<?php echo $row['email_address']?>" placeholder="Enter Here"></td>
			</tr>
		  </table>
        

		<div class="btn">
			<button type="button" id="nxt1">Next</button>
		</div>
	</form>

	<form id="form2">
		<h3>Parent Information</h3>
		<table>
			<tr>
				<th>Father Name:</th>
    			<th>Occupation:</th>
    			<th>Contact No.:</th>
			</tr>
			<tr>
			  <td><input type="text"<?php if ($row['father_name'] !=null) {
    											?> value= "<?php echo $row['father_name'] ?>"
											<?php } 
											  ?> placeholder="Enter Here"></td>
			  <td><input type="text" <?php if ($row['father_occupation'] !=null) {
    											?> value= "<?php echo $row['father_occupation'] ?>"
											<?php } 
											  ?> placeholder="Enter Here"></td>
			  <td><input type="text" <?php if ($row['father_phone_number'] !=null) {
    											?> value= "<?php echo $row['father_phone_number'] ?>"
											<?php } 
											  ?> placeholder="Enter Here"></td>
			</tr>
			<tr>
				<th>Mother Name:</th>
    			<th>Occupation:</th>
    			<th>Contact No.:</th>
			</tr>
			<tr>
			<td><input type="text"<?php if ($row['mother_name'] !=null) {
    											?> value= "<?php echo $row['mother_name'] ?>"
											<?php } 
											  ?> placeholder="Enter Here"></td>
			  <td><input type="text" <?php if ($row['mother_occupation'] !=null) {
    											?> value= "<?php echo $row['mother_occupation'] ?>"
											<?php } 
											  ?> placeholder="Enter Here"></td>
			  <td><input type="text" <?php if ($row['mother_phone_number'] !=null) {
    											?> value= "<?php echo $row['mother_phone_number'] ?>"
											<?php } 
											  ?> placeholder="Enter Here"></td>
			</tr>
			<tr>
				<th>Guardian:</th>
    			<th>Occupation:</th>
    			<th>Contact No.:</th>
			</tr>
			<tr>
			<td><input type="text"<?php if ($row['guardian_name'] !=null) {
    											?> value= "<?php echo $row['guardian_name'] ?>"
											<?php } 
											  ?> placeholder="Enter Here"></td>
			  <td><input type="text" <?php if ($row['guardian_occupation'] !=null) {
    											?> value= "<?php echo $row['guardian_occupation'] ?>"
											<?php } 
											  ?> placeholder="Enter Here"></td>
			  <td><input type="text" <?php if ($row['guardian_phone_number'] !=null) {
    											?> value= "<?php echo $row['guardian_phone_number'] ?>"
											<?php } 
											  ?> placeholder="Enter Here"></td>
			</tr>
		</table>

		<center><input type="checkbox" value="lsRememberMe" id="rememberMe"> <label for="rememberMe">Remember me</label></center>
		
		<div class="btn">
			<button type="button" id="bck1">Back</button>
			<button type="button" id="nxt2">Next</button>
		</div>
	</form>

	<form id="form3">
		<p>List of payment methods you to upload to proceed to the next step</p>
		<select id="mySelect" onchange="myFunction()">
        <option></option>
        <option value="1">Unionbank</option>
        <option value="2">BDO</option>
		<option value="3">GCash</option>
		<option value="4">Metrobank</option>
  </select>
  <p id="demo"></p>
  <script>
    function myFunction() {
          var s = document.getElementById('mySelect');
        var item1 = s.options[s.selectedIndex].value;

        if (item1 == 1) {
          document.getElementById("demo").innerHTML = "<center><p style=font-size: 20px;><b>Deposit on this account number (Unionbank only)</b></p><br><p> 1234-1234-1234-1234 </p></center>";
        }
        else if (item1 == 2) {
          document.getElementById("demo").innerHTML = "<center><p><b>Deposit on this account number (BDO only)</b></p><br><p> 4354-3456-3268-8765 </p></center>";
        }
		else if (item1 == 3) {
          document.getElementById("demo").innerHTML = "<center><p><b>Gcash Account:</b></p><br><p>09195754642</p></center>";
        }
		else if (item1 == 4) {
          document.getElementById("demo").innerHTML = "<center><p><b>Deposit on this account number (Metrobank only)</b></p><br><p> 0000-2434-4535-6970 </p></center>";
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

  <div class="btn">
	<button type="button" id="bck2">Back</button>
	<button type="submit">Submit</button>
</div>
	</form>

	<div class="step-row">
		<div id="progress"></div>
		<div class="step-col"><small>Step 1</small></div>
		<div class="step-col"><small>Step 2</small></div>
		<div class="step-col"><small>Step 3</small></div>
	</div>
</div>

<footer>
        <div class="footer-content">
            <p><i class="fas fa-map-marker-alt"></i> 546 MV delos Santos St., Sampaloc, Manila, Metro Manila</p>
            <p><i class="fas fa-phone"></i> 8735-5085</p>
            <p><i class="far fa-envelope"></i> umnla.edu.ph@gmail.com</p>
        </div>
    </footer>
</body>
<script>
	var form1 = document.getElementById('form1');
	var form2 = document.getElementById('form2');
	var form3 = document.getElementById('form3');

	var nxt1 = document.getElementById('nxt1');
	var nxt2 = document.getElementById('nxt2');

	var bck1 = document.getElementById('bck1');
	var bck2 = document.getElementById('bck2');

	var progress = document.getElementById('progress');

	nxt1.onclick = function()
	{
		form1.style.left = "-900px";
		form2.style.left = "80px";
		progress.style.width = "480px";
	}
	bck1.onclick = function()
	{
		form1.style.left = "80px";
		form2.style.left = "900px";
		progress.style.width = "240px";
	}
	nxt2.onclick = function()
	{
		form2.style.left = "-900px";
		form3.style.left = "80px";
		progress.style.width = "720px";
	}
	bck2.onclick = function()
	{
		form2.style.left = "80px";
		form3.style.left = "900px";
		progress.style.width = "480px";
	}
</script>
</html>