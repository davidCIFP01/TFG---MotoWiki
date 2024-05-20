

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
            <li class="Principales"><a>MARCAS</a>
                <ul>
                    <li><a>KAWASAKI</a></li>
                    <li><a>KAWASAKI</a></li>
                    <li><a>KAWASAKI</a></li>
                    <li><a>KAWASAKI</a></li>
                    <li><a>Harley-Davidson</a></li>
                    <li><a>KAWASAKI</a></li>
                    <li><a>KAWASAKI</a></li>
                    <li><a>KAWASAKI</a></li>
                </ul>
            </li>
            <li class="Principales"><a>MOTOS</a></li>
            <li class="Principales"><a>GESTIÓN</a>
                <ul>
                    <li><a href="./gestionUsuario.php">USUARIO</a></li>
                    <li><a href="./gestionDatos.php">API</a></li>
                    <li><a href="./gestionLogs.php">LOGS</a></li>
                </ul>
            </li>
        </ul>
    </div>

</nav>


<script>
    function enviarInicio(){
        window.location.href = "./inicio.php";
    }

    // document.getElementById("logoTítuloNav").addEventListener("click",enviarInicio());
    // document.getElementById("formaNav").addEventListener("click",enviarInicio());
</script>