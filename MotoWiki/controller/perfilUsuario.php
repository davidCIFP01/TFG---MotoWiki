<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/usuario.php");
session_start();

$titulo = "Perfil - MotoWiki";
$css = "perfilUsuario.css";



include("../view/templates/head.php");
include("../view/templates/nav.php");

include("../view/perfilUsuario.php");

include("../view/templates/footer.php");

