<?php


require_once("../model/class/motowikiDB.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/usuario.php");

$titulo = "Fabricante - MotoWiki";


if(isset($_GET['idFabricante'])){
    
    $Fabricante = Fabricante::obtenerFabricantePorId($_GET['idFabricante']);
    // print_r($Fabricante);

    if($Fabricante != false){
        
        $dedicada = true;
        $css = "paginaDedicada.css";

    }else if($Fabricante == "false"){
        $dedicada = "NOT FOUND";

    } 
    
}else{
    $dedicada = false;
    $css = "paginaGeneral.css";
}


include("../view/templates/head.php");
include("../view/templates/nav.php");

if($dedicada == false){
    include("../view/generalFabricante.php");
}else{
    include("../view/dedicadaFabricante.php");
}

include("../view/templates/footer.php");

