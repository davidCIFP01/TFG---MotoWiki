
<?php

require_once("motowikiDB.php");

class Registro {
    private $idRegistro;
    private $fechaCambio;
    private $tipoCambio;
    private $descripcionCambios;
    private $idUsuario;

    public function __construct($idRegistro, $fechaCambio, $tipoCambio, $descripcionCambios, $idUsuario) {
        $this->idRegistro = $idRegistro;
        $this->fechaCambio = $fechaCambio;
        $this->tipoCambio = $tipoCambio;
        $this->descripcionCambios = $descripcionCambios;
        $this->idUsuario = $idUsuario;
    }
    
    public function __get(string $propiedad) {
        return $this->$propiedad;
    }

    public function __set(string $propiedad, $valor) {
        $this->$propiedad = $valor;
    }


    public static function recogerUltimosRegistros(){
        $conexion = MotowikiDB::conexionDB();
        $sql = "SELECT * FROM registros ORDER BY idRegistro DESC LIMIT 30";

        
        $objetosRegistros = [];

        $result = $conexion->query($sql);

        while ($row = $result->fetch_assoc()) {
            $objetosRegistros[] = Registro::registroPorId($row['idRegistro']);
        }

        return $objetosRegistros;
    }


    public static function recogerTodosRegistros($idUsuario = null){
        $conexion = MotowikiDB::conexionDB();
        $sql = "SELECT * FROM registros ORDER BY idRegistro DESC";

        if(isset($idUsuario)){
            $sql = "SELECT * FROM registros WHERE idUsuario = $idUsuario ORDER BY idRegistro DESC";
        }

        
        $objetosRegistros = [];

        $result = $conexion->query($sql);

        while ($row = $result->fetch_assoc()) {
            $objetosRegistros[] = Registro::registroPorId($row['idRegistro']);
        }

        return $objetosRegistros;
    }


    public static function registroPorId($id){
        $conexion = MotowikiDB::conexionDB();
        $sql = "SELECT * FROM registros WHERE idRegistro = $id";

        $result = $conexion->query($sql)->fetch_assoc();

        $objRegistro = new Registro($result['idRegistro'],$result['fechaCambio'],$result['tipoCambio'],$result['descripcionCambios'],$result['idUsuario']);

        return $objRegistro;

    }
}