<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/usuario.php");
session_start();



$titulo = "Gestion Logs - MotoWiki";
$css = "gestionLogs.css";




include("../view/templates/head.php");
include("../view/templates/nav.php");

include("../view/gestionLogs.php");

include("../view/templates/footer.php");

