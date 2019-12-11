<?php 
include 'config.php';
$id=$_GET['id'];
mysqli_query($conn, "DELETE from barang where id='$id'");
header("location:barang.php");

?>