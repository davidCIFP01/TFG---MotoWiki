<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

if( isset($_POST['enviarRegistro']) ){
    
    /* Añadir funcion con comprobaciones */

    Usuario::registrarUsuario();
    
    /* Añadir header a pagina de Inicio / Inicio de Sesion */
}

