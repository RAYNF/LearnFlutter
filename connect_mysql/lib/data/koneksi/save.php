<?php
header("Access-Control-Allow-Origin: *");

$host = "localhost";
$user = "root";
$pass = "";
$db = "gudang";

$conn = mysqli_connect($host,$user,$pass,$db);
$cid = $_POST['idBarang'];
$cnamabarang = $_POST['XnamaBarang'];
$chargabarang = $_POST['XhargaBarang'];

$query = "INSERT INTO barang VALUES ('$cid','$cnamabarang','$chargabarang')";
$hasil = mysqli_query($conn,$query);

?>