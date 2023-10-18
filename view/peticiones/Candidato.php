<?php
require_once ('../conf/Conexion.php');
$conn = conexion();
    $sql = "SELECT id, nombre FROM candidato ORDER BY nombre ASC";
    $res = pg_query($conn, $sql);
    if (!$res) {
        echo "Error al obtener los datos de la tabla: " . pg_last_error($conn);
        exit();
    }
?>