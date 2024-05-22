
<main class="dedicadaMain">

    <section class="informacionDedicadaMoto">
    <?php 
        if($dedicada != true){
            echo "<h2>No se ha encontrado ninguna motocicleta.</h2></section>";
        }else{
        ?>

        <div class="presentacionMotocicleta">
            <div class="contenedorImagenMotoMarca">
                <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta" id="enlaceFabricante" data-src="<?= $Fabricante->__get("sitioWeb")?>">
            </div>
            
            <div class="datosPresentacion">
                <div class="datosMotoArriba">
                    
                    <div class="nombreMoto">
                        <h2><?= $Fabricante->__get("nombreFabricante")?></h2>
                    </div>
                    
                    <div class="marcaMoto">
                        <span class="miniTexto">SEDE:</span>
                        <p><?= $Fabricante->__get("paisOrigen")?></p>
                    </div>
                    
                    <div class="fechaMoto">
                        <p>Fundada: <?= $Fabricante->__get("fechaFundada")?></p>
                    </div>

                </div>

                <div class="datosMotoAbajo">
                    <p><?= $Fabricante->__get("descripcion1") ?></p>
                </div>
            </div>
        </div>

        <div class="textoExtra">
            <p><?= $Fabricante->__get("descripcion2")?></p>
        </div>

    </section>

    <section class="moduloHorizontal">
        <h2>Últimas Novedades</h2>
        <hr>

        <div class="contenedorTarjetas">

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
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

        </div>

    </section>

    <section class="moduloHorizontal">
        <h2>Más populares</h2>
        <hr>

        <div class="contenedorTarjetas">

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
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

        </div>
    </section>

    <section class="moduloHorizontal">
        <h2>Más Baratas</h2>
        <hr>

        <div class="contenedorTarjetas">

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
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

            <div class="tarjetaMotoMarca">
                <div class="contenedorImagenMotoMarca">
                    <img src="../view/assets/images/motocicleta/default_motocicleta.jpg" alt="fotoMotocicleta">
                </div>
                <h2>YBR125</h2>
            </div>

        </div>
    </section>
    <?php } ?>
</main>


<script>
    document.getElementById("enlaceFabricante").addEventListener("click",(ev)=>{
        enlaceFabricante = ev.target.getAttribute("data-src");

        window.location.href=enlaceFabricante;
    })

/*     
    todosEnlaces =document.querySelectorAll("enlazado");

    todosEnlaces.forEach(element => {
        element.addEventListener("click",(ev)=>{

            enlaceFabricante = ev.target.getAttribute("data-src");
            window.location.href= enlaceFabricante;
        })
    }); */
</script>