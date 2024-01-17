<?php
header("Access-Control-Allow-Origin: *");

$host = "localhost";
$user = "root";
$pass = "";
$db = "gudang";

$conn = mysqli_connect($host,$user,$pass,$db);
$cid = $_POST['id'];
$cnamabarang = $_POST['XnamaBarang'];
$chargabarang = $_POST['XhargaBarang'];


$query = "UPDATE barang SET nama_barang ='$cnamabarang', harga_barang = '$chargabarang' WHERE  id= '$cid'";
$hasil = mysqli_query($conn,$query);

?>