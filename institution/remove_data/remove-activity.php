<?php

// Include config file
require_once "../config.php";



$activity_id=(int)$_GET['activity_id'];   // get the student id  


// sql to delete a record
$sql = "DELETE FROM activities WHERE id='$activity_id'";



 if ($connect->query($sql) === TRUE) {
    echo "<script>
    alert('activity Deleted Successfully');
    window.location.href='../show_data/search-activities.php';
    </script>";
} else {
    echo "Error deleting record: " . $connect->error;
}

$connect->close();

    

?>

