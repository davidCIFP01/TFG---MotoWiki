<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

if( isset($_POST['iniciarSesion']) ){
    
    /* Añadir funcion con comprobaciones */

    Usuario::iniciarSesion();
    
    header("Location: ./inicio.php");
}

