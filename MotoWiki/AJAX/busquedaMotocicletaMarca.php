<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

$_POST['textoBusqueda'] = "CBR";
$_POST['modo'] = "moto"; /* fabricante / ambas */



if(isset($_POST['textoBusqueda']) && isset($_POST['modo'])){
    $conexion = motowikiDB::conexionDB();

    $cadena = $_POST['textoBusqueda'];
    $modo = $_POST['modo'];

    $sqlMotos  = "SELECT * FROM motocicleta WHERE idMoto LIKE '%$cadena%' OR nombreModelo LIKE '%$cadena%' ";

    $sqlFabricantes = "SELECT * FROM fabricante WHERE idFabricante LIKE '%$cadena%' OR nombreFabricante LIKE '%$cadena%'";


    match ($modo) {
        "moto" => $result1 = $conexion->$sqlMotos,
        "fabricante"=> $result2 = $conexion->$sqlFabricantes,
        "ambas" => [$result1,$result2] = [$conexion->$sqlMotos,$conexion->$sqlFabricantes]
    };
    
    /* Estos resultados se devolverán por txt/json por un fetch en un div/datalist. */
}


?>