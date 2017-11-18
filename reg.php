<?php
//include 'include.php';

$con=pg_connect("host='localhost' dbname='db_desire' user='postgres' password='12345'") or die(" not con");


$nam= pg_escape_string($con, $_POST['name']);
$user= pg_escape_string($con, $_POST['uname']);
$pass= pg_escape_string($con, $_POST['pass']);


$hashed_pwd = hash('sha512',$pswd);

$sql = "INSERT INTO tb_desire (name, uname, pass) VALUES ('$nam','$user','$hashed_pwd')";
$result=pg_query($con,$sql);

if ($result){
	echo "congratulation:  USERNAME as:  $user and PASSWORD :  $pass"; 
	
}
else{
	echo" please insert rcords";
}
/*if ($result)) {
  die('Error: ' . pg_error($con));
}*/
?>
