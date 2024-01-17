<?php
header("Access-Control-Allow-Origin: *");

$host = "localhost";
$user = "root";
$pass = "";
$db = "gudang";

$conn = mysqli_connect($host,$user,$pass,$db);
$cid = $_POST['id'];


$query = "DELETE FROM barang WHERE  id= '$cid'";
$hasil = mysqli_query($conn,$query);

?>