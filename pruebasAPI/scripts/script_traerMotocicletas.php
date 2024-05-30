
<!-- Con este archivo traemos las motocicletas de cada marca. -->

<!-- 
    LISTA TRAIDAS (OFFSET)

    KAWASAKI == 0
    HONDA == 0
    YAMAHA == 0 
 -->
<?php

$conexion = mysqli_connect("localhost","root","","motowiki");

// for ($i = 0; $i < 300; $i += 30) {

$key="XkPnmvHTmjVd0veY4ZQEcw==9XPtzIVTabrW67Yd";

// echo "<br>$i<br>";

$url="https://api.api-ninjas.com/v1/motorcycles?make=bmw&offset=30";

    // Inicializar cURL
$curl = curl_init($url);

// Configurar opciones de cURL
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
curl_setopt($curl, CURLOPT_HTTPHEADER, array(
    'X-Api-Key: '.$key, // Reemplaza YOUR_API_KEY_HERE con tu clave API
));

// Ejecutar la solicitud y obtener la respuesta
$response = curl_exec($curl);

// Verificar si hay errores
if(curl_errno($curl)){
    echo 'Error:' . curl_error($curl);
}

// Cerrar cURL
curl_close($curl);

// Imprimir la respuesta
$motos=json_decode($response,true);

foreach ($motos as $key => $detallesMoto) {
    echo "<br>".$key."<br>";

    $patron = "/\d+\.\d+/";
    $matches = [];
    
    if(isset($detallesMoto['power'])){
        preg_match_all($patron, $detallesMoto['power'], $matches);
        $numeros = $matches[0];
    }


    print_r($detallesMoto);
    
    $cilindrada = explode(".",$detallesMoto["displacement"])[0];
    $peso = (isset($detallesMoto["total_weight"])) ? explode(" ",$detallesMoto["total_weight"])[0] : NULL;
    $altura = ( isset($detallesMoto["total_height"]) ) ? explode(" ",$detallesMoto["total_height"])[0] : "" ;
    $capacidad = explode(" ",$detallesMoto["fuel_capacity"])[0];
    $caballos = (isset($detallesMoto['power'])) ? $numeros[0] : NULL ;
    $kw = (isset($detallesMoto['power']) ) ? $numeros[1] : NULL ;

    $starter = (isset($detallesMoto['starter'])) ? $detallesMoto['starter'] : NULL ;
    
    // echo "<br><br>$caballos-$kw<br><br>";

    
$sql = "INSERT INTO motocicleta (nombreModelo, fechaFabricacion, tipoMoto, cilindrada, potencia1, potencia2, refrigeracion, tipoMotor, marchas, transmision, capacidad, arranque, tag, tipoCarnet, popularidad, precioMin, precioMax, descripcion, imagenMoto, suspendida,altura,peso, idFabricante) 
        VALUES (
            '$detallesMoto[model]',
            '$detallesMoto[year]',
            '$detallesMoto[type]', 
            $cilindrada, 
            ". ( (empty($caballos) || $caballos == "" ) ? 'NULL' : $caballos ) .", 
            ". ( (empty($kw) || $kw == "" ) ? 'NULL' : $kw ) .", 
            '".( (empty($detallesMoto['cooling'])) ? 'NULL' : $detallesMoto['cooling'] )."',
            '$detallesMoto[engine]', 
            '".(isset($detallesMoto['gearbox']) ? $detallesMoto['gearbox'] : NULL)."',
            '$detallesMoto[transmission]', 
            ".(empty($capacidad) ? 'NULL' : $capacidad).",
            '".(($starter == "") ? 'NULL' : $starter)."',
            NULL, 
            NULL, 
            0, 
            NULL, 
            NULL, 
            NULL, 
            NULL, 
            0, 
            ".(empty($altura) ? 'NULL' : $altura ) .",
            ".(empty($peso) ? 'NULL' : $peso ) .",
            10
        )";
        
    print_r($sql);
    $conexion->query($sql);
}
// }


?>