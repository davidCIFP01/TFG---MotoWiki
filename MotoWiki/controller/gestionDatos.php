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

if($_SESSION['tipoUsuario'] == "user" || empty($_SESSION)){
    header("Location: ./inicio.php");
}

$titulo = "Inicio - MotoWiki";
$css = "gestionDatos.css";



include("../view/templates/head.php");
include("../view/templates/nav.php");

include("../view/gestionDatos.php");

include("../view/templates/footer.php");

