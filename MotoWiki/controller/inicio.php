<?php


require_once("../model/class/motowikiDB.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/usuario.php");
session_start();

print_r($_SESSION);

if(isset($_SESSION) && !empty($_SESSION)){
    // echo "hola";
    Usuario::comprobarTipoUsuario();
    Usuario::comprobarBetado();
}


$titulo = "Inicio - MotoWiki";
$css = "inicio.css";




include("../view/templates/head.php");
include("../view/templates/nav.php");

include("../view/inicio.php");

include("../view/templates/footer.php");

