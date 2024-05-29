<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/usuario.php");
session_start();


if(!empty($_SESSION)){
   Usuario::comprobarTipoUsuario();
   Usuario::comprobarBetado();
}

if(!empty($_SESSION)){
   header("Location: ./inicio.php"); 
}

$titulo = "Registro - MotoWiki";
$css = "registro-inicioSesion.css";



include("../view/templates/head.php");
include("../view/templates/nav.php");

include("../view/registro-inicioSesion.php");

include("../view/templates/footer.php");

