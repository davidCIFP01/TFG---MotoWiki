<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");
session_start();

$datosEnviados = json_decode(file_get_contents('php://input'),true);

$idUsuario = $datosEnviados['idUsuario'];

$modo = $datosEnviados['modo'];

if(isset($idUsuario) && isset($modo)){

    $conexion = MotowikiDB::conexionDB();


    if($modo == "activar"){
        $sql = "UPDATE usuario SET betado = 0 WHERE idUsuario = $idUsuario";     
        $result = $conexion->query($sql);

        $sqlRegistro = "INSERT INTO registros (fechaCambio, tipoCambio, descripcionCambios, idUsuario)
        VALUES ('".date('Y-m-d H:i:s')."', 'usuario', 'Se ha activado el usuario: ".$idUsuario."', ".$_SESSION['idUser'].");";
        $conexion->query($sqlRegistro);

    }elseif($modo == "vetar"){
        $sql = "UPDATE usuario SET betado = 1 WHERE idUsuario = $idUsuario";
        $result = $conexion->query($sql);

        $sqlRegistro = "INSERT INTO registros (fechaCambio, tipoCambio, descripcionCambios, idUsuario)
        VALUES ('".date('Y-m-d H:i:s')."', 'usuario', 'Se ha vetado al usuario: ".$idUsuario."', ".$_SESSION['idUser'].");";
        $conexion->query($sqlRegistro);
    }

    echo $result;
}


