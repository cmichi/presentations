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
		<div class="chat">
			<h3>Chat with other visitors</h3>
			<form action="#" method="GET">
				<label for="term">Message:</label>
				<input type="text" name="msg" value="">

				<input type="submit" value="Send!">
			</form>


			<ul id="last-msgs">
				<li>Last messages:</li>
				<?php
				$term = '';
				if (!empty($_GET['msg'])) {
					$term = "WHERE title LIKE '%" . $_GET['term'] . "%' ";	
						mysql_query("INSERT INTO messages (msg) VALUES ('" . $_GET['msg'] . "')") 
						or die(mysql_error());
				} 
				
				$res = mysql_query("SELECT * FROM messages ORDER BY id DESC LIMIT 6") or die(mysql_error());
				while($row = mysql_fetch_array($res)) { 
					echo '<li>' . $row['msg'] . '</li>';
				}
				?>
			</ul>
		</div>

		<div class="content">
			<p>The result of the fruit voting:</p>
			<?php
			$res = mysql_query('SELECT COUNT(*) AS cnt FROM votes WHERE `for` = "pineapple"') or die(mysql_error());
			while($row = mysql_fetch_array($res)) { 
				echo '<p>Pineapple: ' . $row[0] . '</p>';
			}
			?>
			<?php
			$res = mysql_query('SELECT COUNT(*) AS cnt FROM votes WHERE `for` = "banana"') or die(mysql_error());
			while($row = mysql_fetch_array($res)) { 
				echo '<p>Banana: ' . $row[0] . '</p>';
			}
			?>
		</div>
		

    </div><!--! end of #main -->

    <footer>

    </footer>
  </div> <!--! end of #container -->
  
</body>
</html>
