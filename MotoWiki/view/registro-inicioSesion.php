
<main class="registroMain">
    
    <div class="contenedorPrincipal">
        
        <section class="seccionRegistro-Inicio" id="seccionRegistro">
           
            <h2>REGISTRO</h2>
            <button class="botonAzul botonCambio cambioGrande" id="cambioARegistro"> INICIAR SESIÓN </button>
            <button class="botonAzul botonCambio cambioChico"><i class="fa-solid fa-rotate"></i></button>
            
            <form action="../AJAX/registrarUsuario.php" method="post">
                <div class="contenedorFormulario">
                    
                    <div class="contenedorCampo">
                        <span>Nombre </span>
                        <input type="text" class="campoRegistro" name="registroNombre" placeholder="Input Campo" pattern="^[\p{L}]+$" >
                    </div>

                    <div class="contenedorCampo">
                        <span>Username</span>
                        <input type="text" class="campoRegistro" name="registroUsername" placeholder="Input Campo" >
                    </div>

                    <div class="contenedorCampo">
                        <span>Apellido 1</span>
                        <input type="text" class="campoRegistro" name="registroAp1" placeholder="Input Campo" >
                    </div>

                    <div class="contenedorCampo">
                        <span>Apellido 2</span>
                        <input type="text" class="campoRegistro" name="registroAp2" placeholder="Input Campo" >
                    </div>

                    <div class="contenedorCampo">
                        <span>Contraseña</span>
                        <input type="password" class="campoRegistro" name="registroPwd" placeholder="Input Campo">
                    </div>

                    <div class="contenedorCampo">
                        <span>Confirmar Contraseña</span>
                        <input type="password" class="campoRegistro" name="registroConfirmPwd" placeholder="Input Campo" >
                    </div>
                    
                    <div class="contenedorCampo">
                        <span>Email</span>
                        <input type="text" class="campoRegistro" name="registroEmail" placeholder="Input Campo" >
                    </div>

                    <div class="contenedorCampo">
                        <span>Fecha Nacimiento</span>
                        <input type="date" class="campoRegistro" name="registroNacimiento" placeholder="Input Campo" >
                    </div>

                    <button type="submit" name="enviarRegistro" id="submit" class="botonAzul">REGISTRAR USUARIO</button>
                </div> 
            </form> 
        </section>

        <section class="seccionRegistro-Inicio" id="seccionInicio">
            
            <h2>INICIO SESIÓN</h2>
            <button class="botonAzul botonCambio cambioGrande" id="cambioAInicio"> REGISTRO </button>
            <button class="botonAzul botonCambio cambioChico"><i class="fa-solid fa-rotate"></i></button>

            <form action="../AJAX/inicioSesion.php" method="post">
                <div class="contenedorFormulario">
                    
                    <div class="contenedorCampo contenedorCampoInicioSesion">
                        <span>Username / Email</span>
                        <input type="text" class="campoRegistro"  name="username_email_inicio" placeholder="Username / Email">
                    </div>

                    <div class="contenedorCampo contenedorCampoInicioSesion">
                        <span>Contraseña</span>
                        <input type="password" class="campoRegistro" name="passwordInicio"  placeholder="Contraseña">
                    </div>

                    <button type="submit" name="iniciarSesion" class="botonAzul">INICIAR SESION</button>
                </div> 
            </form> 
        </section>
    </div>

</main>



<script>
    document.addEventListener("DOMContentLoaded", (event) => {
        cambiado = false;

        botonesCambio = document.querySelectorAll(".botonCambio");

        botonesCambio.forEach(element => {
            
            element.addEventListener("click",(ev)=>{
                if(cambiado == true){
                    document.getElementById("seccionRegistro").style.right = "0%";
                    document.getElementById("seccionInicio").style.left = "100%";
                    cambiado = false;
                }else{
                    document.getElementById("seccionRegistro").style.right = "100%";
                    document.getElementById("seccionInicio").style.left = "0%";
                    cambiado = true;
                }
            })
        });
    });
</script>