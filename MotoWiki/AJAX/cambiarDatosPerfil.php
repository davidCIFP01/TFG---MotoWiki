<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

session_start();

// if(true){

    $conexion = MotowikiDB::conexionDB();

    $sql = "UPDATE usuario SET
    nombreUsuario = '".$_POST['nuevoNombre']."',
    apellido1 = '".$_POST['nuevoAp1']."',
    apellido2 = '".$_POST['nuevoAp2']."',
    username = '".$_POST['username']."',
    email = '".$_POST['email']."',
    fechaNacimiento = '".$_POST['fechaNac']."'
    WHERE idUsuario =".$_SESSION['idUser'];    

    print_r($sql);

    $result = $conexion->query($sql);

    // print_r($result);

    if(isset($_POST['newPasswd'])){
        $sql = "UPDATE usuario SET password = '".password_hash("x",PASSWORD_DEFAULT)."' WHERE idUsuario =".$_SESSION['idUser'];
    }

    $_SESSION['username'] = $_POST['username'] ;
    $_SESSION['email'] =    $_POST['email'];
    $_SESSION['nombre'] = $_POST['nuevoNombre'];
    $_SESSION['ap1'] =$_POST['nuevoAp1']  ;
    $_SESSION['ap2'] =$_POST['nuevoAp2'] ;
    $_SESSION['fechaNac'] = $_POST['fechaNac'] ;
    

    header("Location: ../controller/perfilUsuario.php");
// }



