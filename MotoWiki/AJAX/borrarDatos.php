<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/fabricante.php");
session_start();

$datosEnviados = json_decode(file_get_contents('php://input'),true);

$idBorrar = $datosEnviados['idCambio'];
$modo = $datosEnviados['modo'];

if(isset($idBorrar) && !empty($_SESSION) && !$_SESSION['tipoUsuario'] != "user"){
    $conexion = MotowikiDB::conexionDB();
    
    if($modo == "moto"){
        $sql = "DELETE FROM motocicleta WHERE idMoto = $idBorrar";
    }else{
        $sql = "DELETE FROM fabricante WHERE idFabricante = $idBorrar";
    }

    $conexion->query($sql);
}
