<main class="mainGestion">

    <h1>REGISTRO DE MODIFICACIONES</h1>
<!-- 
    <div class="search-box">
        <i class="fa-solid fa-magnifying-glass"></i>
        <input type="search" placeholder="Busqueda por ID / Usuario">
    </div> -->

    <?php if(!isset($todosRegistros)){?>
    <div class="contenedorVerTodosRegistros">
        <button class="botonAzul" id="verTodosRegistros">VER TODOS LOS REGISTROS</button>
    </div>
    <?php } ?>

    <div class="contenedorTablaRegistros">
        <div class="contenedorTablaDatos">
            <table>
                <tr>
                    <td>ID USUARIO</td>
                    <td>NOMBRE</td>
                    <td>CAMBIO</td>
                    <td>TIPO CAMBIO</td>
                    <td>FECHA CAMBIO</td>
                </tr>

                <?php 

                foreach ( ( isset($todosRegistros) ? Registro::recogerTodosRegistros() : Registro::recogerUltimosRegistros() ) as $key => $objRegistro) {
                    echo 
                    '<tr>
                        <td>'.$objRegistro->__get("idUsuario").'</td>
                        <td>'.Usuario::obtenerNombreUsuarioPorId($objRegistro->__get("idUsuario")).'</td>
                        <td>'.$objRegistro->__get("descripcionCambios").'</td>
                        <td>'.$objRegistro->__get("tipoCambio").'</td>
                        <td>'.$objRegistro->__get("fechaCambio").'</td>
                    </tr>';
                }
            
                ?>
            </table>
        </div>
    </div>
</main>
<script src="../view/assets/js/toggleFavorito.js"></script>
<script src="../view/assets/js/funcionesRedireccion.js"></script>
<script src="../view/assets/js/llamadaBuscador.js"></script>
<script>
    document.getElementById("verTodosRegistros").addEventListener("click",(ev)=>{
        window.location.href = "./gestionLogs.php?verTodosRegistros=true";
    })
</script>