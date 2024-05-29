
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
            <span>Tipo de Usuario</span>
            <p><?= $_SESSION['tipoUsuario']; ?></p>
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
            <span>Fecha Nacimiento</span>
            <p><?= (isset($_SESSION['fechaNac'])) ? $_SESSION['fechaNac'] : "-"; ?></p>
        </div>

        <button class="botonRojo btn1 enlazado" data-src="../AJAX/cerrarSesion.php" onclick="redirigirEnlace(this)">Cerrar Sesión</button>
        <button class="botonAzul btn2" id="editarDatosPerfil">EDITAR DATOS</button>

    </div>


    <section class="moduloHorizontal">
        <h2>Tus Favoritas</h2>
        <hr>

        <div class="contenedorTarjetas">

            <?= 
                Motocicleta::generarModulo( $modo="favoritas");
            ?>

        </div>

    </section>


    <div class="popUpCambioPerfil" id="popUpCambioPerfil">
    <form action="../AJAX/cambiarDatosUsuario.php" method="post">
        <div class="contenedorCambiandoPerfil">
            <button class="botonCerrarPopUpOfertas" id="botonCerrarPopUpOfertas">X</button>

            
            <div><label>Nombre</label> <input type="text" name="nuevoNombre" value="<?= $_SESSION['nombre']?>"> </div>
            <div><label>Apellido 1:</label> <input type="text" name="nuevoAp1" value="<?= $_SESSION['ap1']?>"> </div>
            <div><label>Apellido 2:</label> <input type="text" name="nuevoAp2" value="<?= $_SESSION['ap2']?>"> </div>
            <div><label>Username:</label> <input type="text" name="username" value="<?= $_SESSION['username']?>"> </div>
            <div><label>Email:</label> <input type="text" name="email" value="<?= $_SESSION['email']?>"> </div>
            <div><label>Nueva Contraseña:</label> <input type="password" name="newPasswd" value=""> </div>
            <div><label>Fecha Nacimiento</label> <input type="date" name="fechaNac" value="<?= $_SESSION['fechaNac']?>"> </div>

            <button class="botonAzul">Confirmar Cambios</button>
            
        </div>
    </form>
    </div>

</main>

<script src="../view/assets/js/toggleFavorito.js"></script>
<script src="../view/assets/js/funcionesRedireccion.js"></script>
<script src="../view/assets/js/llamadaBuscador.js"></script>
<script>

/*     document.getElementById("inputBuscador").addEventListener("input",(ev)=>{
        string = ev.target.value;
        llamadaConsultaBusqueda("fabricante",string)

        if(string == ""){
            document.getElementById("contenedorResultados").hidden = true;
        }else{
            document.getElementById("contenedorResultados").hidden = false;
        }

    }) */



    document.getElementById("editarDatosPerfil").addEventListener("click",(ev)=>{
        document.getElementById("popUpCambioPerfil").style.display = "flex";
    })

    document.getElementById("botonCerrarPopUpOfertas").addEventListener("click",(ev)=>{
        ev.preventDefault();
        document.getElementById("popUpCambioPerfil").style.display = "none";
    })
</script>
