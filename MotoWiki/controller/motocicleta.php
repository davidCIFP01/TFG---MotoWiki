<?php






$titulo = "Motocicleta - MotoWiki";
$css = "motocicleta.css";

$dedicada = false;



include("../view/templates/head.php");
include("../view/templates/nav.php");

if($dedicada=="true"){
    include("../view/dedicadaMotocicleta.php");
}else{
    include("../view/generalMotocicleta.php");
}

include("../view/templates/footer.php");

