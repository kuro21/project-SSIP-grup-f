<?php 
include 'config.php';
$user=$_POST['user'];
$lama=$_POST['lama'];
$baru=$_POST['baru'];
$ulang=$_POST['ulang'];

$cek=mysqli_query($conn, "SELECT * from tbl_user where pass='$lama' and uname='$user'");
if(mysqli_num_rows($cek)==1){
	if($baru==$ulang){
		$b = ($baru);
		mysqli_query($conn, "UPDATE tbl_user set pass='$b' where uname='$user'");
		header("location:ganti_pass.php?pesan=oke");
	}else{
		header("location:ganti_pass.php?pesan=tdksama");
	}
}else{
	header("location:ganti_pass.php?pesan=gagal");
}

 ?>