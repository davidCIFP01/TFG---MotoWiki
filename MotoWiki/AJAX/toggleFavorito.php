<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

$datosEnviados = json_decode(file_get_contents('php://input'),true);

$idUsuario = $datosEnviados['idUsuario'];

$idMoto = $datosEnviados['idMoto'];

$modo = $datosEnviados['modo'];

if(isset($idUsuario) && isset($idMoto)){

    $conexion = MotowikiDB::conexionDB();

    if($modo == "añadir"){
        
        $sql = "INSERT INTO favoritas VALUES('$idUsuario','$idMoto');";     

        

    }elseif($modo == "añadir"){

        $sql = "DELETE FROM favoritas WHERE idUsuario = $idUsuario AND idMoto = $idMoto"; 

    }

    $sql2 = "UPDATE motocicletas SET popularidad = ( SELECT COUNT(idMoto) FROM favoritas WHERE idMoto = $idMoto ) WHERE idMoto = $idMoto";
    $conexion->query($sql2);

}


