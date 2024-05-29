<?php

require_once("motowikiDB.php");
require_once("motocicleta.php");

class Oferta {
    private $idOferta;
    private $enlaceOferta;
    private $precio;
    private $idMoto;


    public function __construct($idOferta, $enlaceOferta, $precio, $idMoto) {

        $this->idOferta = $idOferta;
        $this->enlaceOferta = $enlaceOferta;
        $this->precio = $precio;
        $this->idMoto = $idMoto;

    }

    public function __get(string $propiedad) {
        return $this->$propiedad;
    }

    public function __set(string $propiedad, $valor) {
        $this->$propiedad = $valor;
    }

    public static function obtenerOfertaPorId($idOferta){
        $conexion = MotowikiDB::conexionDB();

        $sql = "SELECT * FROM ofertas WHERE idOfertas = $idOferta";

        $result=$conexion->query($sql)->fetch_assoc();

        $objOferta = new Oferta($result['idOfertas'],$result['enlaceOferta'],$result['precio'],$result['idMoto']);

        return $objOferta;
    }


    public static function ofertasPorMoto($idMoto){
        $conexion = MotowikiDB::conexionDB();

        $sql = "SELECT * FROM ofertas WHERE idMoto = $idMoto";

        $result=$conexion->query($sql);

        $todasOfertas = [];

        while($row = $result->fetch_assoc()){
            
            $todasOfertas[] = Oferta::obtenerOfertaPorId($row['idOfertas']);

        }

        return $todasOfertas;
    }

}