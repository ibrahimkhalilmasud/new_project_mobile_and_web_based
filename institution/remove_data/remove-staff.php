<?php

// Include config file
require_once "../config.php";



$staff_id=(int)$_GET['staff_id'];   // get the student id  


// sql to delete a record
$sql = "DELETE FROM staffs WHERE id='$staff_id'";



 if ($connect->query($sql) === TRUE) {
    echo "<script>
    alert('Staff Member Deleted Successfully');
    window.location.href='../show_data/search-staffs.php';
    </script>";
} else {
    echo "Error deleting record: " . $connect->error;
}

$connect->close();

    

?>

