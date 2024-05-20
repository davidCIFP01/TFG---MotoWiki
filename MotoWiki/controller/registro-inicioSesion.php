<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/usuario.php");


$titulo = "Registro - MotoWiki";
$css = "registro-inicioSesion.css";



include("../view/templates/head.php");
include("../view/templates/nav.php");

include("../view/registro-inicioSesion.php");

include("../view/templates/footer.php");

