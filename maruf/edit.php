<?php
include "header.php";
include "dbconnect.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $gender = $_POST['gender'];
    $dob = $_POST['dob'];
    $course_id = $_POST['course_id'];

    $sql = "UPDATE applicant SET name='$name', email='$email', phone='$phone', gender='$gender', dob='$dob', course_id='$course_id' WHERE id=$id";

    if ($conn->query($sql) === TRUE) {
        echo "Record updated successfully";
    } else {
        echo "Error updating record: " . $conn->error;
    }

    header("Location: index.php");
    exit();
} else {
    $id = $_GET['id'];
    $sql = "SELECT * FROM applicant WHERE id=$id";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
}
?>
  

<h1 align="center">Edit Applicant</h1>
<form method="post" action="edit.php">
   <div  style=" border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  width:40%;
  margin:auto;
  margin-top:20px;">
   <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
    <p>Name: <input type="text" name="name" value="<?php echo $row['name']; ?>"></p>
    <p>Email: <input type="email" name="email" value="<?php echo $row['email']; ?>"></p>
    <p>Phone: <input type="text" name="phone" value="<?php echo $row['phone']; ?>"></p>
    <p>Gender: <select name="gender" required>
                <option value="Male" <?php if($row['gender'] == 'Male') echo 'selected'; ?>>Male</option>
                <option value="Female" <?php if($row['gender'] == 'Female') echo 'selected'; ?>>Female</option>
            </select><br>
    <p>Date of Birth: <input type="date" name="dob" value="<?php echo $row['dob']; ?>"></p>
    <p>Selected Course: <input type="text" name="course_id" value="<?php echo $row['course_id']; ?>"></p>
    <p><input type="submit" value="Update"></p>
   </div>
</form>

<?php
include "footer.php";
?>
