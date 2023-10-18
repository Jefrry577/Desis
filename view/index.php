<!DOCTYPE html>
<html lang="es">
<?php
require ('peticiones/Region.php');
require ('peticiones/Candidato.php');
//Validacion del mensaje en caso de que el rut exista en la base de datos
session_start();
if (isset($_SESSION['error'])) {
    echo "<p>{$_SESSION['error']}</p>";
    unset($_SESSION['error']);
}
if (isset($_SESSION['acept'])) {
    echo "<p>{$_SESSION['acept']}</p>";
    unset($_SESSION['acept']);
}
?>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/style.css">
	<script
	src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>

	<title>Votacion</title>
</head>
<body>
	<h2>Formulario de votación:</h2>
	<form autocomplete="off" onsubmit="return validarFormulario()" action="Guardar.php" method="post">
		<label>Nombre y Apellido:</label>
		<input type="text" class="form-control"	autofocus maxlength="30" name="Nombre"	required>
		<br>
		<label>Alias:</label>
		<input type="text"  class="form-control" maxlength="20" id="Alias" name="Alias" required>
		<br>
		<label>RUT:</label>
		<input type="text" class="form-control" maxlength="12" id="RUT" name="RUT"	required>
		<br>
		<label>Email:</label>
		<input type="email" class="form-control" maxlength="35" name="Email" required
		><br>
		<label>Región:</label>
		<select name="region" id="region" required>
			<option value="0">Seleccione una región</option>
			<?php
				while ($row = pg_fetch_assoc($result)) {
					echo "<option value='".$row['id']."'>".$row['nombre']."</option>";
				}
			?>
		</select>
		<br>
		<label>Comuna:</label>
            <select name='comuna' id='comuna' required>
			</select>
		<br>
		<label>Candidato:</label>
		<select name='candidato' id='candidato' required>
		<?php
			while ($line = pg_fetch_assoc($res)) {
				echo "<option value='".$line['id']."'>".$line['nombre']."</option>";
			}
		?>
		</select>
		<br>
		<label>Como se entero de Nosotros:</label>
		<input type="checkbox" id="opcion1" name="opciones[]" value="Web">Web</input>
		<input type="checkbox" id="opcion2" name="opciones[]" value="TV">TV</input>
		<input type="checkbox" id="opcion3" name="opciones[]" value="Redes Sociales">Redes Sociales</input>
		<input type="checkbox" id="opcion4" name="opciones[]" value="Amigo">Amigo</input>
		<br><br>
		<input type="submit" value="Votar">
	</form>
</body>
</html>
<script src="../js/script.js" ></script>
<script src="../js/Validacion_check.js" ></script>
