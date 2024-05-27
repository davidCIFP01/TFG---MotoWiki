<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/fabricante.php");

// $datosEnviados = json_decode(file_get_contents('php://input'),true);

$idCambiar = $_POST['idCambio'];
$modo = $_POST['modoCambios'];

print_r($_POST);
print_r($_FILES);

$conexion = MotowikiDB::conexionDB();

if($modo == "fabricante"){

    $sql = "UPDATE fabricante SET

    
    
    WHERE idFabricante = $idCambiar";


}else if($modo == "moto"){

    if(isset($_FILES['cambioImagen']) && $_FILES['cambioImagen']['error'] == 0){
       
        $directorioDestino = '../view/assets/images/motocicleta/';
        $nombreArchivo = basename($_FILES['cambioImagen']['name']);
        $rutaArchivo = $directorioDestino . $nombreArchivo;

        if(move_uploaded_file($_FILES['cambioImagen']['tmp_name'], $rutaArchivo)){
            $sql = "UPDATE motocicleta SET imagenMoto = '$rutaArchivo' WHERE idMoto = $idCambiar";
            $conexion->query($sql);
        }
    }

    $nombreModelo = (!isset($_POST['nombreMoto']) || $_POST['nombreMoto'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['nombreMoto']) . "'";
    $fechaFabricacion = (!isset($_POST['fechaFabricacion']) || $_POST['fechaFabricacion'] == "") ? "NULL" : $conexion->real_escape_string($_POST['fechaFabricacion']);
    $tipoMoto = (!isset($_POST['tipoMoto']) || $_POST['tipoMoto'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['tipoMoto']) . "'";
    $cilindrada = (!isset($_POST['cilindradaMoto']) || $_POST['cilindradaMoto'] == "") ? "NULL" : $conexion->real_escape_string($_POST['cilindradaMoto']);
    $potencia1 = (!isset($_POST['potencia1']) || $_POST['potencia1'] == "") ? "NULL" : $conexion->real_escape_string($_POST['potencia1']);
    $potencia2 = (!isset($_POST['potencia2']) || $_POST['potencia2'] == "") ? "NULL" : $conexion->real_escape_string($_POST['potencia2']);
    $refrigeracion = (!isset($_POST['refrigeracion']) || $_POST['refrigeracion'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['refrigeracion']) . "'";
    $tipoMotor = (!isset($_POST['tipoMotor']) || $_POST['tipoMotor'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['tipoMotor']) . "'";
    $marchas = (!isset($_POST['marchas']) || $_POST['marchas'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['marchas']) . "'";
    $transmision = (!isset($_POST['transmision']) || $_POST['transmision'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['transmision']) . "'";
    $capacidad = (!isset($_POST['capacidad']) || $_POST['capacidad'] == "") ? "NULL" : $conexion->real_escape_string($_POST['capacidad']);
    $arranque = (!isset($_POST['arranque']) || $_POST['arranque'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['arranque']) . "'";
    $tipoCarnet = (!isset($_POST['tipoCarnet']) || $_POST['tipoCarnet'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['tipoCarnet']) . "'";
    $tag = (!isset($_POST['tag']) || $_POST['tag'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['tag']) . "'";
    $precioMin = (!isset($_POST['precioMin']) || $_POST['precioMin'] == "") ? "NULL" : $conexion->real_escape_string($_POST['precioMin']);
    $precioMax = (!isset($_POST['precioMax']) || $_POST['precioMax'] == "") ? "NULL" : $conexion->real_escape_string($_POST['precioMax']);
    $altura = (!isset($_POST['altura']) || $_POST['altura'] == "") ? "NULL" : $conexion->real_escape_string($_POST['altura']);
    $peso = (!isset($_POST['peso']) || $_POST['peso'] == "") ? "NULL" : $conexion->real_escape_string($_POST['peso']);
    $idFabricante = (!isset($_POST['idFabricante']) || $_POST['idFabricante'] == "") ? "NULL" : $conexion->real_escape_string($_POST['idFabricante']);

    $sql = "UPDATE motocicleta SET
    nombreModelo = $nombreModelo,
    fechaFabricacion = $fechaFabricacion,
    tipoMoto = $tipoMoto,
    cilindrada = $cilindrada,
    potencia1 = $potencia1,
    potencia2 = $potencia2,
    refrigeracion = $refrigeracion,
    tipoMotor = $tipoMotor,
    marchas = $marchas,
    transmision = $transmision,
    capacidad = $capacidad,
    arranque = $arranque,
    tipoCarnet = $tipoCarnet,
    tag = $tag,
    precioMin = $precioMin,
    precioMax = $precioMax,
    altura = $altura,
    peso = $peso,
    idFabricante = $idFabricante
    WHERE idMoto = $idCambiar";
    
    print_r($sql);

    $result = $conexion->query($sql);

    if($result->num_rows > 0){
        echo true;
    }else{
        echo false;
    }
}


