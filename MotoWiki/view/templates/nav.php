

<?php

    $todosFabricantes = Fabricante::obtenerTodosFabricantes();

?>

<nav class="barraNavegadora">

    <?php if(isset($_SESSION) && $_SESSION['tipoUsuario'] == "user"){ ?>
        <div class="logoTítuloNav" onclick="enviarInicio()">
            <img src="../view/assets/images/logos/logo-motoWiki-no-bg.png" alt="Logo Motowiki">
            <span>MOTO-WIKI</span>
        </div>
        <div class="formaNav" onclick="enviarInicio()"></div>

    <?php }else if(isset($_SESSION) && $_SESSION['tipoUsuario'] == "colab"){?>
        <div class="logoTítuloNav" onclick="enviarInicio()">
            <img src="../view/assets/images/logos/logo-motoWiki-no-bg.png" alt="Logo Motowiki">
            <span>Colaborador</span>
        </div>
        <div class="formaNav" onclick="enviarInicio()"></div>
    <?php }else if(isset($_SESSION) && $_SESSION['tipoUsuario'] == "admin"){?>
        <div class="logoTítuloNav" onclick="enviarInicio()">
            <img src="../view/assets/images/logos/logo-motoWiki-no-bg.png" alt="Logo Motowiki">
            <span>Administrador</span>
        </div>
        <div class="formaNav" onclick="enviarInicio()"></div>
    <?php } ?>

    
    <div class="contenedorEnlaces">
        <ul class="ulPrincipal">
            <?php if(!empty($_SESSION)){ ?>
            <li class="Principales"><a href="./perfilUsuario.php">PERFIL</a></li>
            <?php }?>
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
                <?php if(!empty($_SESSION) && ($_SESSION['tipoUsuario'] == "admin" )){?>
                    <li><a href="./gestionUsuarios.php">USUARIO</a></li>
                <?php }?>
                    <li><a href="./gestionDatos.php">API</a></li>
                    <li><a href="./gestionLogs.php">LOGS</a></li>
                </ul>
            </li>
            <?php if(empty($_SESSION)){ ?>
            <li class="Principales registro"><a href="./registro-inicioSesion.php">REGISTRO</a></li>
            <?php }?>
        </ul>
    </div>

</nav>

<nav class="barraNavegadoraMobile">
    
        <div class="contenedorIconosNavMobile enlazado" data-src="./perfilUsuario.php" onclick="redirigirEnlace(this)"><i class="fa-regular fa-user" data-src="./perfilUsuario.php" onclick="redirigirEnlace(this)"></i></div>
        <div class="contenedorIconosNavMobile enlazado" data-src="./fabricante.php" onclick="redirigirEnlace(this)"><i class="fa-solid fa-city" data-src="./fabricante.php" onclick="redirigirEnlace(this)"></i></div>
        <div class="contenedorIconosNavMobile enlazado" data-src="./motocicleta.php" onclick="redirigirEnlace(this)"><i class="fa-solid fa-motorcycle" data-src="./motocicleta.php" onclick="redirigirEnlace(this)"></i></div>
        
        <?php if(!empty($_SESSION) && ($_SESSION['tipoUsuario'] == "admin" || $_SESSION['tipoUsuario'] == "colab")){ ?>
            <div class="contenedorIconosNavMobile enlazado" data-src="./gestionMobile.php" onclick="redirigirEnlace(this)"><i class="fa-solid fa-gears" data-src="./gestionMobile.php" onclick="redirigirEnlace(this)"></i></div>
        <?php }?>
            
</nav>


