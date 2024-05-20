<?php


require_once("../model/class/motowikiDB.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/usuario.php");



$titulo = "Inicio - MotoWiki";
$css = "gestion.css";



include("../view/templates/head.php");
include("../view/templates/nav.php");

include("../view/gestionUsuarios.php");

include("../view/templates/footer.php");

