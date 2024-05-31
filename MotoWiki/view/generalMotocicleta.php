
<main class="generalMain">

    <section class="sectionBuscador">

        <span>TODAS LAS MOTOS</span>


        <div class="search-box">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input type="search" id="inputBuscador" placeholder="Busqueda por Motocicleta">
            
            <div class="contenedorResultados" id="contenedorResultados" hidden>
            
            </div>
        </div>


        <div class="contenedorBotonFiltros">
<!--             <button class="botonAzul" id="botonFiltros">FILTROS</button> -->
        </div>

    </section>
    <hr>
    <div class="contenedorFiltrosMotos" id="contenedorFiltrosMotos" hidden>
        
    </div>


    <section class="contenidoGeneral" id="contenedorGeneral">
            



    </section>
    
    <div class="contenedorBotonesPaginacion">
        <button class="botonAzul" id="botonAntes"> < </button>
        <p id="parrafoPaginacion"> 0 </p>
        <button class="botonAzul" id="botonDespues"> > </button>
    </div>
</main>

<script src="../view/assets/js/toggleFavorito.js"></script>
<script src="../view/assets/js/funcionesRedireccion.js"></script>
<script src="../view/assets/js/llamadaBuscador.js"></script>
<script>

    document.getElementById("inputBuscador").addEventListener("input",(ev)=>{
        string = ev.target.value;
        llamadaConsultaBusqueda("moto",string)

        if(string == ""){
            document.getElementById("contenedorResultados").hidden = true;
        }else{
            document.getElementById("contenedorResultados").hidden = false;
        }

    })
    
</script>

<script>
    paginacion = -1;   
    cantidadMotos = 12;

    document.getElementById("botonAntes").addEventListener("click",(ev)=>{
        paginacion--;
        if(paginacion<0){
            paginacion = 0;
        }else{
            document.getElementById("contenedorGeneral").innerHTML = "";

            const data = {
                paginacion: paginacion,
                cantidad: cantidadMotos
            };

            fetch('../AJAX/generarTarjetasPaginadas.php', {
                method: 'POST', // o 'GET' si prefieres enviar los datos como parámetros de URL
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(data) // Convertir los datos a formato JSON
            })
            .then(response => response.text()) // Asumimos que el servidor devuelve JSON
            .then(data => {
                console.log(data);
                document.getElementById("contenedorGeneral").innerHTML = data;
                document.getElementById("parrafoPaginacion").innerHTML = paginacion;
            })
            .catch((error) => {
                console.error('Error:', error);
            });
        }

        
    })

    document.getElementById("botonDespues").addEventListener("click",(ev)=>{
        paginacion++;
        document.getElementById("contenedorGeneral").innerHTML = "";

        const data = {
            paginacion: paginacion,
            cantidad: cantidadMotos
        };
        fetch('../AJAX/generarTarjetasPaginadas.php', {
            method: 'POST', 
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data) // Convertir los datos a formato JSON
        })
        .then(response => response.text()) 
        .then(data => {
            console.log(data);
            if(data == "" || data == null){
                paginacion--;
            }else{
                document.getElementById("contenedorGeneral").innerHTML = data;
                document.getElementById("parrafoPaginacion").innerHTML = paginacion;
            }
        })
        .catch((error) => {
            console.error('Error:', error);
        });

    })

    document.getElementById("botonDespues").click();
</script>