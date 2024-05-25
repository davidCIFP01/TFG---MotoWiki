<main class="mainGestion">
    <h1>GESTION DE DATOS</h1>

    <div class="search-box">
        <i class="fa-solid fa-magnifying-glass"></i>
        <input type="search" id="inputBuscador" placeholder="Busqueda por Fabricante">

        <div class="contenedorResultados" id="contenedorResultados" hidden>
            
        </div>
    </div>


    <!-- PARA MARCA / MOTO -->
    <div class="contenedorCambios" id="contenedorCambios" hidden>

    </div>


</main>

<script src="../view/assets/js/toggleFavorito.js"></script>
<script src="../view/assets/js/funcionesRedireccion.js"></script>
<script src="../view/assets/js/llamadaBuscador.js"></script>
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

