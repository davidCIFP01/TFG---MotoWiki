<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

session_start();


if( isset($_POST['enviarRegistro']) ){
    
    /* Añadir funcion con comprobaciones */

    $completado = Usuario::registrarUsuario();

    // print_r($_SESSION);

    if($completado){
        $resultado = Usuario::iniciarSesion();
        header("Location: ../controller/inicio.php");
    }else{
        echo "<h2>El usuario o el email ya existen.</h2>";
    }
    
    /* Añadir header a pagina de Inicio / Inicio de Sesion */


}

