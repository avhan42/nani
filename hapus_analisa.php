<?php 

include("core/config.php");

$query = "DELETE FROM perhitungan";
mysqli_query($con,$query);

header("location: hasil.php");