<main class="mainIntermedio">
    
    <?php if(isset($_SESSION) && $_SESSION['tipoUsuario'] == "admin"){?>
        <button class="botonNaranja" data-src="./gestionUsuarios.php" onclick="redirigirEnlace(this)">Gestionar Usuarios</button>
    <?php }?>
    <button class="botonNaranja" data-src="./gestionDatos.php" onclick="redirigirEnlace(this)">Gestionar API</button>
    <button class="botonNaranja" data-src="./gestionLogs.php" onclick="redirigirEnlace(this)">Registros / Logs</button>
</main>


<script src="../view/assets/js/funcionesRedireccion.js"></script>
