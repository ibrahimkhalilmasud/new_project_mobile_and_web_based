<?php
// this page for live searching to use it with ajax
// Initialize the session
session_start();

// Check if the user is logged in, if not then redirect him to login page
if (!isset($_SESSION["logged_in"]) || $_SESSION["logged_in"] !== true) {
  echo "<br/>"."Please Login"."<br/>";
    exit;
}

  require_once "../config.php";
 
  if (isset($_POST['query'])) {

   

  $query = "SELECT * FROM groups  WHERE name LIKE '{$_POST['query']}%' AND groups.school_id='{$_SESSION['id']}'";
    $result = mysqli_query($connect, $query);
 
  if (mysqli_num_rows($result) > 0) {
     while ($user = mysqli_fetch_array($result)) {

      echo "<br/>";
      echo"<a style='color: #ffffff;  padding-top: 2px;' href=\"../show_data/show-students-class.php?group_control_id=".$user['id']."\">";
      echo "ID : ".$user['id']."<br/>";
      echo "Name : ".$user['name']."<br/>";
      echo "subject : ".$user['subject']."<br/>";
      echo "</a> <hr style=' border-width: 2px;'>";
      
      
      
      
    }
  } else {
    echo "<p style='color:red'>Groups not found...</p>";
  }
 
}
?>