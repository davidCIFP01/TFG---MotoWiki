<?php

require_once("../model/class/motowikiDB.php");
require_once("../model/class/usuario.php");

session_start();

Usuario::cerrarSesion();

header("Location: ../controller/inicio.php");


