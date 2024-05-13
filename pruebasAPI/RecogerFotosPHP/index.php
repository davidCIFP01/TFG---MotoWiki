<?php

$conexion = mysqli_connect("localhost","root","","motowiki");

/* Recogemos todos los nombres de motocicletas existentes */
$sql = "SELECT nombreModelo,fechaFabricacion FROM motocicleta";

$result = $conexion->query($sql)->fetch_all();


foreach ($result as $key => $value) {
    echo "<br>$value[0]-$value[1]";
}


?>