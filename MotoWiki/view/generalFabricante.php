
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


<script src="../view/assets/js/llamadaBuscador.js"></script>
<script>

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