<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

session_start();
    
    /* Añadir funcion con comprobaciones */

    $dataRecibida = json_decode(file_get_contents('php://input'),true);

    $_POST['registroUsername'] = $dataRecibida['registroUsername'];
    $_POST['registroEmail'] = $dataRecibida['registroEmail'];

    $completado = Usuario::comprobarEmailUsername();

    // echo "hola";

    if($completado){
        echo true;
    }else{
        echo "<h2>El usuario o el email ya existen.</h2>";
    }


