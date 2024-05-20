<?php



class Fabricante{
    private $idFabricante;
    private $nombreFabricante;
    private $paisOrigen;
    private $fechaFundada;
    private $sitioWeb;
    private $descripcion1;
    private $descripcion2;
    private $imagenFabricante;
    private $suspendido;

    // Constructor
    public function __construct($idFabricante = null, $nombreFabricante = null, $paisOrigen = null, 
                                $fechaFundada = null, $sitioWeb = null, $descripcion1 = null, 
                                $descripcion2 = null, $imagenFabricante = null, $suspendido = 0) {
        $this->idFabricante = $idFabricante;
        $this->nombreFabricante = $nombreFabricante;
        $this->paisOrigen = $paisOrigen;
        $this->fechaFundada = $fechaFundada;
        $this->sitioWeb = $sitioWeb;
        $this->descripcion1 = $descripcion1;
        $this->descripcion2 = $descripcion2;
        $this->imagenFabricante = $imagenFabricante;
        $this->suspendido = $suspendido;
    }

    public function __get(string $propiedad) {
        return $this->$propiedad;
    }

    public function __set(string $propiedad, $valor) {
        $this->$propiedad = $valor;
    }



    public static function obtenerTodosFabricantes(){
        $objetosFabricantes = [];
        
        $conexion = MotowikiDB::conexionDB();

        $sql = "SELECT * FROM fabricantes";
        
        $result = $conexion->query($sql);

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $fabricante = new Fabricante(
                    $row['idFabricante'],
                    $row['nombreFabricante'],
                    $row['paisOrigen'],
                    $row['fechaFundada'],
                    $row['sitioWeb'],
                    $row['descripcion1'],
                    $row['descripcion2'],
                    $row['imagenFabricante'],
                    $row['suspendido']
                );
                $objetosFabricantes[] = $fabricante;
            }
        }

        return $objetosFabricantes;

    }
  
}   