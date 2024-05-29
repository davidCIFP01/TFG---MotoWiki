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


if( isset($tipoCambio) ){
    if($tipoCambio == "moto"){

        $objMoto = Motocicleta::obtenerPorId($idRecibido);

        // print_r($objMoto);

        $contenedorCambios = '
        <form id="formularioDatos" >
            <input type="hidden" name="modoCambios" value="moto">
            <input type="hidden" name="idCambio" value="'.$objMoto->__get("idMoto").'">

            <div class="contenedorImagenCambio">
                <img src="'.$objMoto->__get("imagenMoto").'" alt="imagenMoto" id="ImagenActual">
                <input type="file" name="cambioImagen" id="cambioImagen" hidden>
            </div>

            <div class="contenedorCambioDatos">
                <label for="">NOMBRE MOTO: </label> <input type="text" name="nombreMoto" id="nombreMoto" placeholder="Nombre Motocicleta" value="'.$objMoto->__get("nombreModelo").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">TIPO DE MOTO: </label> 
                <input type="text" name="tipoMoto" id="tipoMoto" placeholder="Tipo de Motocicleta" value="'.$objMoto->__get("tipoMoto").'">';  

        $contenedorCambios .= '
                </input>
            </div> 
            
            <div class="contenedorCambioDatos">
                <label for="">CILINDRADA: </label> <input type="number" step="1" max="3000" min="1" name="cilindradaMoto" id="cilindradaMoto" placeholder="Cilindrada" value="'.$objMoto->__get("cilindrada").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">POTENCIA (CV): </label> <input type="number" step="1" max="3000" min="1" name="potencia1" id="potencia1" placeholder="Cilindrada (CV)" value="'.$objMoto->__get("potencia1").'">
            </div>
            
            <div class="contenedorCambioDatos">
                <label for="">POTENCIA (KW): </label> <input type="number" step="1" max="3000" min="1" name="potencia2" id="potencia2" placeholder="Cilindrada (KW)" value="'.$objMoto->__get("potencia2").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">REFRIGERACIÓN: </label> <input type="text" name="refrigeracion" id="refrigeracion" placeholder="Refrigeracion" value="'.$objMoto->__get("refrigeracion").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Tipo Motor: </label> <input type="text" name="tipoMotor" id="tipoMotor" placeholder="Tipo Motor" value="'.$objMoto->__get("tipoMotor").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Marchas: </label> <input type="text" name="marchas" id="marchas" placeholder="Marchas" value="'.$objMoto->__get("marchas").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Transmisión: </label> <input type="text" name="transmision" id="transmision" placeholder="Transmisión" value="'.$objMoto->__get("transmision").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Capacidad: </label> <input type="number" step="0.01" name="capacidad" id="capacidad" placeholder="Capacidad" value="'.$objMoto->__get("capacidad").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Arranque: </label> <input type="text" name="arranque" id="arranque" placeholder="Arranque" value="'.$objMoto->__get("arranque").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">TAG: </label> <input type="text" name="tag" id="tag" placeholder="TAG" value="'.$objMoto->__get("tag").'">
            </div>
            
            <div class="contenedorCambioDatos">
                <label for="">Tipo Carnet: </label> <input type="text" name="tipoCarnet" id="tipoCarnet" placeholder="Tipo Carnet" value="'.$objMoto->__get("tipoCarnet").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Precio Minimo: </label> <input type="number" name="precioMin" id="precioMin" placeholder="Precio Minimo" value="'.$objMoto->__get("precioMin").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Precio Maximo: </label> <input type="number" name="precioMax" id="precioMax" placeholder="Precio Maximo" value="'.$objMoto->__get("precioMax").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Altura: </label> <input type="number" name="altura" id="altura" placeholder="Altura" value="'.$objMoto->__get("altura").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Peso: </label> <input type="number" name="peso" id="peso" placeholder="Peso" value="'.$objMoto->__get("peso").'">
            </div>
            
            <div class="contenedorCambioDatos">
                <label for="">Fabricante: </label> 
                <select name="idFabricante" class="" id="idFabricante" placeholder="Fabricante">
                    <option selected hidden value="'.$objMoto->__get("idFabricante").'">'.Fabricante::obtenerFabricantePorId($objMoto->__get("idFabricante"))->__get("nombreFabricante").'</option>
            ';

            foreach(Fabricante::obtenerTodosFabricantes() as $clave=>$Fabricante){

                $contenedorCambios .= '<option value="'.$Fabricante->__get("idFabricante").'">'.$Fabricante->__get("nombreFabricante").'</option>';
            }

            $contenedorCambios .='
                </select>
            </div>
            <div class="contenedorCambioDatos">
                <label for="">FECHA FABRICACIÓN: </label> <input type="number" maxlength="4"  name="fechaFabricacion" id="fechaFabricacion" placeholder="Fecha Fabricacion" value="'.$objMoto->__get("fechaFabricacion").'">
            </div>

            <div class="contenedorDescripciones">
                <div class="textareaContainer">
                    <p>DESCRIPCION 1</p>
                    <textarea name="descripcionMoto" id="descripcionMoto">'.$objMoto->__get("descripcion").'</textarea>
                </div>
            </div>
        </form>

        <button class="botonBorrar botonesCambios botonRojo" id="botonBorrarMotocicleta" >Borrar Motocicleta</button> ';

       $contenedorCambios .= ($objMoto->__get("suspendida")) 
        ? '<button class="botonSuspender botonesCambios botonAzul" id="botonActivar" onclick=toggleSuspendido(`'.$objMoto->__get("idMoto").'`,`activar`,`moto`)   >Activar Motocicleta</button> <button class="botonSuspender botonesCambios botonNaranja" id="botonSuspender" onclick=toggleSuspendido(`'.$objMoto->__get("idMoto").'`,`suspender`,`moto`)  hidden>Suspender Motocicleta</button>'
        : '<button class="botonSuspender botonesCambios botonAzul" id="botonActivar" onclick=toggleSuspendido(`'.$objMoto->__get("idMoto").'`,`activar`,`moto`)   hidden>Activar Motocicleta</button> <button class="botonSuspender botonesCambios botonNaranja" id="botonSuspender" onclick=toggleSuspendido(`'.$objMoto->__get("idMoto").'`,`suspender`,`moto`)   >Suspender Motocicleta</button>';

        $contenedorCambios .= '<button class="botonConfirmar botonesCambios botonAzul" id="botonConfirmarCambios" >Confirmar Cambios</button>';


    }else if($tipoCambio == "fabricante"){

        $objFabricante = Fabricante::obtenerFabricantePorId($idRecibido);

        // print_r($objFabricante);

        $contenedorCambios = '
        <form id="formularioDatos" >
            <input type="hidden" name="modoCambios" value="fabricante">
            <input type="hidden" name="idCambio" value="'.$objFabricante->__get("idFabricante").'">

            <div class="contenedorImagenCambio">
                <img src="'.$objFabricante->__get("imagenFabricante").'"  alt="imagenMoto" id="ImagenActual">
                <input type="file" name="cambioImagen" id="cambioImagen" hidden>
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Nombre Fabricante: </label> <input type="text" name="nombreFabricante" id="nombreFabricante" placeholder="Nombre Fabricante" value="'.$objFabricante->__get("nombreFabricante").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Pais Origen</label> <input type="text" name="paisOrigen" id="paisOrigen" placeholder="Pais Origen" value="'.$objFabricante->__get("paisOrigen").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Fecha Fundada</label> <input type="number" maxlength="4" name="fechaFundada" id="fechaFundada" placeholder="Fecha Fundada" value="'.$objFabricante->__get("fechaFundada").'">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Sitio Web</label> <input type="text" name="sitioWeb" id="sitioWeb" placeholder="Sitio Web" value="'.$objFabricante->__get("sitioWeb").'">
            </div>

            <div class="contenedorDescripciones">
                <div class="textareaContainer">
                    <p>DESCRIPCION 1</p>
                    <textarea name="descripcionFabricante1" id="descripcionFabricante1">'.$objFabricante->__get("descripcion1").'</textarea>
                </div>

                <div class="textareaContainer">
                    <p>DESCRIPCION 2</p>
                    <textarea name="descripcionFabricante2" id="descripcionFabricante2">'.$objFabricante->__get("descripcion2").'</textarea>
                </div>
            </div>
        </form>

        <button class="botonBorrar botonesCambios botonRojo" id="botonBorrar" >Borrar Fabricante</button>';

 /*        $contenedorCambios .= ($objFabricante->__get("suspendido")) 
        ? '<button class="botonSuspender botonesCambios botonAzul" id="botonActivar" onclick=toggleSuspendido(`'.$objFabricante->__get("idFabricante").'`,`activar`,`fabricante`) >Activar Fabricante</button> <button class="botonSuspender botonesCambios botonNaranja" id="botonSuspender" onclick=toggleSuspendido(`'.$objFabricante->__get("idFabricante").'`,`suspender`,`fabricante`) hidden >Suspender Fabricante</button>' 
        : '<button class="botonSuspender botonesCambios botonAzul" id="botonActivar" onclick=toggleSuspendido(`'.$objFabricante->__get("idFabricante").'`,`activar`,`fabricante`) hidden>Activar Fabricante</button> <button class="botonSuspender botonesCambios botonNaranja" id="botonSuspender" onclick=toggleSuspendido(`'.$objFabricante->__get("idFabricante").'`,`suspender`,`fabricante`)  >Suspender Fabricante</button>';
         */
        $contenedorCambios .= '<button class="botonConfirmar botonesCambios botonAzul"  id="botonConfirmarCambios">Confirmar Cambios</button>';

    }else if($tipoCambio == "nuevaMoto"){

        $contenedorCambios = '
        <form id="formularioDatos" >
            <input type="hidden" name="modoCambios" value="nuevaMoto">

            <div class="contenedorImagenCambio">
                <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="imagenMoto" id="ImagenActual">
                <input type="file" name="cambioImagen" id="cambioImagen" hidden>
            </div>

            <div class="contenedorCambioDatos">
                <label for="">NOMBRE MOTO: </label> <input type="text" name="nombreMoto" id="nombreMoto" placeholder="Nombre Motocicleta" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">TIPO DE MOTO: </label> 
                <input type="text" name="tipoMoto" id="tipoMoto" placeholder="Tipo de Motocicleta" value="">';  

        $contenedorCambios .= '
                </input>
            </div> 
            
            <div class="contenedorCambioDatos">
                <label for="">CILINDRADA: </label> <input type="number" step="1" max="3000" min="1" name="cilindradaMoto" id="cilindradaMoto" placeholder="Cilindrada" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">POTENCIA (CV): </label> <input type="number" step="1" max="3000" min="1" name="potencia1" id="potencia1" placeholder="Cilindrada (CV)" value="">
            </div>
            
            <div class="contenedorCambioDatos">
                <label for="">POTENCIA (KW): </label> <input type="number" step="1" max="3000" min="1" name="potencia2" id="potencia2" placeholder="Cilindrada (KW)" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">REFRIGERACIÓN: </label> <input type="text" name="refrigeracion" id="refrigeracion" placeholder="Refrigeracion" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Tipo Motor: </label> <input type="text" name="tipoMotor" id="tipoMotor" placeholder="Tipo Motor" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Marchas: </label> <input type="text" name="marchas" id="marchas" placeholder="Marchas" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Transmisión: </label> <input type="text" name="transmision" id="transmision" placeholder="Transmisión" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Capacidad: </label> <input type="number" step="0.01" name="capacidad" id="capacidad" placeholder="Capacidad" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Arranque: </label> <input type="text" name="arranque" id="arranque" placeholder="Arranque" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">TAG: </label> <input type="text" name="tag" id="tag" placeholder="TAG" value="">
            </div>
            
            <div class="contenedorCambioDatos">
                <label for="">Tipo Carnet: </label> <input type="text" name="tipoCarnet" id="tipoCarnet" placeholder="Tipo Carnet" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Precio Minimo: </label> <input type="number" name="precioMin" id="precioMin" placeholder="Precio Minimo" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Precio Maximo: </label> <input type="number" name="precioMax" id="precioMax" placeholder="Precio Maximo" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Altura: </label> <input type="number" name="altura" id="altura" placeholder="Altura" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Peso: </label> <input type="number" name="peso" id="peso" placeholder="Peso" value="">
            </div>
            
            <div class="contenedorCambioDatos">
                <label for="">Fabricante: </label> 
                <select name="idFabricante" class="" id="idFabricante" placeholder="Fabricante">
                    <option selected hidden value=""></option>
            ';

            foreach(Fabricante::obtenerTodosFabricantes() as $clave=>$Fabricante){

                $contenedorCambios .= '<option value="'.$Fabricante->__get("idFabricante").'">'.$Fabricante->__get("nombreFabricante").'</option>';
            }

            $contenedorCambios .='
                </select>
            </div>
            <div class="contenedorCambioDatos">
                <label for="">FECHA FABRICACIÓN: </label> <input type="number" maxlength="4"  name="fechaFabricacion" id="fechaFabricacion" placeholder="Fecha Fabricacion" value="">
            </div>

            <div class="contenedorDescripciones">
                <div class="textareaContainer">
                    <p>DESCRIPCION 1</p>
                    <textarea name="descripcionMoto" id="descripcionMoto"></textarea>
                </div>
            </div>
        </form>';
        $contenedorCambios .= '<button class="botonConfirmar botonesCambios botonAzul" id="botonConfirmarCambios" >Confirmar Cambios</button>';


    }else if($tipoCambio == "nuevoFabricante"){

        $objFabricante = Fabricante::obtenerFabricantePorId($idRecibido);

        // print_r($objFabricante);

        $contenedorCambios = '
        <form id="formularioDatos" >
            <input type="hidden" name="modoCambios" value="fabricante">

            <div class="contenedorImagenCambio">
                <img src="../view/assets/images/motocicleta/default_motocicleta.jpg"  alt="imagenMoto" id="ImagenActual">
                <input type="file" name="cambioImagen" id="cambioImagen" hidden>
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Nombre Fabricante: </label> <input type="text" name="nombreFabricante" id="nombreFabricante" placeholder="Nombre Fabricante" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Pais Origen</label> <input type="text" name="paisOrigen" id="paisOrigen" placeholder="Pais Origen" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Fecha Fundada</label> <input type="number" maxlength="4" name="fechaFundada" id="fechaFundada" placeholder="Fecha Fundada" value="">
            </div>

            <div class="contenedorCambioDatos">
                <label for="">Sitio Web</label> <input type="text" name="sitioWeb" id="sitioWeb" placeholder="Sitio Web" value="">
            </div>

            <div class="contenedorDescripciones">
                <div class="textareaContainer">
                    <p>DESCRIPCION 1</p>
                    <textarea name="descripcionFabricante1" id="descripcionFabricante1"></textarea>
                </div>

                <div class="textareaContainer">
                    <p>DESCRIPCION 2</p>
                    <textarea name="descripcionFabricante2" id="descripcionFabricante2"></textarea>
                </div>
            </div>
        </form>';

        $contenedorCambios .= '<button class="botonConfirmar botonesCambios botonAzul"  id="botonConfirmarCambios">Confirmar Cambios</button>';

        
    }

    echo $contenedorCambios;
}





?>
