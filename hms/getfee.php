
<?php $mysql_hostname = "localhost";
$mysql_user = "root";
$mysql_password = "";
$mysql_database = "samad";


$conn = mysqli_connect($mysql_hostname, $mysql_user, $mysql_password) or die("Could not connect database");
mysqli_select_db($mysql_database, $bd) or die("Could not select database");


if ($_GET['action'] == 'doctorid') {
	$docinfo = $_POST['docinfo'];
	$query = ("select * from doctors where doctorName=$docinfo");
	$result = mysqli_query($conn, $query);
	$array = mysqli_fetch_array($result);
	echo $array['docFees'];
}
?>