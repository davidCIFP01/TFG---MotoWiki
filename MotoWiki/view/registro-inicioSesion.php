
<main class="registroMain">
    
    <div class="contenedorPrincipal">
        
        <section class="seccionRegistro-Inicio" id="seccionRegistro">
           
            <h2>REGISTRO</h2>
            <button class="botonAzul botonCambio" id="cambioARegistro"> INICIAR SESIÓN </button>
            
            <form>
                <div class="contenedorFormulario">
                    
                    <div class="contenedorCampo">
                        <span>NombreCampo</span>
                        <input type="text" class="campoRegistro" placeholder="Input Campo">
                    </div>

                    <div class="contenedorCampo">
                        <span>NombreCampo</span>
                        <input type="text" class="campoRegistro" placeholder="Input Campo">
                    </div>

                    <div class="contenedorCampo">
                        <span>NombreCampo</span>
                        <input type="text" class="campoRegistro" placeholder="Input Campo">
                    </div>

                    <div class="contenedorCampo">
                        <span>NombreCampo</span>
                        <input type="text" class="campoRegistro" placeholder="Input Campo">
                    </div>

                    <div class="contenedorCampo">
                        <span>NombreCampo</span>
                        <input type="text" class="campoRegistro" placeholder="Input Campo">
                    </div>

                    <div class="contenedorCampo">
                        <span>NombreCampo</span>
                        <input type="text" class="campoRegistro" placeholder="Input Campo">
                    </div>
                    
                    <div class="contenedorCampo">
                        <span>NombreCampo</span>
                        <input type="text" class="campoRegistro" placeholder="Input Campo">
                    </div>

                    <div class="contenedorCampo">
                        <span>NombreCampo</span>
                        <input type="text" class="campoRegistro" placeholder="Input Campo">
                    </div>

                    <button type="submit" class="botonAzul">REGISTRAR USUARIO</button>
                </div> 
            </form> 
        </section>

        <section class="seccionRegistro-Inicio" id="seccionInicio">
            
            <h2>INICIO SESIÓN</h2>
            <button class="botonAzul botonCambio" id="cambioAInicio"> REGISTRO </button>

            <form>
                <div class="contenedorFormulario">
                    
                    <div class="contenedorCampo contenedorCampoInicioSesion">
                        <span>Username / Email</span>
                        <input type="text" class="campoRegistro" placeholder="Username / Email">
                    </div>

                    <div class="contenedorCampo contenedorCampoInicioSesion">
                        <span>Contraseña</span>
                        <input type="text" class="campoRegistro" placeholder="Contraseña">
                    </div>

                    <button type="submit" class="botonAzul">INICIAR SESION</button>
                </div> 
            </form> 
        </section>
    </div>

</main>



<script>
    document.addEventListener("DOMContentLoaded", (event) => {
        document.getElementById("cambioAInicio").addEventListener("click", (ev) => {
            document.getElementById("seccionRegistro").style.right = "0%";
            document.getElementById("seccionInicio").style.left = "100%";
        });

        document.getElementById("cambioARegistro").addEventListener("click", (ev) => {
            document.getElementById("seccionRegistro").style.right = "100%";
            document.getElementById("seccionInicio").style.left = "0%";
        });
    });
</script>