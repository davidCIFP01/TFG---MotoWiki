<?php

$curl = curl_init();

curl_setopt_array($curl, [
	CURLOPT_URL => "https://motorcycle-specs-database.p.rapidapi.com/article/804882/image/link",
	CURLOPT_RETURNTRANSFER => true,
	CURLOPT_ENCODING => "",
	CURLOPT_MAXREDIRS => 10,
	CURLOPT_TIMEOUT => 30,
	CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	CURLOPT_CUSTOMREQUEST => "GET",
	CURLOPT_HTTPHEADER => [
		"X-RapidAPI-Host: motorcycle-specs-database.p.rapidapi.com",
		"X-RapidAPI-Key: fa998a04f7msh6f2f078e3b936f9p1b6b80jsncf66ef5fec1b"
	],
]);

$response = json_decode(curl_exec($curl),true);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
	echo "cURL Error #:" . $err;
} else {
    echo "<img src='".$response['link']."' alt='Descripción opcional de la imagen'>";
}