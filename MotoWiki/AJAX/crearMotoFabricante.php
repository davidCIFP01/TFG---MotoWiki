<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/fabricante.php");
session_start();
// $datosEnviados = json_decode(file_get_contents('php://input'),true);


$modo = $_POST['modoCrear'];

print_r($_POST);
print_r($_FILES);

$conexion = MotowikiDB::conexionDB();

if($modo == "fabricante"){
    $nombreModelo = "ModeloX";
    $fechaFabricacion = "2022-05-30";
    $tipoMoto = "Deportiva";
    $cilindrada = 600;
    $potencia1 = 100;
    $potencia2 = 110;
    $refrigeracion = "Líquida";
    $tipoMotor = "4T";
    $marchas = 6;
    $transmision = "Manual";
    $capacidad = 17;
    $arranque = "Eléctrico";
    $tag = "Moto";
    $tipoCarnet = "A";
    $popularidad = 80;
    $precioMin = 7000;
    $precioMax = 9000;
    $descripcion = "Una moto deportiva de alta gama.";
    $imagenMoto = "ruta/a/imagen.jpg";
    $suspendida = 0;
    $idFabricante = 1;
    $altura = 800;
    $peso = 190; 

    $nombreModelo = $conn->real_escape_string($nombreModelo);
    $fechaFabricacion = $conn->real_escape_string($fechaFabricacion);
    $tipoMoto = $conn->real_escape_string($tipoMoto);
    $refrigeracion = $conn->real_escape_string($refrigeracion);
    $tipoMotor = $conn->real_escape_string($tipoMotor);
    $transmision = $conn->real_escape_string($transmision);
    $arranque = $conn->real_escape_string($arranque);
    $tag = $conn->real_escape_string($tag);
    $tipoCarnet = $conn->real_escape_string($tipoCarnet);
    $descripcion = $conn->real_escape_string($descripcion);
    $imagenMoto = $conn->real_escape_string($imagenMoto);

    // Preparar la sentencia SQL
    $sql = "INSERT INTO motocicleta (nombreModelo, fechaFabricacion, tipoMoto, cilindrada, potencia1, potencia2, refrigeracion, tipoMotor, marchas, transmision, capacidad, arranque, tag, tipoCarnet, popularidad, precioMin, precioMax, descripcion, imagenMoto, suspendida, idFabricante, altura, peso)
    VALUES ('$nombreModelo', '$fechaFabricacion', '$tipoMoto', $cilindrada, $potencia1, $potencia2, '$refrigeracion', '$tipoMotor', $marchas, '$transmision', $capacidad, '$arranque', '$tag', '$tipoCarnet', $popularidad, $precioMin, $precioMax, '$descripcion', '$imagenMoto', $suspendida, $idFabricante, $altura, $peso)";


}else if($modo == "nuevaMoto"){
    $nombreFabricante = "FabricanteX";
    $paisOrigen = "Japón";
    $fechaFundada = "1950-01-01";
    $sitioWeb = "http://www.fabricantex.com";
    $descripcion1 = "Descripción breve del fabricante.";
    $descripcion2 = "Descripción detallada del fabricante.";
    $imagenFabricante = "ruta/a/imagen_fabricante.jpg";
    $suspendido = 0;
    
    // Escapar valores para prevenir inyección SQL
    $nombreFabricante = $conn->real_escape_string($nombreFabricante);
    $paisOrigen = $conn->real_escape_string($paisOrigen);
    $fechaFundada = $conn->real_escape_string($fechaFundada);
    $sitioWeb = $conn->real_escape_string($sitioWeb);
    $descripcion1 = $conn->real_escape_string($descripcion1);
    $descripcion2 = $conn->real_escape_string($descripcion2);
    $imagenFabricante = $conn->real_escape_string($imagenFabricante);

    $sql = "INSERT INTO fabricante (nombreFabricante, paisOrigen, fechaFundada, sitioWeb, descripcion1, descripcion2, imagenFabricante, suspendido)
    '$nombreFabricante', '$paisOrigen', '$fechaFundada', '$sitioWeb', '$descripcion1', '$descripcion2', '$imagenFabricante', $suspendido)";

}