<?php 
$koneksi = new mysqli("localhost", "root", "", "login_flutter");

if($koneksi){
     // echo "Connection success";
}else{
     echo "Connection failed";
     exit();
}
?>