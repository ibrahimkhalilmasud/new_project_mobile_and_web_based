<?php

// Include config file
require_once "../config.php";



$sibling_id=(int)$_GET['sibling_id'];   // get the student id  



 

// sql to delete a record
$sql = "DELETE FROM sibling WHERE id='$sibling_id'";



 if ($connect->query($sql) === TRUE) {
    echo "<script>
    alert('This sibling Deleted Successfully');
    window.location.href='../show_data/search-sibling.php';
    </script>";
} else {
    echo "Error deleting record: " . $connect->error;
}

$connect->close();

    

?>

