<?php 
include 'header.php';
?>

<?php
$a = mysqli_query($conn, "SELECT * FROM barang_laku");
?>

<div class="col-md-10">
	<h3>Selamat datang </h3>	
    <h3>Toko Sepatu BCT</h3>
</div>
<!-- kalender -->
<div class="pull-right">
	<div id="kalender"></div>
</div>

<?php 
include 'footer.php';

?>