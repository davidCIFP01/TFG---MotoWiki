<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/fabricante.php");

$datosEnviados = json_decode(file_get_contents('php://input'),true);

$idCambiar = $_POST['idCambiar'];

$modo = $_POST['modoCambios'];

if($modo == "fabricante"){

    $sql = "UPDATE fabricante SET
    
    
    WHERE idFabricante = $idCambiar";


}else if($modo == "moto"){

    $sql = "UPDATE motocicleta SET
    
    
    WHERE idMoto = $idCambiar";

}


