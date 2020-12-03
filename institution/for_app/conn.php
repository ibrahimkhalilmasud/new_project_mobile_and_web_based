<?php




define('DB_SERVER',"localhost");
define('DB_USERNAME',"root");
define('DB_PASSWORD',"");
define('DB_NAME',"institution");


$connect= new mysqli("127.0.0.1","root","","institution");

$connect = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

if($connect){

}else{

	echo "Connection Failed";
	exit();

}

?>
