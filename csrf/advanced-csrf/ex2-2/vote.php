<?php
session_start();
require_once('../mysql.inc.php')
?>
<!doctype html>
<head>
  <meta charset="utf-8">

  <title>The Fruit Voting</title>

  <link rel="stylesheet" href="./css/style.css">
  <script src="./js/jquery-1.11.1.min.js"></script>
</head>

<body>

  <div id="container">
    <h1>The Fruit Voting</h1>

    <a href="./index.php">Home</a>
    <a href="./voting.php">Voting</a>

    <div id="main" role="main">
	<div class="content">
		<?php 
		if ($_POST['token'] === $_SESSION['token'] 
			&& ($_POST['for'] === 'banana' || $_POST['for'] === 'pineapple')): 

			mysql_query("INSERT INTO votes (`for`) VALUES ('" . $_POST['for'] . "')") 
			or die(mysql_error());
		?>
			<h2>Your voting was successful.</h2>
		<?php 
		else: 
		?>
			<h2>Something went wrong with your voting. Please
			try again.</h2>
		<?php 
		endif; 
		?>
	</div>
    </div><!--! end of #main -->

    <footer>

    </footer>
  </div> <!--! end of #container -->
  
</body>
</html>
