<?php 
include 'config.php';
$id=$_GET['id'];
mysqli_query($conn, "DELETE from pengeluaran where id ='$id'");
header("location:pengeluaran.php");

 ?>