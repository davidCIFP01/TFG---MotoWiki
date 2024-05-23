<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/usuario.php");
session_start();

$titulo = "Motocicleta - MotoWiki";


if(isset($_GET['idMoto'])){

    $Motocicleta = Motocicleta::obtenerPorId($_GET['idMoto']);

    if($Motocicleta != false){
        $dedicada = true;
        $css = "paginaDedicada.css";
    
    }else if($Motocicleta == false){
        $dedicada = "NOT FOUND";

    } 
    
}else{
    $dedicada = false;
    $css = "paginaGeneral.css";
}


include("../view/templates/head.php");
include("../view/templates/nav.php");

if($dedicada==false){
    include("../view/generalMotocicleta.php");
}else{
    include("../view/dedicadaMotocicleta.php");
}

include("../view/templates/footer.php");

