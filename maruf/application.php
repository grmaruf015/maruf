<?php
	include "header.php";
	include "dbconnect.php";
	
	$sql="SELECT * FROM courses";
	$result=$conn->query($sql);
	
?>		
	<div class="apply">
		<h3 align="center">Application form</h3>
	    <form action="application_action.php" method="POST">
		
			<label>Name</label>
			<input type="text" name="name" placeholder=" Enter Your name">
			<label>Email</label>
			<input type="text" name="email" placeholder=" Enter Your email">
			<label>Phone</label>
			<input type="text" name="phone" placeholder="Enter Your phone">
			<label>Gender</label>
	        <select name="gender" required>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select><br>
			<label>Date of Birth</label>
			<input type="date" name="dob">
			<label>Choose Course</label>
			<select name="course">
			<?php
				while($row=$result->fetch_assoc()){
		echo '<option value="'.$row["id"] .'">'.$row["title"] .'</option>';
				}
			?>
			</select>
			<input type="submit" value="Submit">
		  </form>
	</div>
	
<?php
	include "footer.php";
?>


