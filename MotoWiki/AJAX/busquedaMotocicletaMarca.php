<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");

// $_POST['textoBusqueda'] = "CBR";
// $_POST['modo'] = "moto"; /* fabricante / ambas */

$datosEnviados = json_decode(file_get_contents('php://input'),true);

// print_r($datosEnviados);

if(isset($datosEnviados['textoBusqueda']) && isset($datosEnviados['modo'])){
    $conexion = motowikiDB::conexionDB();

    $cadena = $datosEnviados['textoBusqueda'];
    $modo = $datosEnviados['modo'];

    $sqlMotos  = "SELECT motocicleta.*,fabricante.nombreFabricante FROM motocicleta JOIN fabricante ON motocicleta.idFabricante = fabricante.idFabricante WHERE idMoto LIKE '%$cadena%' OR nombreModelo LIKE '%$cadena%' ";

    $sqlFabricantes = "SELECT * FROM fabricante WHERE idFabricante LIKE '%$cadena%' OR nombreFabricante LIKE '%$cadena%'";

    $contenidoMostrado= "";

    switch ($modo) {
        case "moto":
            $result1 = $conexion->query($sqlMotos);
            break;
        case "fabricante":
            $result2 = $conexion->query($sqlFabricantes);
            break;
        case "ambas":
            $result1 = $conexion->query($sqlMotos);
            $result2 = $conexion->query($sqlFabricantes);
            break;
        default:
            echo json_encode(["mensaje" => "Modo no válido"]);
            exit;
    }


    if(isset($result1)){
        while ($row = $result1->fetch_assoc()) {
            $contenidoMostrado .= '<div class="resultadoBuscador" data-src="./motocicleta.php?idMoto='.$row['idMoto'].'">(ID: '.$row['idMoto'].') '.$row['nombreModelo'].'  ('.$row['nombreFabricante'].')</div>';
        }
    }

    if(isset($result2)){
        while ($row = $result2->fetch_assoc()) {
            $contenidoMostrado .='<div class="resultadoBuscador" data-src="./fabricante.php?idFabricante='.$row['idFabricante'].'">(ID: '.$row['idFabricante'].') '.$row['nombreFabricante'].'</div>';
        }
    }

    

    if($contenidoMostrado == ""){
        
    }else{
        echo "$contenidoMostrado";
    }
    
    /* Estos resultados se devolverán por txt/json por un fetch en un div/datalist. */
}


?>