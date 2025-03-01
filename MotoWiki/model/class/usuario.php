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

    public static function registrarUsuario(){
        $conexion = motowikiDB::conexionDB();

        $sqlComprobar = "SELECT username,email FROM usuario WHERE username = '".$_POST['registroUsername']."' OR email = '".$_POST['registroEmail']."'";

        $result = $conexion->query($sqlComprobar);

        if($result->num_rows>0){
            return false;
        }

        $sql = "INSERT 
        INTO usuario ( nombreUsuario, apellido1, apellido2, username, email, password, fechaRegistro, fechaNacimiento, betado,	tipoUsuario) 
        VALUES ( 
            '".$_POST['registroNombre']."', 
            '".$_POST['registroAp1']."', 
            '".$_POST['registroAp2']."', 
            '".$_POST['registroUsername']."', 
            '".$_POST['registroEmail']."', 
            '".password_hash($_POST['registroPwd'],PASSWORD_DEFAULT)."', 
            '".date("Y-m-d")."', 
            '".$_POST['registroNacimiento']."', 
            false,
            'user')";
        
            $conexion->query($sql);

            /* $sqlRegistro = "INSERT INTO cambiosRegistro (fechaCambio, tipoCambio, descripcionCambios, idUsuario)
            VALUES ('".date('Y-m-d H:i:s')."', 'REGISTRO USUARIO', 'Se ha registrado un nuevo usuario: ".."','-');"; */
            return true;

    }

    public static function comprobarEmailUsername(){
        $conexion = motowikiDB::conexionDB();
        $sqlComprobar = "SELECT username,email FROM usuario WHERE username = '".$_POST['registroUsername']."' OR email = '".$_POST['registroEmail']."'";

        $result = $conexion->query($sqlComprobar);
        
        if($result->num_rows>0){
            return false;
        }else{
            return true;
        }
    }
 

    public static function obtenerNombreUsuarioPorId($id){
        $conexion = MotowikiDB::conexionDB();

        $sql = "SELECT username FROM usuario WHERE idUsuario = $id ";

        $result = $conexion->query($sql)->fetch_assoc();

        return $result['username'];
    }

    public static function iniciarSesion(){
        $conexion = motowikiDB::conexionDB();
        $email_username = (isset($_POST['username_email_inicio'])) ? $_POST['username_email_inicio'] : $_POST['registroUsername'] ;
        $password = (isset($_POST['passwordInicio'])) ? $_POST['passwordInicio'] : $_POST['registroPwd'] ;

        $sql = "SELECT * FROM usuario WHERE username = '$email_username' OR email = '$email_username'";
        $result = $conexion->query($sql)->fetch_assoc();


        if(password_verify($password,$result['password'])){
        // if(true){
            
            if(!isset($_SESSION)){
                session_start();
            }

            $_SESSION['idUser'] =$result['idUsuario'] ;
            $_SESSION['username'] =$result['username'] ;
            $_SESSION['email'] =$result['email'] ;
            $_SESSION['nombre'] =$result['nombreUsuario'] ;
            $_SESSION['ap1'] =$result['apellido1'] ;
            $_SESSION['ap2'] =$result['apellido2'] ;
            $_SESSION['betado'] =$result['betado'] ;
            $_SESSION['tipoUsuario'] =$result['tipoUsuario'] ;
            $_SESSION['fechaNac'] =$result['fechaNacimiento'] ;
            $_SESSION['fechaReg'] =$result['fechaRegistro'] ;
            
            return true;
        }else{
            return false;
        }
    }


    public static function cerrarSesion(){
        session_unset();
        session_destroy();
    }

    public static function obtenerTusFavoritas($idUsuario){
        $conexion = motowikiDB::conexionDB();

        // $sql = "SELECT idMoto FROM favoritas WHERE idUsuario = $idUsuario";

        $sql ="SELECT idMoto FROM favoritas WHERE idUsuario = $idUsuario";
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


    public static function comprobarTipoUsuario(){
        $idUsuario = $_SESSION['idUser'];

        $conexion = MotowikiDB::conexionDB();

        $sql = "SELECT tipoUsuario FROM usuario WHERE idUsuario = $idUsuario";
        
        $result = $conexion->query($sql)->fetch_assoc();

        $_SESSION['tipoUsuario'] == $result['tipoUsuario'];
    }

    public static function comprobarBetado(){
        $idUsuario = $_SESSION['idUser'];

        $conexion = MotowikiDB::conexionDB();

        $sql = "SELECT betado FROM usuario WHERE idUsuario = $idUsuario";

        $result = $conexion->query($sql)->fetch_assoc();

        if($result['betado'] == 1){
            session_unset();
            session_destroy();

            header("./registro-inicioSesion.php");
        }
        
    }
    
}