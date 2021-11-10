<?php
require 'function/function.php';
// Establish Database Connection
$conn = connect();


// Establish Database Connection
$student_id=$_REQUEST['student_id'];
$conn = connect();

$profilesql = "SELECT * FROM students a
WHERE a.student_id = '$student_id'";
$profilequery = mysqli_query($conn, $profilesql);
$row = mysqli_fetch_assoc($profilequery);
$to = $row['email_address'];
$password = '12345678';
$message = "
<html>
<body>
<p>This is your account blah blah blah motherfuvker</p>
<table>
<tr>
<th>Username</th>
<th>Password</th>
</tr>
<tr>
<td>". $to . "</td>
<td>". $password . "</td>
</tr>
</table>
</body>
</html>
";

// Always set content-type when sending HTML email
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

// More headers
$headers .= 'From: '. $to . "\r\n";
 mail($email, 'Test Subject', $message,$headers);
 
 $sql = "UPDATE students SET 
 username = '$email', password = '12345678'
 WHERE student_id = $student_id";
 $query = mysqli_query($conn, $sql);
 if($query){
    header("location:admin/index.php");
 }
 
?>