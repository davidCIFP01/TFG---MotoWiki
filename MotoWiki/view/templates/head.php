<!DOCTYPE html>

<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="../view/assets/css/estilos.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Inter:wght@100..900&family=Racing+Sans+One&display=swap" rel="stylesheet">

    
    
    
    <?php isset($css) ?? '<link rel="stylesheet" href="../view/assets/css/'.$css.'">'; ?>
    

    <title><?= (isset($titulo)) ? $titulo : "FALTA TÍTULO"; ?></title>


</head>
<body>
