<?php

include "dbconnect.php";

$id = $_POST['id'];
$name=$_POST['name'];
$designation=$_POST['designation'];
$salary=$_POST['salary'];
$phone=$_POST['phone'];
$joining_date=$_POST['joining_date'];




$sql = "UPDATE instructor SET name='$name', designation='$designation', salary='$salary', phone='$phone', joining_date='$joining_date' WHERE id=$id";
$result=$conn->query($sql);

if ($result) {
    header("Location:index.php");
} else {
    echo "Error updating record: " . $conn->error;
}

$conn->close();


exit();
?>
