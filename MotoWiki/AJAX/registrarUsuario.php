<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

// session_start();


if( isset($_POST['enviarRegistro']) ){
    
    /* Añadir funcion con comprobaciones */

    Usuario::registrarUsuario();

    print_r($_SESSION);
    
    /* Añadir header a pagina de Inicio / Inicio de Sesion */
}

