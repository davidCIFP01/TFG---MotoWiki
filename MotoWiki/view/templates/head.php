<!DOCTYPE html>

<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script src="https://kit.fontawesome.com/f7c8350fa2.js" crossorigin="anonymous"></script>

    <link rel="shortcut icon" href="../view/assets/images/logos/logo-motoWiki-no-bg.png" type="image/x-icon">

    <link rel="stylesheet" href="../view/assets/css/root.css">  <!-- Root (Apartado con variables CSS) -->
    <link rel="stylesheet" href="../view/assets/css/estilos.css"> <!-- Estilos generales -->
    
    <!-- Estilos componentes / modulos -->
    <link rel="stylesheet" href="../view/assets/css/componentes.css">
    <link rel="stylesheet" href="../view/assets/css/modulos.css">
    

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Inter:wght@100..900&family=Racing+Sans+One&display=swap" rel="stylesheet">

    
    
    
    <?= ( isset($css) ) ? '<link rel="stylesheet" href="../view/assets/css/'.$css.'">' : ''; ?>
    

    <title><?= (isset($titulo)) ? $titulo : "FALTA TÍTULO"; ?></title>

    <script>
        function enviarInicio(){
            window.location.href = "./inicio.php";
        }

    </script>
</head>
<body>
