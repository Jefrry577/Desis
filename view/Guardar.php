<?php
require_once ('../conf/Conexion.php');
$conn = conexion();
session_start();

$nombre = $_POST["Nombre"];
$Alias = $_POST["Alias"];
$RUT = $_POST["RUT"];
$Email = $_POST["Email"];
$region = $_POST["region"];
$comuna = $_POST["comuna"];
$candidato = $_POST["candidato"];

if(isset($_POST['opciones'])) {
  $opciones_seleccionadas = $_POST['opciones'];
  $opciones_cadena = implode(",", $opciones_seleccionadas);
  echo $opciones_cadena;
}


$sql_rut = "SELECT COUNT(*) FROM votante WHERE rut = '$RUT'";
$result_rut = pg_query($conn, $sql_rut);
$count = pg_fetch_result($result_rut, 0, 0);


if ($count > 0) {
  $_SESSION['error'] = "Su RUT ya ha sido registrado con un voto";
  header('Location: index.php');
  exit();
} else {
  $sql = "insert into votante values(default, '$RUT', '$nombre','$Alias','$Email','$region','$comuna','$candidato','$opciones_cadena')";
  pg_query($conn, $sql);
  $_SESSION['acept'] = "Se ha registrado su voto corectamente";
  header("location:index.php");
}


?>