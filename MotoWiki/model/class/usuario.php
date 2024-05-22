<?php

require_once("motowikiDB.php");
require_once("motocicleta.php");

class Usuario {
    private $idUsuario;
    private $nombreUsuario;
    private $apellido1;
    private $apellido2;
    private $username;
    private $email;
    private $password;
    private $fechaRegistro;
    private $fechaNacimiento;
    private $betado;

    // Constructor
    public function __construct($idUsuario, $nombreUsuario, $apellido1, $apellido2, $username, $email, $password, $fechaRegistro, $fechaNacimiento, $betado) {
        $this->idUsuario = $idUsuario;
        $this->nombreUsuario = $nombreUsuario;
        $this->apellido1 = $apellido1;
        $this->apellido2 = $apellido2;
        $this->username = $username;
        $this->email = $email;
        $this->password = $password;
        $this->fechaRegistro = $fechaRegistro;
        $this->fechaNacimiento = $fechaNacimiento;
        $this->betado = $betado;
    }

    public function __get(string $propiedad) {
        return $this->$propiedad;
    }

    public function __set(string $propiedad, $valor) {
        $this->$propiedad = $valor;
    }





    public function obtenerTusFavoritas(){
        $conexion = motowikiDB::conexionDB();

        // $sql = "SELECT idMoto FROM favoritas WHERE idUsuario = $idUsuario";

        $sql ="SELECT idMoto FROM favoritas WHERE idUsuario = $this->idUsuario";
        $result = $conexion->query($sql);
        
        if($result->num_rows > 0){
            $motosFavoritas = [];
            
            while ($row = $result->fetch_assoc()) {
                $motosFavoritas[] = Motocicleta::obtenerPorId($row['idMoto']);
            }   

            return $motosFavoritas;
        }else{
            return false;
        }
    }
    
}