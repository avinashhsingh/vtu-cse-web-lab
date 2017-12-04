<html>
<head><title>Insert Information</title></head>
<body>

<?php
$dbh=mysql_connect('localhost','apache','lamp') or die(mysql_error());
mysql_select_db('student') or die(mysql_error());

if(isset($_POST["name"])) 
{
	$nme=$_POST['name'];
	$ad1=$_POST['add1'];    
	$ad2=$_POST['add2'];    
	$eml=$_POST['eid'];    
	if($nme!="" && $ad1!="" && $ad2!="" && eml!="")
	{
		$query="insert into user1 values('$nme','$ad1','$ad2','$eml')";
			$result1=mysql_query($query) or die(mysql_error());

		$query1="select * from user1";
			$result2=mysql_query($query1);

		echo "row inserted";
		print "<table border size=1>";
		print "<tr><th>Name</th>
		<th>Address1</th>
		<th>Address2</th>
		<th>E-mail</th>
		</tr>";
	
		while($arr=mysql_fetch_row($result2))
		{
			print "<tr><td>$arr[0]</td>
			<td>$arr[1]</td>
			<td>$arr[2]</td>
			<td>$arr[3]</td>
			</tr>";
		}
		print "</table>";
	}
mysql_free_result($result1);
mysql_free_result($result2);
mysql_close($dbh);
}
?>

<form action="http://localhost/php/insert11.php" method="post">
<p><h1>Enter User Information</h1></p>
Name:<input type="text" name="name"><br>
Address1:<input type="text" name="add1"><br>
Address2:<input type="text" name="add2"><br>
E-mail:<input type="text" name="eml"><br>
<input type="submit" value="INSERT">
</form>

<form action="http://localhost/pgm11.html" method="post">
<input type="submit" value="SEARCH-N-DISPLAY"/>
</form>
</body>
</html>



