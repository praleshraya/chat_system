<!DOCTYPE html>
<?php include 'db.php'; ?>
<html>
<head>
	<title>chat system </title>
	<link rel="stylesheet" href="style.css" media="all"/>

	<script>
		 
		 function ajax()
		 {
		 	var req = new XMLHttpRequest();

		 	req.onreadystatechange = function()
		 	{
		 		if(req.readyState==4 && req.status==200)
		 		{
		 			document.getElementById('chat').innerHTML= req.responseText;
		 		}
		 	}
		 	req.open('POST','chat.php',true);
		 	req.send();
		 }
		 setInterval(function(){ajax()},1000); //refresh in 1 seconds
	</script>
</head>

<body onload="ajax();">

	<div id= "container">
		<div id="chat_box">
				<div id="chat"></div>	
		</div>
		<form action="index.php" method="POST">
			<input type="text" name="name" placeholder="ENTER NAME" />
			<textarea name="msg" placeholder="ENTER MESSAGE"></textarea>
			<input type="submit" name="submit" value="Send It">
		</form>

		<?php
			if(isset($_POST['submit'])){
				$name= $_POST['name'];
				$msg= $_POST['msg'];

				$insert = "INSERT INTO chat(name,msg) VALUES('$name','$msg')";
				$run = $db->query($insert);

				if($run)
				{
					echo "<embed loop='false' src='chat.mp3' hidden='true' autoplay='true'>";
				}
			}
		?>
	</div>
</body>
</html>