<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

$datosEnviados = json_decode(file_get_contents('php://input'),true);

$idCambiar = $datosEnviados['idCambio']; /* idMoto / idFabricante */

$modo = $datosEnviados['modo']; /* activar / suspender */

$tipo = $datosEnviados['tipo']; /*  moto / fabricante   */


if(isset($idCambiar) && isset($modo)){

    $conexion = MotowikiDB::conexionDB();


    if($modo == "activar"){
        if($tipo == "moto" ){
            $sql = "UPDATE motocicleta SET suspendida = 0 WHERE idMoto = $idCambiar";     
            
            $sqlRegistro = "INSERT INTO cambiosRegistro (fechaCambio, tipoCambio, descripcionCambios, idUsuario)
            VALUES ('".date('Y-m-d H:i:s')."', 'UPDATE - MOTO', 'Se ha Activado la motocicleta con id: ".$idCambiar."', ".$_SESSION['idUser'].");";

            $result = $conexion->query($sql);
            $conexion->query($sqlRegistro);

        }else if($tipo == "fabricante" ){
            $sql = "UPDATE fabricante SET suspendido = 0 WHERE idFabricante = $idCambiar";     
            
            $sqlRegistro = "INSERT INTO cambiosRegistro (fechaCambio, tipoCambio, descripcionCambios, idUsuario)
            VALUES ('".date('Y-m-d H:i:s')."', 'UPDATE - FABRICANTE', 'Se ha Activado el Fabricante con id: ".$idCambiar."', ".$_SESSION['idUser'].");";
            
            
            $result = $conexion->query($sql);
            $conexion->query($sqlRegistro);
            
        }


    }elseif($modo == "suspender"){
        if($tipo == "moto" ){
            $sql = "UPDATE motocicleta SET suspendida = 1 WHERE idMoto = $idCambiar";     
            $result = $conexion->query($sql);

            $sqlRegistro = "INSERT INTO cambiosRegistro (fechaCambio, tipoCambio, descripcionCambios, idUsuario)
            VALUES ('".date('Y-m-d H:i:s')."', 'UPDATE - MOTO', 'Se ha Suspendido la motocicleta con id: ".$idCambiar."', ".$_SESSION['idUser'].");";
            $conexion->query($sqlRegistro);


        }else if($tipo == "fabricante" ){
            $sql = "UPDATE fabricante SET suspendido = 1 WHERE idFabricante = $idCambiar";     
            $result = $conexion->query($sql);

            $sqlRegistro = "INSERT INTO cambiosRegistro (fechaCambio, tipoCambio, descripcionCambios, idUsuario)
            VALUES ('".date('Y-m-d H:i:s')."', 'UPDATE - FABRICANTE', 'Se ha Suspendido el fabricante con id: ".$idCambiar."', ".$_SESSION['idUser'].");";
            $conexion->query($sqlRegistro);
            
        }
    }

    echo $result;
}


