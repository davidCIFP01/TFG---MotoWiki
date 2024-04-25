<?php

// for ($i = 0; $i < 3000; $i += 30) {

$key="XkPnmvHTmjVd0veY4ZQEcw==9XPtzIVTabrW67Yd";

// echo "<br>$i<br>";

$url="https://api.api-ninjas.com/v1/motorcycles?make=kawasaki&offset=0";

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
    echo $key.": ";
    
    echo " Modelo -> $detallesMoto[model]";
    
    echo "<br>";
}
// }


?>