<?php




$titulo = "Motocicleta - MotoWiki";

$css = "paginaGeneral.css"; /* Luego cambiará por condición. */

if(isset($_GET['idMoto'])){

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

if($dedicada==false){
    include("../view/generalMotocicleta.php");
}else{
    include("../view/dedicadaMotocicleta.php");
}

include("../view/templates/footer.php");

