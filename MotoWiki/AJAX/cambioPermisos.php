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

    $sqlRegistro = "INSERT INTO cambiosRegistro (fechaCambio, tipoCambio, descripcionCambios, idUsuario)
            VALUES ('".date('Y-m-d H:i:s')."', 'UPDATE - USUARIO', 'Se ha cambiado los permisos a '$permisos' al usuario: ".$idUsuario."', ".$_SESSION['idUser'].");";
    $conexion->query($sqlRegistro);

    echo $result;
}


