<?php
	
	
		include 'connect.php';
	
	if($_SERVER['REQUEST_METHOD'] === 'POST')
	{
		
		$search = $_POST['ser'];
		
	}
	
	$sql = "SELECT * FROM searchengine WHERE Name Like '$search%'";
	
	$x = mysqli_query($connect,$sql);
	
	
	
	if(mysqli_num_rows($x))
	{
			echo "<html>";
		
				echo "<head>";
					echo "<link rel='stylesheet' href='sheet1.css'>";
					echo "<link rel='stylesheet' href='sheet2.css'>";
					echo "<title>PandoraX</title>";
				echo "</head>";
				echo "<body>";
					
					echo "<form method='post' action='backend.php'>";
						echo "<br>";
						echo "<div class='st1'>";	
							echo "<input class='st' type='text' name='ser' placeholder='Search Anything ...'>";
						
							echo "<input class='sb' type='submit' value='Search'>";
						echo "</div>";
							
				
					echo "</form>";
					
					
					while($a = mysqli_fetch_assoc($x))
					{
						echo "<div class='container'>";
							echo "<span id='name'>".$a['Name']."</span>";
							echo "<br>";
							echo "<span id='url'>".$a['Url']."</span>";
						echo "</div>";
					}
	
				echo "</body>";
		
			echo "</html>";
		
		
	}else{
		echo "Table is empty (Zero Rows) <br>".mysqli_error($connect);
	}
	

	
?>