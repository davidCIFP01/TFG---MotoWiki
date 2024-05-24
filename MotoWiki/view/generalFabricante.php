
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
                <a href="#"><h2>YBR125</h2></a>
            </div>

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
                <a href="#"><h2>YBR125</h2></a>
            </div>

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
                <a href="#"><h2>YBR125</h2></a>
            </div>

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
                <a href="#"><h2>YBR125</h2></a>
            </div>

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
                <a href="#"><h2>YBR125</h2></a>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <a href="#"><h2>YBR125</h2></a>
            </div>
    </section>
</main>


<script>

    function llamadaConsultaBusqueda(modo,string){
        data = {
            modo: modo,
            textoBusqueda: string
        };

        url = "../AJAX/busquedaMotocicletaMarca.php"

        fetch(url, {
            method: 'POST', // Método de la solicitud
            headers: {
                'Content-Type': 'form-data' // Indica que se enviarán datos en formato JSON
            },
            body: JSON.stringify(data) // Convertir el objeto de datos a una cadena JSON
        })

        .then(response => response.text())

        .then(responseData =>{
            console.log(responseData)
            // console.log("Hola")
            document.getElementById("contenedorResultados").innerHTML =responseData

            /* Creamos divs y los metemos en el contenedor de Resultados. */
        })
    }


    document.getElementById("inputBuscador").addEventListener("input",(ev)=>{
        string = ev.target.value;
        llamadaConsultaBusqueda("ambas",string)

        if(string == ""){
            document.getElementById("contenedorResultados").hidden = true;
        }else{
            document.getElementById("contenedorResultados").hidden = false;
        }

    })

    
</script>