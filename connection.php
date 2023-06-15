<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "responsiveform3";

$conn= mysqli_connect($servername,$username,$password,$dbname);

if($conn)
{
    // echo "Connection Okay";
}
else {
    echo "Connection Failed".mysqli_connect_error();
}
?>