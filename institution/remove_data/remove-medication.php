<?php

// Include config file
require_once "../config.php";



$medication_id=(int)$_GET['medication_id'];   // get the medication id  


// sql to delete a record
$sql = "DELETE FROM medication WHERE id='$medication_id'";



 if ($connect->query($sql) === TRUE) {
    echo "<script>
    alert('Medication Deleted Successfully');
    window.location.href='../show_data/search-medications.php';
    </script>";
} else {
    echo "Error deleting record: " . $connect->error;
}

$connect->close();

    

?>

