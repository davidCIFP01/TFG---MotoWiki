<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");
session_start();
// $_POST['textoBusqueda'] = "CBR";
// $_POST['modo'] = "moto"; /* fabricante / ambas */

$datosEnviados = json_decode(file_get_contents('php://input'),true);

// $datosEnviados['textoBusqueda'] = "test";
// print_r($datosEnviados);

if( isset($datosEnviados['textoBusqueda']) ){
    
    $conexion = motowikiDB::conexionDB();

    $cadena = $datosEnviados['textoBusqueda'];

    $sqlUsuarios = "SELECT * FROM usuario WHERE idUsuario LIKE '%$cadena%' OR nombreUsuario LIKE '%$cadena%' ";

    $result = $conexion->query($sqlUsuarios);

    // print_r($result);

    $contenidoMostrado = "";

    while($row = $result->fetch_assoc()){

        // print_r($row);
        $contenidoMostrado .= 
        '   <div class="tarjetaCambiosUsuario">
                <span class="spanID">( ID: '.$row['idUsuario'].' )</span>
                <span class="spanUsername">'.$row['username'].'</span>
                <select class="selectUsuario" data-idUser="'.$row['idUsuario'].'">
                    <option value="'.$row['tipoUsuario'].'" hidden disabled selected>'.
                        
                        match ($row['tipoUsuario']) {
                            "user"=> "Usuario",
                            "colab"=> "Colaborador" ,
                            "admin" => "Administrador"
                        } 
                    .'</option>
                    <option value="user">Usuario</option>
                    <option value="colab">Colaborador</option>
                    <option value="admin">Administrador</option>
                </select>
            
                <div class="contenedorBotonesUsuario">';
        
        $contenidoMostrado .= ($row['betado']) ? '<button class="botonAzul" data-idUser="'.$row['idUsuario'].'" onclick="toggleVetado(this)"> ACTIVAR </button>' : '<button class="botonNaranja" data-idUser="'.$row['idUsuario'].'" onclick="toggleVetado(this)">VETAR</button>';
            
        $contenidoMostrado .= ' 
                                    </div>
                                </div>';
    }
    

    if($contenidoMostrado == ""){
        echo "No hay usuarios";
    }else{
        echo "$contenidoMostrado";
    }
    
    /* Estos resultados se devolverán por txt/json por un fetch en un div/datalist. */
}


/*         <div class="tarjetaCambiosUsuario">
            <span class="spanID">( ID: 654232 )</span>
            <span class="spanUsername">username 1</span>
            <select class="">
            <option value="">Usuario</option>
                <option value="">Colaborador</option>
                <option value="">Administrador</option>
                <option value="">Propietario</option>
            </select>
        
            <div class="contenedorBotonesUsuario">
                <button class="botonNaranja">VETAR</button>
                <button class="botonAzul" hidden> ACTIVAR </button>
                <button class="botonRojo">BORRAR</button>
            </div>
        </div> */


?>