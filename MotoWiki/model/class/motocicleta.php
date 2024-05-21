
<?php

require_once("motowikiDB.php");

class Motocicleta {
    private $idMoto;
    private $nombreModelo;
    private $fechaFabricacion;
    private $tipoMoto;
    private $cilindrada;
    private $potencia1;
    private $potencia2;
    private $refrigeracion;
    private $tipoMotor;
    private $marchas;
    private $transmision;
    private $capacidad;
    private $arranque;
    private $tag;
    private $tipoCarnet;
    private $popularidad;
    private $precioMin;
    private $precioMax;
    private $descripcion;
    private $imagenMoto;
    private $suspendida;
    private $idFabricante;
    private $altura;
    private $peso;

    public function __construct($idMoto,$nombreModelo, $fechaFabricacion, $tipoMoto, $cilindrada, $potencia1, $potencia2, $refrigeracion, $tipoMotor, $marchas, $transmision, $capacidad, $arranque, $tag, $tipoCarnet, $popularidad, $precioMin, $precioMax, $descripcion, $imagenMoto, $suspendida, $idFabricante, $altura, $peso) {
        $this->idMoto = $idMoto;
        $this->nombreModelo = $nombreModelo;
        $this->fechaFabricacion = $fechaFabricacion;
        $this->tipoMoto = $tipoMoto;
        $this->cilindrada = $cilindrada;
        $this->potencia1 = $potencia1;
        $this->potencia2 = $potencia2;
        $this->refrigeracion = $refrigeracion;
        $this->tipoMotor = $tipoMotor;
        $this->marchas = $marchas;
        $this->transmision = $transmision;
        $this->capacidad = $capacidad;
        $this->arranque = $arranque;
        $this->tag = $tag;
        $this->tipoCarnet = $tipoCarnet;
        $this->popularidad = $popularidad;
        $this->precioMin = $precioMin;
        $this->precioMax = $precioMax;
        $this->descripcion = $descripcion;
        $this->imagenMoto = $imagenMoto;
        $this->suspendida = $suspendida;
        $this->idFabricante = $idFabricante;
        $this->altura = $altura;
        $this->peso = $peso;
    }

    public function __get(string $propiedad) {
        return $this->$propiedad;
    }

    public function __set(string $propiedad, $valor) {
        $this->$propiedad = $valor;
    }
    

    // Obtener una motocicleta por su ID
    public static function obtenerPorId($idMoto) : object {
        $conexion = motowikiDB::conexionDB();
        
        $sql = "SELECT * FROM motocicleta WHERE idMoto = $idMoto";

        $result = $conexion->query($sql)->fetch_assoc();

        // print_r($result);

        if($result["imagenMoto"] == null){
            $result["imagenMoto"] = match ($result["tipoMotor"]) {
                "ATV" => "",
                "Sport touring" => "",
                "Super motard" => "",
                "Enduro / offroad" => "",
                "Cross / motocross" => "",
                "Sport" => "",
                "Scooter" => "",
                "Allround" => "",
                "Naked bike" => "",
                "Custom / cruiser" => "",
                "Touring" => "",
                "Trial" => "",
                "Classic" => "",
                "Minibike" => "",
                "cross" => "",
                default => "",
            }
        }

        $objetoMoto = new Motocicleta(
            $idMoto,
            $result["nombreModelo"],
            $result["fechaFabricacion"],
            $result["tipoMoto"],
            $result["cilindrada"],
            $result["potencia1"],
            $result["potencia2"],
            $result["refrigeracion"],
            $result["tipoMotor"],
            $result["marchas"],
            $result["transmision"],
            $result["capacidad"],
            $result["arranque"],
            $result["tag"],
            $result["tipoCarnet"],
            $result["popularidad"],
            $result["precioMin"],
            $result["precioMax"],
            $result["descripcion"],
            $result["imagenMoto"],
            $result["suspendida"],
            $result["idFabricante"],
            $result["altura"],
            $result["peso"]
        );


        $conexion->close();

        return $objetoMoto;
    }

    // Obtener todas las motocicletas
    public static function obtenerTodas() : array {
        $conexion = motowikiDB::conexionDB();
        $sql = "SELECT * FROM motocicleta";
        $result = $conexion->query($sql);
        
        $motocicletas = [];

        while ($row = $result->fetch_assoc()) {
            $motocicletas[] = Motocicleta::obtenerPorId($row['idMoto']);
        }
        $conexion->close();
        return $motocicletas;
    }

    /* Si se le pasa un fabricante se filtrará por este. */
    public static function obtenerPopulares($idFabricante = null) : array {
        $conexion = motowikiDB::conexionDB();
       
        if($idFabricante == null){
            $sql = "SELECT * FROM motocicleta ORDER BY popularidad DESC LIMIT 10";
        }else{
            $sql = "SELECT * FROM motocicleta WHERE idFabricante = $idFabricante ORDER BY popularidad DESC LIMIT 10";
        }

        $result = $conexion->query($sql);
        
        $motocicletas = [];

        while ($row = $result->fetch_assoc()) {
            $motocicletas[] = Motocicleta::obtenerPorId($row['idMoto']);
        }
        $conexion->close();

        /* Array de Objetos */
        return $motocicletas;
    }

    public static function obtenerNuevas() : array {
        $conexion = motowikiDB::conexionDB();
        $sql = "SELECT * FROM motocicleta ORDER BY fechaFabricacion DESC, idMoto DESC LIMIT 10";
        $result = $conexion->query($sql);
        
        $motocicletas = [];

        while ($row = $result->fetch_assoc()) {
            $motocicletas[] = Motocicleta::obtenerPorId($row['idMoto']);
        }
        $conexion->close();

        /* Array de Objetos */
        return $motocicletas;
    }

    public static function modelosSimilares($tipoMoto,$cilindrada) : array {
        $conexion = motowikiDB::conexionDB();
        $sql = "SELECT * FROM motocicleta WHERE tipoMoto = $tipoMoto AND cilindrada BETWEEN $cilindrada-30 AND $cilindrada+30 ORDER BY idMoto DESC LIMIT 10";
        $result = $conexion->query($sql);
        
        $motocicletas = [];

        while ($row = $result->fetch_assoc()) {
            $motocicletas[] = Motocicleta::obtenerPorId($row['idMoto']);
        }
        $conexion->close();

        /* Array de Objetos */
        return $motocicletas;
    }

    /* Modo tiene que ser ASC / DESC */
    public static function obtenerPorPrecio($modo) : array {
        // Validar el modo para asegurarnos de que solo sea 'ASC' o 'DESC'
        if (!in_array(strtoupper($modo), ['ASC', 'DESC'])) {
            throw new InvalidArgumentException('El modo debe ser "ASC" o "DESC".');
        }

        $conexion = motowikiDB::conexionDB();
        $sql = "SELECT * FROM motocicleta ORDER BY fechaFabricacion $modo, idMoto DESC LIMIT 10";
        print_r($sql);
        $result = $conexion->query($sql);
        
        $motocicletas = [];

        while ($row = $result->fetch_assoc()) {
            $motocicletas[] = Motocicleta::obtenerPorId($row['idMoto']);
        }
        $conexion->close();

        /* Array de Objetos */
        return $motocicletas;
    }


    /* Esta función está pensada para paginar todos los resultados que vayan saliendo en TODAS MOTOCICLETAS (No incluye filtros) */
    public static function obtenerMotosPaginadas($cantidadMotos,$paginacion) : array {
        $conexion = motowikiDB::conexionDB();
        $sql = "SELECT * FROM motocicleta ORDER BY popularidad DESC LIMIT $paginacion*$cantidadMotos,$cantidadMotos";
        $result = $conexion->query($sql);
        
        $motocicletas = [];

        while ($row = $result->fetch_assoc()) {
            $motocicletas[] = Motocicleta::obtenerPorId($row['idMoto']);
        }
        $conexion->close();
        return $motocicletas;
    }

    public static function filtradoComplejoMotocicleta() : array {
        /* LISTA DE FILTROS:
            MARCA (Igual se añade en el buscador y ya) / PRECIO (MIN-MAX)  / CILINDRADA (Rango) / TIPOMOTO (CHECKBOX) /
            POPULARIDAD (ASC/DESC) / AÑO FABRICACION (SELECT AÑO) / TIPO MOTOR (?¿) / POTENCIA (?¿) / 
            Marchas (¿?) / TipoCarnet (?¿) / Peso-Altura (?¿)
        */
        
        $conexion = motowikiDB::conexionDB();
        $sql = "SELECT * FROM motocicleta ORDER BY idMotocicleta DESC";
        $result = $conexion->query($sql);
        
        $motocicletas = [];

        while ($row = $result->fetch_assoc()) {
            $motocicletas[] = Motocicleta::obtenerPorId($row['idMoto']);
        }
        $conexion->close();
        return $motocicletas;
    }
    

        // Insertar nueva motocicleta en la base de datos
/*     public function insertar() {
        $db = motowikiDB::conexionDB();
        $query = "INSERT INTO motocicleta (nombreModelo, fechaFabricacion, tipoMoto, cilindrada, potencia1, potencia2, refrigeracion, tipoMotor, marchas, transmision, capacidad, arranque, tag, tipoCarnet, popularidad, precioMin, precioMax, descripcion, imagenMoto, suspendida, idFabricante, altura, peso)
                  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt = $db->prepare($query);
        $stmt->bind_param("ssiisiisssssssisddssiiii", $this->nombreModelo, $this->fechaFabricacion, $this->tipoMoto, $this->cilindrada, $this->potencia1, $this->potencia2, $this->refrigeracion, $this->tipoMotor, $this->marchas, $this->transmision, $this->capacidad, $this->arranque, $this->tag, $this->tipoCarnet, $this->popularidad, $this->precioMin, $this->precioMax, $this->descripcion, $this->imagenMoto, $this->suspendida, $this->idFabricante, $this->altura, $this->peso);
        $stmt->execute();
        $this->idMoto = $db->insert_id;
        $stmt->close();
        $db->close();
    } */


    // Actualizar una motocicleta existente
/*     public function actualizar() {
        $db = motowikiDB::conexionDB();
        $query = "UPDATE motocicleta SET nombreModelo = ?, fechaFabricacion = ?, tipoMoto = ?, cilindrada = ?, potencia1 = ?, potencia2 = ?, refrigeracion = ?, tipoMotor = ?, marchas = ?, transmision = ?, capacidad = ?, arranque = ?, tag = ?, tipoCarnet = ?, popularidad = ?, precioMin = ?, precioMax = ?, descripcion = ?, imagenMoto = ?, suspendida = ?, idFabricante = ?, altura = ?, peso = ? WHERE idMoto = ?";
        $stmt = $db->prepare($query);
        $stmt->bind_param("ssiisiisssssssisddssiiii", $this->nombreModelo, $this->fechaFabricacion, $this->tipoMoto, $this->cilindrada, $this->potencia1, $this->potencia2, $this->refrigeracion, $this->tipoMotor, $this->marchas, $this->transmision, $this->capacidad, $this->arranque, $this->tag, $this->tipoCarnet, $this->popularidad, $this->precioMin, $this->precioMax, $this->descripcion, $this->imagenMoto, $this->suspendida, $this->idFabricante, $this->altura, $this->peso, $this->idMoto);
        $stmt->execute();
        $stmt->close();
        $db->close();
    } */

    // Eliminar una motocicleta por su ID
/*     public static function eliminar($idMoto) {
        $db = motowikiDB::conexionDB();
        $query = "DELETE FROM motocicleta WHERE idMoto = ?";
        $stmt = $db->prepare($query);
        $stmt->bind_param("i", $idMoto);
        $stmt->execute();
        $stmt->close();
        $db->close();
    }
 */
}


/* PRUEBAS */

// print_r(Motocicleta::obtenerPorPrecio("ASC"))

// print_r(Motocicleta::modelosPopularesMismaMarca(3)[8]->__get("nombreModelo"));

?>

