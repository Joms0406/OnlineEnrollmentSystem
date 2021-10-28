<?php
include 'header.php';
include 'sidebar.php';
require '../function/function.php';
session_start();
if (!isset($_SESSION['user_id'])) {
    header("location:../login.php");
}
$current_id = $_SESSION['user_id'];
session_destroy();
session_start();
$_SESSION['user_id'] = $current_id;
ob_start(); 
// Establish Database Connection
$conn = connect();
?>
<section class="content-wrapper" style="background-image: url('https://wallpaperforu.com/wp-content/uploads/2021/02/Wallpaper-Attack-Of-Titans-Wallpaper-Anime-Armin-Arlert29-scaled.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center;">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">List of incoming Fourth Year students.</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              <?php
  $sql = "SELECT * FROM students WHERE username IS null AND password IS null";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
      echo 
      "<table id='example2' class='table table-bordered table-hover'>
      <tr>
      <th>Student Name</th>
      <th>Course</th>
      <th>Section</th>
      <th>Option</th>
      </tr>";
      // output data of each row
      while($row = $result->fetch_assoc()) {?>
        <td align="center"><?php echo $row["first_name"] . ' ' . $row['middle_name'] . '  ' . $row['last_name']; ?></td>
        <td align="center"></td>
        <td align="center"></td>
        <td>
          <div class="btn-group">
            <a href="#" type="button" class="btn btn-success">
              <i class="fas fa-edit"></i>
            </a>
            <a href="delete.php" type="button" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this medicine?');" >
              <i class="fas fa-trash"></i>
            </a>
          </div>
        </td>
        </tr><?php
          
          
      }
      echo "</table>";
  } else {
      echo "0 results";
  }
  ?>
              </div>
            </div>
<?php include 'footer.php';
?>
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>