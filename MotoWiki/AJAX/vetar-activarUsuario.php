<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

$datosEnviados = json_decode(file_get_contents('php://input'),true);

$idUsuario = $datosEnviados['idUsuario'];

$modo = $datosEnviados['modo'];

if(isset($idUsuario) && isset($modo)){

    $conexion = MotowikiDB::conexionDB();


    if($modo == "activar"){
        $sql = "UPDATE usuario SET betado = 0 WHERE idUsuario = $idUsuario";     
        $result = $conexion->query($sql);


    }elseif($modo == "vetar"){
        $sql = "UPDATE usuario SET betado = 1 WHERE idUsuario = $idUsuario";
        $result = $conexion->query($sql);
    }

    echo $result;
}


