<?php
  require "../function/function.php";
 
$conn = connect();

mysqli_query($conn, "DELETE FROM students WHERE student_id='".$_GET['id']."'");  
header('location: ../admin/admin1st.php');
?>
