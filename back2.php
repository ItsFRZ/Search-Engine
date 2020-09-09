<?php
	
	
		include 'connect.php';
	
	if($_SERVER['REQUEST_METHOD'] === 'POST')
	{
		
		$search = $_POST['ser'];
		
	}
	
	$sql = "SELECT * FROM search WHERE Name Like '$search%'";
	
	$x = mysqli_query($connect,$sql);
	
	
	
	if(mysqli_num_rows($x))
	{
			echo "<html>";
		
				echo "<head>";
					echo "<link rel='stylesheet' href='sheet1.css'>";
				echo "</head>";
				echo "<body>";
					
					echo "<form method='post' action='backend.php>'";
							echo "<br>";
							echo "<input type='text' name='q' placeholder='Search Anything ...'>";
							echo "<input type='submit' value='Search'>";
					
					echo "</form>";
					
					
					while($a = mysqli_fetch_assoc($x))
					{
						
						echo "<div class='container'>";
							echo " ".$a['Name'];
							echo "<br>";
							echo "<br>";
							echo "<br>";
							echo "<br>";
							echo " ".$a['Descr'];
						echo "</div>";
					}
	
				echo "</body>";
		
			echo "</html>";
		
		
	}else{
		echo "Table is empty (Zero Rows) <br>".mysqli_error($connect);
	}
	

	
?>