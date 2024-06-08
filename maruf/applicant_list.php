<?php
	include "header.php";
	include "dbconnect.php";

	$sql = "SELECT * FROM applicant";
	$result = $conn->query($sql);
?>

<h1 align="center">Applicant List</h1>
<table>
	<tr>
		<th>SL</th>
		<th>Name</th>
		<th>Email</th>
		<th>Phone</th>
		<th>Gender</th>
		<th>Date of Birth</th>
		<th>Selected Course</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<?php
		while($row=$result->fetch_assoc()){
			echo "<tr>"; 
			echo "<td>".$row["id"] ."</td>";	
			echo "<td>".$row["name"] ."</td>";	
			echo "<td>".$row["email"]."</td>";	
			echo "<td>".$row["phone"]."</td>";	
			echo "<td>".$row["gender"]."</td>";	
			echo "<td>".$row["dob"]."</td>";	
			echo "<td>".$row["course_id"]."</td>";
			echo "<td><a href='edit.php?id=".$row["id"]."'>Edit</a></td>";
			echo "<td><a href='delete.php?id=".$row["id"]."' onclick='return confirm(\"Are you sure you want to delete this record?\");'>Delete</a></td>";
			echo "</tr>"; 
		}
	?>
</table>

<?php
	include "footer.php";
?>		
