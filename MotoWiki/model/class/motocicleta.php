
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
    public static function obtenerPorId($idMoto){
        $conexion = motowikiDB::conexionDB();
        
        $sql = "SELECT * FROM motocicleta WHERE idMoto = $idMoto";

        $result = $conexion->query($sql);

        // print_r($result);

        if($result->num_rows>0){
            
            $result=$result->fetch_assoc();

            if($result["imagenMoto"] == null){
            
                $result["imagenMoto"] = match ($result["tipoMoto"]) {
                    "ATV" => "../view/assets/images/motocicleta/default-ATV.jpg",
                    "Sport touring" => "../view/assets/images/motocicleta/default_sport_touring.webp",
                    "Super motard" => "../view/assets/images/motocicleta/default_super_motard.jpg",
                    "Enduro / offroad" => "../view/assets/images/motocicleta/default_super_motard.jpg",
                    "Cross / motocross" => "../view/assets/images/motocicleta/default_super_motard.jpg",
                    "Sport" => "../view/assets/images/motocicleta/default_motocicleta.jpg",
                    "Scooter" => "../view/assets/images/motocicleta/default_scooter.png",
                    "Allround" => "../view/assets/images/motocicleta/default_motocicleta.jpg",
                    "Naked bike" => "../view/assets/images/motocicleta/default_naked.avif",
                    "Custom / cruiser" => "../view/assets/images/motocicleta/default_custom.jpg",
                    "Touring" => "../view/assets/images/motocicleta/default_sport_touring.webp",
                    "Trial" => "../view/assets/images/motocicleta/default_trial.jpg",
                    "Classic" => "../view/assets/images/motocicleta/default_classic.avif",
                    "Minibike, cross" => "../view/assets/images/motocicleta/default_super_motard.jpg",
                    default => "../view/assets/images/motocicleta/default_motocicleta.jpg"
                };
            }
    
            $objetoMoto = new Motocicleta(
                $idMoto,
                $result["nombreModelo"],
                $result["fechaFabricacion"],
                $result["tipoMoto"],
                ($result["cilindrada"] == null) ? "" : $result["cilindrada"],
                ($result["potencia1"] == null) ? "" : $result["potencia1"],
                ($result["potencia2"] == null) ? "" : $result["potencia2"],
                ($result["refrigeracion"] == null) ? "" : $result["refrigeracion"],
                ($result["tipoMotor"] == null) ? "" : $result["tipoMotor"],
                ($result["marchas"] == null || $result["marchas"] == 0) ? 0 : $result["marchas"],
                ($result["transmision"] == null) ? "" : $result["transmision"],
                ($result["capacidad"] == null) ? "" : $result["capacidad"],
                ($result["arranque"] == null) ? "" : $result["arranque"],
                $result["tag"],
                ($result["tipoCarnet"] == null) ? "" : $result["tipoCarnet"],
                ($result["popularidad"] == null) ? "" : $result["popularidad"],
                ($result["precioMin"] == null) ? "" : $result["precioMin"],
                ($result["precioMax"] == null) ? "" : $result["precioMax"],
                ($result["descripcion"] == null ) ? "Aún no hay descripción de esta motocicleta." : $result["descripcion"],
                $result["imagenMoto"],
                ($result["suspendida"] == null) ? "" : $result["suspendida"],
                $result["idFabricante"],
                ($result["altura"] == null) ? "" : $result["altura"],
                ($result["peso"] == null) ? "" : $result["peso"]
            );
        }else{
            return false;
        }


        $conexion->close();

        return $objetoMoto;
    }

    public function obtenerNombreMarcaPorId(){
        $conexion = motowikiDB::conexionDB();
        $sql = "SELECT nombreFabricante FROM fabricante WHERE idFabricante = $this->idFabricante";
        $result = $conexion->query($sql)->fetch_assoc();

        // print_r($result);

        return $result['nombreFabricante'];
    }

    public function obtenerMotosPorTag($tag){
        $conexion = motowikiDB::conexionDB();

        if($tag != null ){
            $sql = "SELECT idMoto FROM motocicleta WHERE tag = '$tag' AND suspendida = 0";
            $result = $conexion->query($sql);

            if($result->num_rows>0){
                
                while ($row = $result->fetch_assoc()) {
                    $motocicletas[] = Motocicleta::obtenerPorId($row['idMoto']);
                }
                $conexion->close();
                return $motocicletas;

            }else{
                return false;
            }
        }else{
            return false;
        }
    }

    // Obtener todas las motocicletas
    public static function obtenerTodas() : array {
        $conexion = motowikiDB::conexionDB();
        $sql = "SELECT * FROM motocicleta WHERE suspendida = 0";
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
            $sql = "SELECT * FROM motocicleta WHERE suspendida = 0 ORDER BY popularidad DESC LIMIT 10";
        }else{
            $sql = "SELECT * FROM motocicleta WHERE idFabricante = $idFabricante AND suspendida = 0 ORDER BY popularidad DESC LIMIT 10";
        }

        // print_r($sql);

        $result = $conexion->query($sql);
        
        $motocicletas = [];

        while ($row = $result->fetch_assoc()) {
            $motocicletas[] = Motocicleta::obtenerPorId($row['idMoto']);
        }
        $conexion->close();

        /* Array de Objetos */
        return $motocicletas;
    }

    

    public static function obtenerNuevas($idFabricante = null) : array {
        $conexion = motowikiDB::conexionDB();
        
        if($idFabricante != null){
            $sql = "SELECT * FROM motocicleta WHERE idFabricante = $idFabricante AND suspendida = 0 ORDER BY fechaFabricacion DESC, idMoto DESC LIMIT 10";
        }else{
            $sql = "SELECT * FROM motocicleta WHERE suspendida = 0 ORDER BY fechaFabricacion DESC, idMoto DESC LIMIT 10";
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

    public function modelosSimilares() : array {
        $conexion = motowikiDB::conexionDB();
        $sql = "SELECT * FROM motocicleta WHERE tipoMoto = '$this->tipoMoto' AND suspendida = 0 AND cilindrada BETWEEN ($this->cilindrada-30) AND ($this->cilindrada+30) ORDER BY idMoto DESC LIMIT 10";
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
    public static function obtenerPorPrecio($modo,$Fabricante=null) : array {
        // Validar el modo para asegurarnos de que solo sea 'ASC' o 'DESC'
        if (!in_array(strtoupper($modo), ['ASC', 'DESC'])) {
            throw new InvalidArgumentException('El modo debe ser "ASC" o "DESC".');
        }

        $conexion = motowikiDB::conexionDB();
        if(isset($Fabricante)){
            $sql = "SELECT * FROM motocicleta WHERE suspendida = 0 AND idFabricante = $Fabricante ORDER BY precioMin $modo, idMoto DESC LIMIT 10";
        }else{
            $sql = "SELECT * FROM motocicleta WHERE suspendida = 0 ORDER BY precioMin $modo, idMoto DESC LIMIT 10";
        }
        // print_r($sql);
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
        $offset = $paginacion * $cantidadMotos;

        $sql = "SELECT * FROM motocicleta WHERE suspendida = 0 ORDER BY popularidad DESC,idMoto DESC LIMIT $offset,$cantidadMotos";
        // print_r($sql);
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
        $sql = "SELECT * FROM motocicleta WHERE suspendida = 0 ORDER BY idMotocicleta DESC";
        $result = $conexion->query($sql);
        
        $motocicletas = [];

        while ($row = $result->fetch_assoc()) {
            $motocicletas[] = Motocicleta::obtenerPorId($row['idMoto']);
        }
        $conexion->close();
        return $motocicletas;
    }


    public function comprobarFavoritasUsuario($idUsuario){
        $conexion = motowikiDB::conexionDB();
        $sql = "SELECT * FROM favoritas WHERE idUsuario = $idUsuario AND idMoto = $this->idMoto";
        $result = $conexion->query($sql);

        return ($result->num_rows >0) ? '<i class="fa-solid fa-star" data-idMoto="'.$this->idMoto.'" onclick="toggleFavorito(this)" > </i>' : '<i class="fa-regular fa-star"  data-idMoto="'.$this->idMoto.'" onclick="toggleFavorito(this)" > </i>' ;
    }


    
    public static function generarModulo($modo,$Fabricante = null,$idUsuario = null,$objetoMoto = null){
        
        if (!in_array(strtolower($modo), ['populares', 'nuevas','baratas','favoritas','similares'])) {
            throw new InvalidArgumentException('El modo no es correcto.');
        }

        if(!empty($_SESSION)){
            $idUsuario = $_SESSION['idUser'];
        }
        // print_r($modo);
        // print_r($objetoMoto);

        $motosModulo = match ($modo) {
            "populares" => Motocicleta::obtenerPopulares(isset($Fabricante) ? $idFabricante = $Fabricante : $idFabricante = null),
            "nuevas" => Motocicleta::obtenerNuevas(isset($Fabricante) ? $idFabricante = $Fabricante : $idFabricante = null),
            "baratas" => Motocicleta::obtenerPorPrecio("DESC",$Fabricante),
            "favoritas" => ($idUsuario == null) ? "" : Usuario::obtenerTusFavoritas($idUsuario),
            "similares" => ($objetoMoto == null) ? "" : $objetoMoto->modelosSimilares(),
        };
        
        $tarjetas = "";

        // print_r($motosModulo);

        if($motosModulo != "" && $motosModulo != false){
            foreach ($motosModulo as $key => $objetoMotoBucle) {

                if(isset($_GET['idMoto']) && $_GET['idMoto'] == $objetoMotoBucle->__get("idMoto") ){

                }else{
                    $tarjetas .= '<div class="tarjetaMotoMarca">
                                    <div class="contenedorImagenMotoMarca">
                                        '.(empty($_SESSION) ? '<i class="fa-regular fa-star" data-src="./registro-inicioSesion.php" onclick="redirigirEnlace(this)" > </i>' : $objetoMotoBucle->comprobarFavoritasUsuario($_SESSION['idUser'])).'
                                        <img src="'.$objetoMotoBucle->__get("imagenMoto").'" loading="lazy" alt="fotoMotocicleta" data-src="./motocicleta.php?idMoto='.$objetoMotoBucle->__get("idMoto").'" onclick="redirigirEnlace(this)">
                                    </div>
                                    <a href="./motocicleta.php?idMoto='.$objetoMotoBucle->__get("idMoto").'"><h2>'.$objetoMotoBucle->__get("nombreModelo").'</h2></a>
                                </div>';
                }

                
            }
        }else{
            $tarjetas = "<h2>No hay motocicletas aún</h2>";
        }

        return $tarjetas;
        
    }
    
}


/* PRUEBAS */

// print_r(Motocicleta::obtenerPorPrecio("ASC"))

// print_r(Motocicleta::modelosPopularesMismaMarca(3)[8]->__get("nombreModelo"));

// print_r(Motocicleta::obtenerPorId(300)->obtenerNombreMarcaPorId())
?>

