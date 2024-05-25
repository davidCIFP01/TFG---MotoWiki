<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

session_start();

// print_r($_SESSION);

$datosEnviados = json_decode(file_get_contents('php://input'),true);

$idUsuario = $_SESSION['idUser'];

$idMoto = $datosEnviados['idMoto'];

$modo = $datosEnviados['modo'];

if(isset($idUsuario) && isset($idMoto)){

    $conexion = MotowikiDB::conexionDB();

    if($modo == "añadir"){
        
        $sql = "INSERT INTO favoritas VALUES ('$idUsuario','$idMoto');";    
        $conexion->query($sql); 

    }elseif($modo == "quitar"){

        $sql = "DELETE FROM favoritas WHERE idUsuario = $idUsuario AND idMoto = $idMoto"; 
        $conexion->query($sql);

    }

    $sql2 = "UPDATE motocicleta SET popularidad = ( SELECT COUNT(idMoto) FROM favoritas WHERE idMoto = $idMoto ) WHERE idMoto = $idMoto";
    $conexion->query($sql2);

}


