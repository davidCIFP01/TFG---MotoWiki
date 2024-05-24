
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
            <p><?= $_SESSION['fechaNac']; ?></p>
        </div>

        <button class="botonRojo btn1 enlazado" data-src="../AJAX/cerrarSesion.php">Cerrar Sesión</button>
        <button class="botonAzul btn2">EDITAR DATOS</button>

    </div>


    <section class="moduloHorizontal">
        <h2>Tus Favoritas</h2>
        <hr>

        <div class="contenedorTarjetas">

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <a href="#"><h2>YBR125</h2></a>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

        </div>

    </section>

</main>


<script>
    document.addEventListener("DOMContentLoaded",()=>{
        todosEnlaces =document.querySelectorAll(".enlazado");

        todosEnlaces.forEach(element => {
            element.addEventListener("click",(ev)=>{

                enlaceFabricante = ev.target.getAttribute("data-src");
                window.location.href= enlaceFabricante;
            })
        });
    })
</script>