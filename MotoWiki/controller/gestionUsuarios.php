<?php


require_once("../model/class/motowikiDB.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/usuario.php");
session_start();

if($_SESSION['tipoUser'] != "admin" || empty($_SESSION)){
    header("Location: ./inicio.php");
}

$titulo = "Inicio - MotoWiki";
$css = "gestionUsuarios.css";



include("../view/templates/head.php");
include("../view/templates/nav.php");

include("../view/gestionUsuarios.php");

include("../view/templates/footer.php");

