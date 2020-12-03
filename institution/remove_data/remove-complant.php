<?php

// Include config file
require_once "../config.php";



$complant_id=(int)$_GET['complant_id'];   // get the medication id  


// sql to delete a record
$sql = "DELETE FROM complaints WHERE id='$complant_id'";



 if ($connect->query($sql) === TRUE) {
    echo "<script>
    alert('Complant Deleted Successfully');
    window.location.href='../show_data/search-complaints.php';
    </script>";
} else {
    echo "Error deleting record: " . $connect->error;
}

$connect->close();

    

?>

