<?php






$titulo = "Fabricante - MotoWiki";

// $css = "paginaGeneral.css"; /* Luego cambiará por condición. */
$css = "dedicadaMoto.css";

$_GET['idFabricante'] = 1;


if(isset($_GET['idFabricante'])){
    
    if(true){
        $dedicada = true;
    }else{
        $dedicada = "NOT FOUND";
    }
    
}else{
    $dedicada = false;
}


include("../view/templates/head.php");
include("../view/templates/nav.php");

if($dedicada == false){
    include("../view/generalFabricante.php");
}else{
    include("../view/dedicadaFabricante.php");
}

include("../view/templates/footer.php");

