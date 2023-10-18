<?php
require_once ('../conf/Conexion.php');
$conn = conexion();
    $sql = "SELECT id, nombre FROM region ORDER BY nombre ASC";
    $result = pg_query($conn, $sql);
    if (!$result) {
        echo "Error al obtener los datos de la tabla: " . pg_last_error($conn);
        exit();
    }
?>