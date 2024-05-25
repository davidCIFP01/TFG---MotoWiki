<?php
require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");
require_once("../model/class/fabricante.php");
require_once("../model/class/motocicleta.php");

// $_POST['textoBusqueda'] = "CBR";
// $_POST['modo'] = "moto"; /* fabricante / ambas */

$datosEnviados = json_decode(file_get_contents('php://input'),true);

$tipoCambio = $datosEnviados['modo'];

$idRecibido = $datosEnviados['idCambio'];

if(isset($tipoCambio)){
    if($tipoCambio == "moto"){

        $objMoto = Motocicleta::obtenerPorId($idRecibido);

        $contenedorCambios = '
        <form>
            <div class="contenedorImagenCambio">
                <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">NOMBRE FABRICANTE: </label> <input type="text" name="" id="" placeholder="INPUT DATO">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">DATO: </label> <input type="text" name="" id="" placeholder="INPUT DATO">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">DATO: </label> <input type="text" name="" id="" placeholder="INPUT DATO">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">DATO: </label> <input type="date"  name="" id="" placeholder="INPUT DATO">
            </div>

            <div class="contenedorDescripciones">
                <div class="textareaContainer">
                    <p>DESCRIPCION 1</p>
                    <textarea name="" id=""></textarea>
                </div>
                
                <div class="textareaContainer">
                    <p>DESCRIPCION 2</p>
                    <textarea name="" id=""></textarea>
                </div>
            </div>
        </form>

        <button class="botonBorrar botonesCambios botonRojo">Borrar Motocicleta</button>
        <button class="botonSuspender botonesCambios botonNaranja">Suspender Motocicleta</button>
        <button class="botonConfirmar botonesCambios botonAzul">Confirmar Cambios</button>';


    }else if($tipoCambio == "fabricante"){

        $objFabricante = Fabricante::obtenerFabricantePorId($idRecibido);

        $contenedorCambios = '
        <form>
            <div class="contenedorImagenCambio">
            <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">NOMBRE MOTOCICLETA: </label> <input type="text" name="" id="" placeholder="INPUT DATO">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">DATO</label> <input type="text" name="" id="" placeholder="INPUT DATO">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">DATO</label> <input type="text" name="" id="" placeholder="INPUT DATO">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">DATO</label> <input type="text" name="" id="" placeholder="INPUT DATO">
            </div>

            <div class="contenedorDescripciones">
                <div class="textareaContainer">
                    <p>DESCRIPCION 1</p>
                    <textarea name="" id=""></textarea>
                </div>
            </div>
        </form>

        <button class="botonBorrar botonesCambios botonRojo">Borrar Motocicleta</button>
        <button class="botonSuspender botonesCambios botonNaranja">Suspender Motocicleta</button>
        <button class="botonConfirmar botonesCambios botonAzul">Confirmar Cambios</button>';

    }


}





?>



