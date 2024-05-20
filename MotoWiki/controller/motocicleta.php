<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");
require_once("../model/class/usuario.php");


$titulo = "Motocicleta - MotoWiki";

//  /* Luego cambiará por condición. */


$_GET['idMoto'] = 1;

if(isset($_GET['idMoto'])){

    if(true){
        $dedicada = true;
        $css = "paginaDedicada.css";
    }else{
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

