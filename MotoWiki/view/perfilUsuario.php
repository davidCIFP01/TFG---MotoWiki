
<main class="mainPerfil">
    
    <h2>PERFIL DE USUARIO</h2>

    <div class="contenedorTusDatos">
        <span>TUS DATOS</span>

        <div class="contInfoTusDatos">
            <span>Username</span>
            <p><?= $_SESSION['username'];?></p>
        </div>

        <div class="contInfoTusDatos">
            <span>Email</span>
            <p><?= $_SESSION['email'];?></p>
        </div>

        <div class="contInfoTusDatos">
            <span>Nombre</span>
            <p><?= $_SESSION['nombre'];?></p>
        </div>

        <div class="contInfoTusDatos">
            <span>Apellidos</span>
            <p><?= $_SESSION['ap1']." ".$_SESSION['ap2'];?></p>
        </div>

        <div class="contInfoTusDatos">
            <span>Tipo de Usuario</span>
            <p><?= $_SESSION['tipoUsuario']; ?></p>
        </div>

        <div class="contInfoTusDatos">
            <span>Fecha Nacimiento</span>
            <p><?= (isset($_SESSION['fechaNac'])) ? $_SESSION['fechaNac'] : "-"; ?></p>
        </div>

        <button class="botonRojo btn1 enlazado" data-src="../AJAX/cerrarSesion.php" onclick="redirigirEnlace(this)">Cerrar Sesión</button>
        <button class="botonAzul btn2">EDITAR DATOS</button>

    </div>


    <section class="moduloHorizontal">
        <h2>Tus Favoritas</h2>
        <hr>

        <div class="contenedorTarjetas">

            <?= 
                Motocicleta::generarModulo($modo="favoritas",$idUsuario = $_SESSION['idUser']);
            ?>

        </div>

    </section>

</main>

<script src="../view/assets/js/toggleFavorito.js"></script>
<script src="../view/assets/js/funcionesRedireccion.js"></script>
<script src="../view/assets/js/llamadaBuscador.js"></script>
<script>

    document.getElementById("inputBuscador").addEventListener("input",(ev)=>{
        string = ev.target.value;
        llamadaConsultaBusqueda("fabricante",string)

        if(string == ""){
            document.getElementById("contenedorResultados").hidden = true;
        }else{
            document.getElementById("contenedorResultados").hidden = false;
        }

    })
</script>
