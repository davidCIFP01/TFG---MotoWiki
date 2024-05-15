<?php


class MotowikiDB{

    private $conexion;


    public function __construct($host, $usuario, $contrasena, $base_datos) {
        $this->conexion = new mysqli($host, $usuario, $contrasena, $base_datos);

        if ($this->conexion->connect_error) {
            die("Error al conectar con la base de datos: " . $this->conexion->connect_error);
        }
    }

    public function cerrarConexion() {
        $this->conexion->close();
    }

    public static function conexionDB(){
        $usuario = "root";
        $password = "";
        $db = "motowiki";
        $direccion = "localhost";

        // $this->conexion = new mysqli($direccion,$usuario,$password,$db);
        $conexion = new mysqli($direccion,$usuario,$password,$db);

        if ($conexion->connect_error) {
            die("Error al conectar con la base de datos: " . $conexion->connect_error);
        }else{
            // return $this->conexion;
            return $conexion;
        }
    }

}