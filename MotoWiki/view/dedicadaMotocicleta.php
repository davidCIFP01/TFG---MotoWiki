
<main class="dedicadaMain">
    <section class="informacionDedicadaMoto">
        
        <?php 
        if($dedicada != true){
            echo "<h2>No se ha encontrado ninguna motocicleta.</h2></section>";
        }else{
        ?>
        <div class="presentacionMotocicleta">
            <div class="contenedorImagenMotoMarca">
                <img src="<?= $Motocicleta->__get("imagenMoto"); ?>" alt="fotoMotocicleta">
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
                        <select>
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
                    <td><?= $Motocicleta->__get("idMoto");?></td>
                    <td><?= $Motocicleta->__get("nombreModelo");?></td>
                    <td><?= $Motocicleta->__get("fechaFabricacion");?></td>
                    <td><?= $Motocicleta->__get("tipoMoto");?></td>
                    <td><?= $Motocicleta->__get("cilindrada");?></td>
                    <td><?= $Motocicleta->__get("potencia1");?></td>
                    <td><?= $Motocicleta->__get("potencia2");?></td>
                    <td><?= $Motocicleta->__get("refrigeracion")?></td>
                    <td><?= $Motocicleta->__get("tipoMotor")?></td>
                    <td><?= $Motocicleta->__get("marchas");?></td>
                    <td><?= $Motocicleta->__get("transmision");?></td>
                    <td><?= $Motocicleta->__get("capacidad");?></td>
                    <td><?= $Motocicleta->__get("arranque");?></td>
                    <td><?= $Motocicleta->__get("tipoCarnet");?></td>
                    <td> - </td>
                    <td><?= $Motocicleta->__get("altura");?> mm</td>
                    <td><?= $Motocicleta->__get("peso");?> KG</td>
                </tr>
            </table>
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