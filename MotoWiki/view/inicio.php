
<section class="inicioFondo">
    
    <header class="tituloPáginaInicio">MOTO WIKI</header>

    <div class="textoDescriptivoInicio">
        <p>Toda la información necesaria de tus motocicletas favoritas</p>
    </div>

    <div class="contenedorBuscador">

        <div class="search-box">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input type="search" id="inputBuscador" placeholder="Busqueda por Motocicletas / Fabricante">
            <div class="contenedorResultados" id="contenedorResultados" hidden>
            
            </div>
        </div>

    </div>

</section>

<main class="inicioContenido">
<!-- 
    <section class="moduloHorizontal">
        <h2>Últimas Noticias</h2>
        <hr>
        
        <div class="contenedorTarjetas">
            
            <div class="tarjetaNoticia">
                <picture class="tarjetaContenedorImagen">
                    <img src="../view/assets/images/noticia/noticia1.jpeg" alt="MDN" />
                </picture>
                <div class="tarjetaConetendorContenido">
                    <h2> Noticia 1</h2>
                    <hr>
                    <p class="pMeGustas">15 <i class="fa-regular fa-thumbs-up"></i></p>
                    <p class="pAutor">Hecha por: davidrdgz</p>
                </div>
            </div>

            <div class="tarjetaNoticia">
                <div class="tarjetaContenedorImagen">

                </div>
                <div class="tarjetaConetendorContenido">
                    <h2>Kawasaki saca su nueva motocicleta Ninja 900 2024</h2>
                    <hr>
                    <p class="pMeGustas">15 <i class="fa-regular fa-thumbs-up"></i></p>
                    <p class="pAutor">Hecha por: davidrdgz</p>
                </div>
            </div>

            <div class="tarjetaNoticia">
                <div class="tarjetaContenedorImagen">

                </div>
                <div class="tarjetaConetendorContenido">
                    <h2> asio`vusuioabvuioasbvuiabsouivbasu bvoaiusb voasbivbasiv biasb vipasbpiv</h2>
                    <hr>
                    <p class="pMeGustas">15 <i class="fa-regular fa-thumbs-up"></i></p>
                    <p class="pAutor">Hecha por: davidrdgz</p>
                </div>
            </div>

            <div class="tarjetaNoticia">
                <img>
            </div>
            
        </div>
    </section> -->

    

    <section class="moduloHorizontal">
        <h2>Últimas Novedades</h2>
        <hr>

        <div class="contenedorTarjetas">

            <?= Motocicleta::generarModulo($modo="nuevas"); ?>

        </div>

    </section>

    <section class="moduloHorizontal">
        <h2>Más populares</h2>
        <hr>

        <div class="contenedorTarjetas">

            
        <?= Motocicleta::generarModulo($modo="populares"); ?>

        </div>
    </section>

    <section class="moduloHorizontal">
        <h2>Más Baratas</h2>
        <hr>

        <div class="contenedorTarjetas">

            <?= Motocicleta::generarModulo($modo="baratas"); ?>

        </div>
    </section>
    
</main>

<script src="../view/assets/js/toggleFavorito.js"></script>
<script src="../view/assets/js/funcionesRedireccion.js"></script>
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