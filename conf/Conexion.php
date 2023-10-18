<?php
function conexion(){
    $host = "host=localhost";
    $dbname = "dbname=dbphp";
    $user = "user=postgres";
    $password = "password=admin";

    $db = pg_connect("$host $dbname $user $password");

    return $db;
}
?>