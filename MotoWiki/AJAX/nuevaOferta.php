<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");
require_once("../model/class/oferta.php");
session_start();

$datosEnviados = json_decode(file_get_contents('php://input'),true);

$idMoto = $datosEnviados['idMoto'];

$enlace = $datosEnviados['enlaceOferta'];

$precioOferta = $datosEnviados['precioOferta'];

if(isset($idMoto) && isset($enlace) && isset($precioOferta) && !empty($_SESSION) && !$_SESSION['tipoUsuario'] != "user"){
    $conexion = MotowikiDB::conexionDB();
    $sql = "INSERT INTO ofertas (enlaceOferta, precio, idMoto)
    VALUES ('$enlace',$precioOferta, $idMoto);";

    $result = $conexion->query($sql);

    echo "ok";
}
