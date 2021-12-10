<!DOCTYPE HTML>
<?php
$page = $_SERVER['PHP_SELF'];
$sec = "1";
?>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<title> System kontroli pomieszczenia</title>
	<link href="stylee.css" rel="stylesheet" type="text/css" />
	<meta http-equiv="refresh" content="<?php echo $sec?>;URL='<?php echo $page?>'">
</head>

<body>
	<div id=container>

		<div id=logo>
			Sensors subpage
		</div>
<div id=logo3>
	<?php
	echo date('d.m.Y');
	?>
	</div>
	<div id=logo2> 
	
	<div id="czas"></div>
<script type="text/javascript">
function getTime() 
{
    return (new Date()).toLocaleTimeString();
}
document.getElementById('czas').innerHTML = getTime();
 
setInterval(function() {
 
    document.getElementById('czas').innerHTML = getTime();
     
}, 1000);
</script>
	</div>
		<div id=content>
			<!--LED Panel-->
			<BUTTON>
				CO status 
			<?php
			$conn = new mysqli("localhost", "root", "", "it4") or die("error");
			
			$wynik = $conn->query("SELECT * FROM sensors ORDER BY ID DESC LIMIT 1");
			
			if($wynik->num_rows > 0)
			{
				while($wiersz=$wynik->fetch_assoc() )
				{
					echo $wiersz["smoke"] ;
				}
			
			}
			$conn->close();
			?>
			</BUTTON>
			<BUTTON>
				Quality of air
							<?php
			$conn = new mysqli("localhost", "root", "", "it4") or die("error");
			
			$wynik = $conn->query("SELECT * FROM sensors ORDER BY ID DESC LIMIT 1");
			
			if($wynik->num_rows > 0)
			{
				while($wiersz=$wynik->fetch_assoc() )
				{
					echo $wiersz["gas"];
				}
			
			}
			
			$conn->close();
			?>
			</BUTTON>
			<BUTTON>
				door status
				<?php
			$conn = new mysqli("localhost", "root", "", "it4") or die("error");
			
			$wynik = $conn->query("SELECT * FROM sensors ORDER BY ID DESC LIMIT 1");
			
			if($wynik->num_rows > 0)
			{
				while($wiersz=$wynik->fetch_assoc() )
				{
					echo $wiersz["doors"] ;
				}
			
			}
			$conn->close();
			?>
			</BUTTON>

			</br>
			<BUTTON>
				Temperature
					<?php
			$conn = new mysqli("localhost", "root", "", "it4") or die("error");
			
			$wynik = $conn->query("SELECT * FROM sensors ORDER BY ID DESC LIMIT 1");
			
			if($wynik->num_rows > 0)
			{
				while($wiersz=$wynik->fetch_assoc() )
				{
					echo $wiersz["temperature"] ;
				}
			
			}
			$conn->close();
			?>
			</BUTTON><br/>
			<BUTTON>
				Humidity
							<?php
			$conn = new mysqli("localhost", "root", "", "it4") or die("error");
			
			$wynik = $conn->query("SELECT * FROM sensors ORDER BY ID DESC LIMIT 1");
			
			if($wynik->num_rows > 0)
			{
				while($wiersz=$wynik->fetch_assoc() )
				{
					echo $wiersz["humidity"] ;
				}
			
			}
			$conn->close();
			?>
			</BUTTON><br/>
			<BUTTON onClick="parent.location.href='main.php'">
				Main page
			</BUTTON>
		</div>
		
		 
			<div id=coppy>
	Coppyright by Michał Padło and Aleksander Porębski
	</div></br>
	</div>
</body>

</html>