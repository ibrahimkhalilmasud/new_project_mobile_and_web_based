<?php

// Include config file
require_once "../config.php";



$parent_id=(int)$_GET['parent_id'];   // get the student id  


// sql to delete a record
$sql = "DELETE FROM parents WHERE id='$parent_id'";



 if ($connect->query($sql) === TRUE) {
    echo "<script>
    alert('Parent Deleted Successfully');
    window.location.href='../show_data/search-parents.php';
    </script>";
} else {
    echo "Error deleting record: " . $connect->error;
}

$connect->close();

    

?>

