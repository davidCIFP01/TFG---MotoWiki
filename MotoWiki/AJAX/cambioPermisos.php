<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

$datosEnviados = json_decode(file_get_contents('php://input'),true);

$idUsuario = $datosEnviados['idUsuario'];

$permisos = $datosEnviados['permisos'];

if(isset($idUsuario) && isset($permisos)){

    $conexion = MotowikiDB::conexionDB();

    $sql = "UPDATE usuario SET tipoUsuario = '$permisos' WHERE idUsuario = $idUsuario";     
    $result = $conexion->query($sql);

    echo $result;
}


