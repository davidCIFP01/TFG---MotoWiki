<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

if( isset($_POST['iniciarSesion']) ){
    
    /* Añadir funcion con comprobaciones */

    $resultado = Usuario::iniciarSesion();
    
    if(!$resultado){
        header("Location: ../controller/registro-InicioSesion.php");
        // echo "<h2>El nombre o la contraseña no</h2>";
    }else{
        header("Location: ../controller/inicio.php");
    }

}

