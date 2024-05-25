<main class="mainGestion">
    <h1>GESTION DE USUARIOS</h1>

    <div class="search-box">
        <i class="fa-solid fa-magnifying-glass"></i>
        <input type="search" class="inputBuscador" id="inputBuscador" placeholder="Busqueda por Fabricante">
    </div>

    <div class="contenedorUsuarios" id="contenedorUsuarios">

    </div>
</main>


<script src="../view/assets/js/toggleFavorito.js"></script>
<script src="../view/assets/js/toggleVetado.js"></script>

<script src="../view/assets/js/funcionesRedireccion.js"></script>
<script src="../view/assets/js/llamadaBuscador.js"></script>
<script>

    document.getElementById("inputBuscador").addEventListener("input",(ev)=>{
        string = ev.target.value;
        llamadaConsultaUsuarios(string)

        if(string == ""){
            document.getElementById("contenedorUsuarios").hidden = true;
        }else{
            document.getElementById("contenedorUsuarios").hidden = false;
        }

    })
    
</script>
