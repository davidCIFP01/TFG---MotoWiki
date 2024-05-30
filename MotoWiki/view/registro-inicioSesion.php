
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
                        <input type="text" class="campoRegistro" name="registroNombre" placeholder="Input Campo" title="Solo letras" pattern="^[\p{L}]+$" required>
                    </div>

                    <div class="contenedorCampo">
                        <span>Username</span>
                        <input type="text" class="campoRegistro" name="registroUsername" placeholder="Input Campo"  title="Entre 4 y 15 caracteres alfanuméricos" pattern="^[a-zA-Z0-9]{4,15}$" required>
                    </div>

                    <div class="contenedorCampo">
                        <span>Apellido 1</span>
                        <input type="text" class="campoRegistro" name="registroAp1" placeholder="Input Campo" title="Solo letras" pattern="^[\p{L}]+$" required>
                    </div>

                    <div class="contenedorCampo">
                        <span>Apellido 2</span>
                        <input type="text" class="campoRegistro" name="registroAp2" placeholder="Input Campo"  pattern="^[\p{L}]+$" >
                    </div>

                    <div class="contenedorCampo">
                        <span>Contraseña</span>
                        <input type="password" class="campoRegistro" name="registroPwd" placeholder="Input Campo" title="Mínimo 8 caracteres, al menos una letra y un número" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" required>
                    </div>

                    <div class="contenedorCampo">
                        <span>Confirmar Contraseña</span>
                        <input type="password" class="campoRegistro" name="registroConfirmPwd" id="registroConfirmPwd" placeholder="Input Campo" required>
                    </div>
                    
                    <div class="contenedorCampo">
                        <span>Email</span>
                        <input type="text" class="campoRegistro" name="registroEmail" placeholder="Input Campo"  title="Correo electrónico válido" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,5}"  required>
                    </div>

                    <div class="contenedorCampo">
                        <span>Fecha Nacimiento</span>
                        <input type="date" class="campoRegistro" name="registroNacimiento" placeholder="Input Campo" required>
                    </div>

                    <button type="submit" name="enviarRegistro" id="submit" class="botonAzul" >REGISTRAR USUARIO</button>
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
                        <input type="text" class="campoRegistro" id="username_email_inicio"  name="username_email_inicio" placeholder="Username / Email">
                    </div>

                    <div class="contenedorCampo contenedorCampoInicioSesion">
                        <span>Contraseña</span>
                        <input type="password" class="campoRegistro" id="passwordInicio" name="passwordInicio"  placeholder="Contraseña">
                    </div>

                    <button type="submit" name="iniciarSesion" id="botonIniciarSesion"  class="botonAzul" >INICIAR SESION</button>
                </div> 
            </form> 
        </section>
    </div>

</main>


<script src="../view/assets/js/funcionesRedireccion.js"></script>
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


    todosCampos = document.querySelectorAll(".campoRegistro")

    todosCampos.forEach(element => {
        element.addEventListener("blur",(ev)=>{

                if (!ev.target.checkValidity()) {
                    ev.target.classList.add('invalido');
                } else {
                    ev.target.classList.remove('invalido');
                    
                }
        })
    });

    document.getElementById("botonIniciarSesion").addEventListener("click", (ev) => {
    const expReg1 = /^[\p{L}]+$/u; // Para nombres de usuario que son solo letras
    const expReg2 = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/; // Para contraseñas
    const expReg3 = /^[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,5}$/; // Para correos electrónicos
    
    const inputNameEmail = document.getElementById("username_email_inicio");
    const inputPwd = document.getElementById("passwordInicio");
    
    let valid = true;
    
    // Validación del nombre de usuario o correo electrónico
    if (!(expReg1.test(inputNameEmail.value) || expReg3.test(inputNameEmail.value))) {
        inputNameEmail.classList.add("invalido");
        valid = false;
    } else {
        inputNameEmail.classList.remove("invalido");
    }
    
    // Validación de la contraseña
    if (!expReg2.test(inputPwd.value)) {
        inputPwd.classList.add("invalido");
        valid = false;
    } else {
        inputPwd.classList.remove("invalido");
    }
    
    if (!valid) {
        ev.preventDefault();
    }
});


</script>


