<?php

// Función para realizar la búsqueda y extraer las imágenes
function searchImages($query) {
    // URL de búsqueda de Google Images
    $url = 'https://www.google.com/search?q=' . urlencode($query) . '&tbm=isch';

    // Inicializa cURL
    $ch = curl_init();
    
    // Configura las opciones de cURL
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HEADER, false);
    
    // Ejecuta la solicitud cURL
    $html = curl_exec($ch);
    
    // Cierra la sesión cURL
    curl_close($ch);

    // Extrae las URL de las imágenes
    preg_match_all('/img\s+src\s*=\s*"([^"]+)"\s+/i', $html, $matches);

    // Devuelve las URL de las imágenes encontradas
    return $matches[1];
    
}

// Término de búsqueda
$searchTerm = 'ybr125';

// Realiza la búsqueda de imágenes
$images = searchImages($searchTerm);

// Muestra las primeras 5 imágenes encontradas
for ($i = 0; $i < min(5, count($images)); $i++) {
echo '<img src="' . searchImages($searchTerm) . '" alt="Imagen ' . ($i+1) . '">';
}
?>