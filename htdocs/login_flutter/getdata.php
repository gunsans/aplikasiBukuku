<?php 
include 'config.php';

$queryResult = $koneksi->query("SELECT * FROM buku");

$result = array();

while($fetchData=$queryResult->fetch_assoc()) {
     $result[]=$fetchData;
     
}
echo json_encode($result);
?>