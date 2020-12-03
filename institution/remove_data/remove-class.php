<?php

// Include config file
require_once "../config.php";


$group_id=(int)$_GET['group_id'];   // get the student id  



 

// sql to delete a record
$sql = "DELETE FROM groups WHERE id='$group_id'";



 if ($connect->query($sql) === TRUE) {
    echo "<script>
    alert('The Class Deleted Successfully');
    window.location.href='../show_data/search-classes.php';
    </script>";
} else {
    echo "Error deleting record: " . $connect->error;
}

$connect->close();

    

?>

