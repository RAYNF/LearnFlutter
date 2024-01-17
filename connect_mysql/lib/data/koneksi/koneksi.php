<?php 

$host = "localhost";
$user = "root";
$pass = "";
$db = "gudang";

$conn = mysqli_connect($host,$user,$pass,$db);
$kueri = "SELECT * FROM barang ";
$hasil = mysqli_query($conn,$kueri);
$brg = [];

//cetak tulisan php secara terpisah
/*
while($row = mysqli_fetch_assoc($hasil)){
    $brg[] = $row;
}

foreach ( $brg as $item) {
    print($item["nama_barang"]);
    
}
*/

while($row = mysqli_fetch_array($hasil)){
    $brg[] = $row;
}

echo json_encode($brg);

//menampilkan dengan array
// foreach ($brg as $item){
//     print($item);
//     print("\n");
// }


?>