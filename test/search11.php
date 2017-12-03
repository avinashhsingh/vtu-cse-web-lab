<html>
<head><title>Search Result</title></head>
<body>
<h3>Search Results</h3>
<hr>

<?php
$link=mysql_connect('localhost','apache','lamp');
mysql_select_db('student');

$n=$_POST['name'];
if($n!="")
{
	echo "Entered name is $n\n";
	$var=mysql_query("SELECT * FROM user1 WHERE name='$n'");
	
	echo "<table border size=1>";
	echo "<tr><th>Name</th>
		<th>Address1</th>
		<th>Address2</th>
		<th>E-mail</th>
	</tr>";
while($arr=mysql_fetch_row($var))
{
	echo "<tr><td>$arr[0]</td>
		<td>$arr[1]</td>
		<td>$arr[2]</td>
		<td>$arr[3]</td>
	</tr>";
}
echo "</table>";
}
else
{
echo "Please enter the name to be searched";
}
mysql_free_result($var);
mysql_close($link);
?>

<hr>

<form action="http://localhost/pgm11.html">
<input type="submit" value="BACK-TO_FRONTPAGE">
</form>
</body>
</html>

