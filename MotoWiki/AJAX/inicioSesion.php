<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

if( isset($_POST['iniciarSesion']) ){
    
    /* Añadir funcion con comprobaciones */

    Usuario::iniciarSesion();
    
    // print_r($_SESSION['idUser']);

    header("Location: ../controller/inicio.php");
}

