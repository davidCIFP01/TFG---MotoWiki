<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/usuario.php");
session_start();

if(empty($_SESSION)){
    header("Location: ./registro-InicioSesion.php"); 
 }

//  print_r($_SESSION);

$titulo = "Perfil - MotoWiki";
$css = "perfilUsuario.css";



include("../view/templates/head.php");
include("../view/templates/nav.php");

include("../view/perfilUsuario.php");

include("../view/templates/footer.php");

