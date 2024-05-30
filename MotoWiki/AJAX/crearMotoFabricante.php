<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/fabricante.php");
session_start();
// $datosEnviados = json_decode(file_get_contents('php://input'),true);


$modo = $_POST['modoCrear'];

$conexion = MotowikiDB::conexionDB();



if($modo == "nuevaMoto"){

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
    $descripcion = (!isset($_POST['descripcion']) || $_POST['descripcion'] == "") ? "NULL" : $conexion->real_escape_string($_POST['descripcion']);
    $idFabricante = (!isset($_POST['idFabricante']) || $_POST['idFabricante'] == "") ? "NULL" : $conexion->real_escape_string($_POST['idFabricante']);


    // Preparar la sentencia SQL
    $sql = "INSERT INTO motocicleta  (nombreModelo, fechaFabricacion, tipoMoto, cilindrada, potencia1, potencia2, refrigeracion, tipoMotor, marchas, transmision, capacidad, arranque, tag, tipoCarnet, popularidad, precioMin, precioMax, descripcion, suspendida, idFabricante, altura, peso)
    VALUES ($nombreModelo, $fechaFabricacion, $tipoMoto, $cilindrada, $potencia1, $potencia2, $refrigeracion, $tipoMotor, $marchas, $transmision, $capacidad, $arranque, $tag, $tipoCarnet, 0, $precioMin, $precioMax, $descripcion, 0, $idFabricante, $altura, $peso)";

    print_r($sql);
    $conexion->query($sql);

    $sql_get_last_id = "SELECT idMoto FROM motocicleta ORDER BY idMoto DESC LIMIT 1";
    $ultimoId = $conexion->query($sql_get_last_id)->fetch_assoc()['idMoto'];

    if(isset($_FILES['cambioImagen']) && $_FILES['cambioImagen']['error'] == 0){
        
        $directorioDestino = '../view/assets/images/motocicleta/';
        $nombreArchivo = basename($_FILES['cambioImagen']['name']);
        $rutaArchivo = $directorioDestino . $nombreArchivo;

        if(move_uploaded_file($_FILES['cambioImagen']['tmp_name'], $rutaArchivo)){
            $sql = "UPDATE motocicleta SET imagenMoto = '$rutaArchivo' WHERE idMoto = $ultimoId";
            $conexion->query($sql);
        }else{


            $sql = "UPDATE motocicleta SET imagenMoto = null WHERE idMoto = $ultimoId";
            $conexion->query($sql);
        }
    }

}else if($modo == "fabricante"){
    
    // Utilizar la palabra clave NULL en lugar de 'NULL'
    $nombreFabricante = (!isset($_POST['nombreFabricante']) || $_POST['nombreFabricante'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['nombreFabricante']) . "'";
    $paisOrigen = (!isset($_POST['paisOrigen']) || $_POST['paisOrigen'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['paisOrigen']) . "'";
    $fechaFundada = (!isset($_POST['fechaFundada']) || $_POST['fechaFundada'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['fechaFundada']) . "'";
    $sitioWeb = (!isset($_POST['sitioWeb']) || $_POST['sitioWeb'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['sitioWeb']) . "'";
    $descripcion1 = (!isset($_POST['descripcionFabricante1']) || $_POST['descripcionFabricante1'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['descripcionFabricante1']) . "'";
    $descripcion2 = (!isset($_POST['descripcionFabricante2']) || $_POST['descripcionFabricante2'] == "") ? "NULL" : "'" . $conexion->real_escape_string($_POST['descripcionFabricante2']) . "'";

    
    $sql = "INSERT INTO fabricante (nombreFabricante, paisOrigen, fechaFundada, sitioWeb, descripcion1, descripcion2, suspendido) 
    VALUES (
    ".( ($nombreFabricante == null) ? 'null' : $nombreFabricante ) .", 
    ".( ($paisOrigen == null) ? 'null' : $paisOrigen ) .", 
    ".( ($fechaFundada == null) ? null : $fechaFundada ) .", 
    ".( ($sitioWeb == null) ? 'null' : $sitioWeb ) .", 
    ".( ($descripcion1 == null) ? 'null' : $descripcion1 ) .", 
    ".( ($descripcion2 == null) ? 'null' : $descripcion2 ) .", 
    0)";
    
    // print_r($sql);

    $conexion->query($sql);

    $sql_get_last_id = "SELECT idFabricante FROM fabricante ORDER BY idFabricante DESC LIMIT 1";
    $ultimoId = $conexion->query($sql_get_last_id)->fetch_assoc()['idFabricante'];

    if(isset($_FILES['cambioImagen']) && $_FILES['cambioImagen']['error'] == 0){
        
        $directorioDestino = '../view/assets/images/fabricante/';
        $nombreArchivo = basename($_FILES['cambioImagen']['name']);
        $rutaArchivo = $directorioDestino . $nombreArchivo;

        if(move_uploaded_file($_FILES['cambioImagen']['tmp_name'], $rutaArchivo)){
            $sql = "UPDATE fabricante SET imagenFabricante = '$rutaArchivo' WHERE idFabricante = $ultimoId ";
            $conexion->query($sql);
        }
    }else{

        $sql = "UPDATE fabricante SET imagenFabricante = null WHERE idFabricante = $ultimoId ";
        $conexion->query($sql);
    }

}