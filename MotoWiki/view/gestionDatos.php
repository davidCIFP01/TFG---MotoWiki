<main class="mainGestion">
    <h1>GESTION DE DATOS</h1>

    <div class="search-box">
        <i class="fa-solid fa-magnifying-glass"></i>
        <input type="search" id="inputBuscador" placeholder="Busqueda por Fabricante / Motocicleta">

        <div class="contenedorResultados" id="contenedorResultados" hidden>
            
        </div>
    </div>
    <div class="contenedorBotones" id="contenedorBotones">
        <button class="botonAzul" id="nuevaMoto" onclick="crearRecuadrosGestionDatos('nuevaMoto')">Nueva Moto</button>
        <button class="botonAzul" id="nuevoFabricante" onclick="crearRecuadrosGestionDatos('nuevoFabricante')">Nuevo Fabricante</button>
    </div>


    <!-- PARA MARCA / MOTO -->
    <div class="contenedorCambios" id="contenedorCambios" hidden>

    </div>


</main>

<script src="../view/assets/js/toggleFavorito.js"></script>
<script src="../view/assets/js/toggleSuspendido.js"></script>
<script src="../view/assets/js/funcionesRedireccion.js"></script>
<script src="../view/assets/js/llamadaBuscador.js"></script>
<script src="../view/assets/js/cambioImagen.js"></script>
<script>

    document.getElementById("inputBuscador").addEventListener("input",(ev)=>{
        string = ev.target.value;

        buscadorSinEnlacesGestionDatos(string)

        if(string == ""){
            document.getElementById("contenedorResultados").hidden = true;
        }else{
            document.getElementById("contenedorResultados").hidden = false;
        }

        if(string == ""){
            document.getElementById("contenedorCambios").hidden = true;
        }
    })

    
</script>

