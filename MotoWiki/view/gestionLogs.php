<main class="mainGestion">

    <h1>REGISTRO DE MODIFICACIONES</h1>

    <div class="search-box">
        <i class="fa-solid fa-magnifying-glass"></i>
        <input type="search" placeholder="Busqueda por ID / Usuario">
    </div>

    <div class="contenedorVerTodosRegistros">
        <button class="botonAzul">VER TODOS LOS REGISTROS</button>
    </div>

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

                foreach ( ( $todosRegistros ? Registro::recogerTodosRegistros() : Registro::recogerUltimosRegistros() ) as $key => $objRegistro) {
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