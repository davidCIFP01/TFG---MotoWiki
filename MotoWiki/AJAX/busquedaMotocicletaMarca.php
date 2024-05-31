<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");
session_start();
// $_POST['textoBusqueda'] = "CBR";
// $_POST['modo'] = "moto"; /* fabricante / ambas */

$datosEnviados = json_decode(file_get_contents('php://input'),true);

// print_r($datosEnviados);

if(isset($datosEnviados['textoBusqueda']) && isset($datosEnviados['modo'])){
    $conexion = motowikiDB::conexionDB();

    $cadena = $datosEnviados['textoBusqueda'];
    $modo = $datosEnviados['modo'];

    $sqlMotos  = "SELECT motocicleta.*,fabricante.nombreFabricante FROM motocicleta JOIN fabricante ON motocicleta.idFabricante = fabricante.idFabricante WHERE idMoto LIKE '%$cadena%' OR nombreModelo LIKE '%$cadena%' LIMIT 10";

    $sqlFabricantes = "SELECT * FROM fabricante WHERE idFabricante LIKE '%$cadena%' OR nombreFabricante LIKE '%$cadena%' LIMIT 10";

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


   
   
    if(isset($datosEnviados['gestionDatos']) && $datosEnviados['gestionDatos'] == true){
        if(isset($result1)){
            while ($row = $result1->fetch_assoc()) {
                $contenidoMostrado .= '<div class="resultadoBuscador" onclick="crearRecuadrosGestionDatos(`moto`,`'.$row['idMoto'].'`)">(ID: '.$row['idMoto'].') '.$row['nombreModelo'].' ('.$row['fechaFabricacion'].') ('.$row['nombreFabricante'].')</div>';
            }
        }
    
        if(isset($result2)){
            while ($row = $result2->fetch_assoc()) {
                $contenidoMostrado .='<div class="resultadoBuscador" onclick="crearRecuadrosGestionDatos(`fabricante`,`'.$row['idFabricante'].'`)">(ID: '.$row['idFabricante'].')  '.$row['nombreFabricante'].'</div>';
            }
        }
    }else{
        if(isset($result1)){
            while ($row = $result1->fetch_assoc()) {
                $contenidoMostrado .= '<div class="resultadoBuscador" data-src="./motocicleta.php?idMoto='.$row['idMoto'].'" onclick="redirigirEnlace(this)">(ID: '.$row['idMoto'].') '.$row['nombreModelo'].' ('.$row['fechaFabricacion'].') ('.$row['nombreFabricante'].')</div>';
            }
        }
    
        if(isset($result2)){
            while ($row = $result2->fetch_assoc()) {
                $contenidoMostrado .='<div class="resultadoBuscador" data-src="./fabricante.php?idFabricante='.$row['idFabricante'].'" onclick="redirigirEnlace(this)">(ID: '.$row['idFabricante'].')  '.$row['nombreFabricante'].'</div>';
            }
        }
    }


    

    if($contenidoMostrado == ""){
        
    }else{
        echo "$contenidoMostrado";
    }
    
    /* Estos resultados se devolverán por txt/json por un fetch en un div/datalist. */
}


?>