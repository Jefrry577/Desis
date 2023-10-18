<?php
require_once ('../../conf/Conexion.php');
$conn = conexion();
$VRegion = $_POST['VRegion'];
    $result = pg_query($conn, "SELECT id, nombre_comuna FROM comuna WHERE idregion = $VRegion");
	while ($ver=pg_fetch_assoc($result)) {
		$cadena=$cadena.'<option value='.$ver['id'].'>'.($ver['nombre_comuna']).'</option>';
	}

	echo  $cadena;
	
?>