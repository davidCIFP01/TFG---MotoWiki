<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");
session_start();





if(true){

    $conexion = MotowikiDB::conexionDB();

    $sql = "UPDATE usuario SET
    nombreUsuario = 'x',
    apellido1 = 'x',
    apellido2 = 'x',
    username = 'x',
    email = 'x',
    fechaNacimiento = 'x',
    WHERE idUsuario =".$_SESSION['idUser'];     
    $result = $conexion->query($sql);


    $sql = "UPDATE usuario SET password = '".password_hash("x",PASSWORD_DEFAULT)."' WHERE idUsuario =".$_SESSION['idUser'];

}



