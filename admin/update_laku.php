<?php 
include 'config.php';
$id=$_POST['id'];
$tanggal=$_POST['tgl'];
$nama=$_POST['nama'];
$harga=$_POST['harga'];
$jumlah=$_POST['jumlah'];

mysqli_query($conn, "UPDATE barang_laku set tanggal='$tanggal', nama='$nama', harga='$harga', jumlah='$jumlah' where id='$id'");
header("location:barang_laku.php");

?>