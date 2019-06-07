<?php
class Counts{
 
    // database connection and table name
    private $conn;
    private $table_name = "linkedvariation3";
 
    // object properties
    public $seriesname;
    public $variation_origin;
    public $reference;

    public function __construct($db){
        $this->conn = $db;
    }

    public function countVarOriginBySeries($seriesname, $variation_origin){
 
        $query = "SELECT series FROM " . $this->table_name . " WHERE series=? AND variation_origin=?";
     
        $stmt = $this->conn->prepare( $query );
        $stmt->execute([$seriesname, $variation_origin]);
     
        $num = $stmt->rowCount();
     
        return $num;
    }

    public function countSeries(){
 
        $query = "SELECT COUNT(*) FROM " . $this->table_name;
     
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
     
        $num = $stmt->rowCount();
     
        return $num;
    }

    public function countVariations($variation_origin){
 
        $query = "SELECT series FROM " . $this->table_name . " WHERE variation_origin=?";
     
        $stmt = $this->conn->prepare( $query );
        $stmt->execute([$variation_origin]);
     
        $num = $stmt->rowCount();
     
        return $num;
    }

    public function countFigureVariationsBySeries($variation_origin, $seriesname, $reference){
 
        $query = "SELECT series FROM " . $this->table_name . " WHERE variation_origin=? AND series=? AND reference=?";
     
        $stmt = $this->conn->prepare( $query );
        $stmt->execute([$variation_origin, $seriesname, $reference]);
     
        $num = $stmt->rowCount();
     
        return $num;
    }

}

?>