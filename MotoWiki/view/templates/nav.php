

<?php

    $todosFabricantes = Fabricante::obtenerTodosFabricantes();

?>

<nav class="barraNavegadora">
    <!-- <a href="#" class="enlacelogoTítuloNav"> -->
        <div class="logoTítuloNav" onclick="enviarInicio()">
            <img src="../view/assets/images/logos/logo-motoWiki-no-bg.png" alt="Logo Motowiki">
            <span>MOTO-WIKI</span>
        </div>
        <div class="formaNav" onclick="enviarInicio()"></div>
    <!-- </a> -->
    
    <div class="contenedorEnlaces">
        <ul class="ulPrincipal">
            <li class="Principales"><a href="./perfilUsuario.php">PERFIL</a></li>
            <li class="Principales"><a href="./fabricante.php">MARCAS</a>
                <ul>
                    <?php
                    foreach ($todosFabricantes as $key => $value) {
                        echo "<li><a href='./fabricante.php?idFabricante=".$value->__get('idFabricante')."'>".$value->__get('nombreFabricante')."</a></li>";
                    }
                    ?>
                </ul>
            </li>
            <li class="Principales"><a href="./motocicleta.php">MOTOS</a></li>
            <li class="Principales"><a>GESTIÓN</a>
                <ul>
                    <li><a href="./gestionUsuarios.php">USUARIO</a></li>
                    <li><a href="./gestionDatos.php">API</a></li>
                    <li><a href="./gestionLogs.php">LOGS</a></li>
                </ul>
            </li>
        </ul>
    </div>

</nav>

<nav class="barraNavegadoraMobile">
    
        <div class="contenedorIconosNavMobile" data-src="./perfilUsuario.php" ><i class="fa-regular fa-user"></i></div>
        <div class="contenedorIconosNavMobile" data-src="./fabricante.php" ><i class="fa-solid fa-city"></i></div>
        <div class="contenedorIconosNavMobile" data-src="./motocicleta.php" ><i class="fa-solid fa-motorcycle"></i></div>
        <div class="contenedorIconosNavMobile" data-src="" ><i class="fa-solid fa-gears"></i></div>
</nav>


