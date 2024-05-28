<?php
require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");


$datosEnviados = json_decode(file_get_contents('php://input'),true);

$paginacion = $datosEnviados['paginacion'];
$cantidadMotos = $datosEnviados['cantidad'];

$motosPaginadas=Motocicleta::obtenerMotosPaginadas($cantidadMotos,$paginacion);

$motos = "";

foreach($motosPaginadas as $key=>$objMoto){
    $motos .= '<div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="'.$objMoto->__get("imagenMoto").'" data-src="./motocicleta.php?idMoto='.$objMoto->__get("idMoto").'" onclick="redirigirEnlace(this) alt="fotoMotocicleta">
                </div>
                <a href="./motocicleta.php?idMoto='.$objMoto->__get("idMoto").'"><h2>'.$objMoto->__get("nombreModelo").'</h2></a>
            </div>';
}

echo $motos;