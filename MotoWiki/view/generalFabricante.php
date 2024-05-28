
<main class="generalMain">

    <section class="sectionBuscador">

        <span>TODOS LOS FABRICANTES</span>


        <div class="search-box">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input type="search" id="inputBuscador" placeholder="Busqueda por Fabricante">
            
            <div class="contenedorResultados" id="contenedorResultados" hidden>
            
            </div>
        </div>


        <div class="contenedorBotonFiltros">

        </div>

    </section>
    <hr>


    <section class="contenidoGeneral">

            <?php
            
            foreach(Fabricante::obtenerTodosFabricantes() as $key=>$objFabricante){
                echo '  <div class="tarjetaMotoMarca">
                            <div class="contenedorImagenMotoMarca">
                                <img src="'.$objFabricante->__get("imagenFabricante").'" alt="fotoMotocicleta" data-src="./fabricante.php?idFabricante='.$objFabricante->__get("idFabricante").'" onclick="redirigirEnlace(this)">
                            </div>
                            <a href="./fabricante.php?idFabricante='.$objFabricante->__get("idFabricante").'"><h2>'.$objFabricante->__get("nombreFabricante").'</h2></a>
                        </div>';
            }
            
            ?>
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