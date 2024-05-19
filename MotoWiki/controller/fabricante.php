<?php






$titulo = "Fabricante - MotoWiki";

 /* Luego cambiará por condición. */


$_GET['idFabricante'] = 1;


if(isset($_GET['idFabricante'])){
    
    if(true){
        $dedicada = true;
        $css = "dedicadaMoto.css";
    }else{
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

