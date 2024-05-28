
<main class="dedicadaMain">
    <section class="informacionDedicadaMoto">
        
        <?php 
        if($dedicada != true){
            echo "<h2>No se ha encontrado ninguna motocicleta.</h2></section>";
        }else{
        ?>
        <div class="presentacionMotocicleta">
            
            <div class="contenedorImagenMotoMarca contenedorImagenMotoMarcaPresentacion">
                <img src="<?= $Motocicleta->__get("imagenMoto"); ?>" alt="fotoMotocicleta">
                <button class="botonAzul" id="verOfertas"> Ver Ofertas</button>
            </div>
            
            <div class="datosPresentacion">
                <div class="datosMotoArriba">
                    
                    <div class="nombreMoto">
                        <h2><?= $Motocicleta->__get("nombreModelo"); ?></h2>
                    </div>
                    
                    <div class="marcaMoto">
                        <span class="miniTexto">MARCA:</span>
                        <p><?= $Motocicleta->obtenerNombreMarcaPorId()?></p>
                    </div>
                    
                    <div class="fechaMoto">
                        <p>RELEASE: <?= $Motocicleta->__get("fechaFabricacion")?></p>
                    </div>

                    <?php 
                    $variantes = $Motocicleta->obtenerMotosPorTag($Motocicleta->__get("tag"));
                    if($variantes != false){
                    
                    ?>
                        
                    <div class="variantesMoto">
                        <select id="selectVariantes" >
                            <?php
                            echo '<option value="" selected hidden >VARIANTES DEL MODELO</option>';
                            foreach($variantes as $key=>$moto){
                                echo '<option value="'.$moto->__get("idMoto").'">'.$moto->__get("nombreModelo").'</option>';
                            }

                            ?>
                        </select>
                    </div>
                    <?php }?>
                </div>

                <div class="datosMotoAbajo">
                    <p><?= $Motocicleta->__get("descripcion")?></p>
                </div>
            </div>
        </div>



    </section>

    <section class="moduloHorizontal">
        <h2> DATOS PRINCIPALES </h2>
        <hr>
        
        <div class="contenedorTablaDatos">
            <table>
                <tr>
                    <td>ID MOTO</td>
                    <td>MODELO</td>
                    <td>FECHA FABRICACION</td>
                    <td>TIPO MOTO</td>
                    <td>CILINDRADA</td>
                    <td>POTENCIA (HP)</td>
                    <td>POTENCIA (KW)</td>
                    <td>REFRIGERACIÓN</td>
                    <td>TIPO MOTOR</td>
                    <td>MARCHAS</td>
                    <td>TRANSMISIÓN</td>
                    <td>CAPACIDAD</td>
                    <td>ARRANQUE</td>
                    <td>TIPO CARNET</td>
                    <td>MEDIA PRECIO</td>
                    <td>ALTURA</td>
                    <td>PESO</td>
                </tr>

                <tr>
                    <td><?=  ( $Motocicleta->__get("idMoto") == null) ? "-" : $Motocicleta->__get("idMoto"); ?></td>
                    <td><?=  ( $Motocicleta->__get("nombreModelo") == null) ? "-" : $Motocicleta->__get("nombreModelo"); ?></td>
                    <td><?=  ( $Motocicleta->__get("fechaFabricacion") == null) ? "-" : $Motocicleta->__get("fechaFabricacion"); ?></td>
                    <td><?=  ( $Motocicleta->__get("tipoMoto") == null) ? "-" : $Motocicleta->__get("tipoMoto"); ?></td>
                    <td><?=  ( $Motocicleta->__get("cilindrada") == null) ? "-" : $Motocicleta->__get("cilindrada"); ?></td>
                    <td><?=  ( $Motocicleta->__get("potencia1") == null) ? "-" : $Motocicleta->__get("potencia1"); ?></td>
                    <td><?=  ( $Motocicleta->__get("potencia2") == null) ? "-" : $Motocicleta->__get("potencia2"); ?></td>
                    <td><?=  ( $Motocicleta->__get("refrigeracion") == null) ? "-" : $Motocicleta->__get("refrigeracion"); ?></td>
                    <td><?=  ( $Motocicleta->__get("tipoMotor") == null) ? "-" : $Motocicleta->__get("tipoMotor"); ?></td>
                    <td><?=  ( $Motocicleta->__get("marchas") == null) ? "-" : (($Motocicleta->__get("marchas") == 0) ? "Automatic" : $Motocicleta->__get("marchas")); ?></td>
                    <td><?=  ( $Motocicleta->__get("transmision") == null) ? "-" : $Motocicleta->__get("transmision"); ?></td>
                    <td><?=  ( $Motocicleta->__get("capacidad") == null) ? "-" : $Motocicleta->__get("capacidad"); ?></td>
                    <td><?=  ( $Motocicleta->__get("arranque") == null) ? "-" : $Motocicleta->__get("arranque"); ?></td>
                    <td><?=  ( $Motocicleta->__get("tipoCarnet") == null) ? "-" : $Motocicleta->__get("tipoCarnet"); ?></td>
                    <td> - </td>
                    <td><?=  ( $Motocicleta->__get("altura") == null) ? "-" : $Motocicleta->__get("altura"); ?> mm</td>
                    <td><?=  ( $Motocicleta->__get("peso") == null) ? "-" : $Motocicleta->__get("peso"); ?> KG</td>
                </tr>
            </table>
        </div>

    </section>


    <section class="moduloHorizontal">
        <h2>Últimas Novedades</h2>
        <hr>

        <div class="contenedorTarjetas">

        <?= Motocicleta::generarModulo("nuevas")?>

        </div>

    </section>

    <section class="moduloHorizontal">
        <h2>Más populares</h2>
        <hr>

        <div class="contenedorTarjetas">

        <?= Motocicleta::generarModulo("populares")?>

        </div>
    </section>

    <section class="moduloHorizontal">
        <h2>Modelos Similares</h2>
        <hr>

        <div class="contenedorTarjetas">

        <?= 
        Motocicleta::generarModulo("similares",null,null,$Motocicleta) ?>             

        </div>
    </section>
    <?php } ?>


    <div class="popUpOfertas" id="popUpOfertas" >
        <div class="contenedorOfertas">
            <div class="botonCerrarPopUpOfertas" id="botonCerrarPopUpOfertas">X</div>
            <h2>Ofertas de la Moto</h2>
            <div class="divInternoOferta">

            </div>
        </div>
    </div>


</main>



<script src="../view/assets/js/toggleFavorito.js"></script>
<script src="../view/assets/js/funcionesRedireccion.js"></script>
<script src="../view/assets/js/llamadaBuscador.js"></script>
<script async>

    if(document.getElementById("selectVariantes")){

        document.getElementById("selectVariantes").addEventListener("change",(ev)=>{
            let idMoto=ev.target.value;

            console.log(idMoto)

            if(idMoto != ""){
                window.location.href = "./motocicleta.php?idMoto="+idMoto;
            }
        })
    }

    document.getElementById("verOfertas").addEventListener("click",(ev)=>{
        document.getElementById("popUpOfertas").style.display = "flex";
    })

    document.getElementById("botonCerrarPopUpOfertas").addEventListener("click",()=>{
        document.getElementById("popUpOfertas").style.display = "none";
    })


</script>