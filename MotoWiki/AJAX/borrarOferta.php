<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");
require_once("../model/class/oferta.php");
session_start();

$datosEnviados = json_decode(file_get_contents('php://input'),true);

$idOFerta = $datosEnviados['idOferta'];

if(isset($idOFerta) && !empty($_SESSION) && !$_SESSION['tipoUsuario'] != "user"){
    $conexion = MotowikiDB::conexionDB();
    $sql = "DELETE FROM ofertas WHERE idOfertas = $idOFerta";

    $conexion->query($sql);
}
