<?php

// Include config file
require_once "../config.php";



$child_feedback_id=(int)$_GET['child_feedback_id'];   // get the student id  


// sql to delete a record
$sql = "DELETE FROM children_feedback WHERE id='$child_feedback_id'";



 if ($connect->query($sql) === TRUE) {
    echo "<script>
    alert('Feedback Deleted Successfully');
    window.location.href='../show_data/search-childeren-feedback.php';
    </script>";
} else {
    echo "Error deleting record: " . $connect->error;
}

$connect->close();

    

?>

