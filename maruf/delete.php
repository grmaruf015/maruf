<?php
include "dbconnect.php";

$id = $_GET['id'];
$sql = "DELETE FROM applicant WHERE id=$id";

if ($conn->query($sql) === TRUE) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . $conn->error;
}

header("Location: index.php");
exit();
?>
