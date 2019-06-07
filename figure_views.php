<?php
class FigureViews{
 
    // database connection and table name
    private $conn;
    private $table_name = "actionfigures";
    private $table_name2 = "linkedvariation3";
    private $table_name3 = "variation_front";
    private $table_name4 = "variation_back";
 
    // object properties
    public $seriesname;
    public $series_image;
    public $variation_origin;
    public $reference;
    public $figurename;
    public $region;
    public $name;
    public $imageFront;
    public $imageBack;
    public $front_view_code_ref;
    public $back_view_code_ref;
    public $pidm;
 
    public function __construct($db){
        $this->conn = $db;
    }
 
    function getFiguresList(){
        $query = "SELECT
                    *
                  FROM
                    " . $this->table_name;
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
        return $stmt;
    }

    public function getVariationList($seriesname, $reference){
 
        $query = "SELECT * FROM " . $this->table_name2 . " WHERE series=? AND reference=? ORDER BY variation_origin DESC, pidm";
     
        $stmt2 = $this->conn->prepare( $query );
        $stmt2->execute([$seriesname, $reference]);
        return $stmt2;
    }

    public function getVariationFrontDetails($imageFront){
 
        $query = "SELECT * FROM " . $this->table_name3 . " WHERE front_view_code_ref=?";
     
        $stmt3 = $this->conn->prepare( $query );
        $stmt3->execute([$imageFront]);
        return $stmt3;
    }

    public function getVariationBackDetails($imageBack){
 
        $query = "SELECT * FROM " . $this->table_name4 . " WHERE back_view_code_ref=?";
     
        $stmt4 = $this->conn->prepare( $query );
        $stmt4->execute([$imageBack]);
        return $stmt4;
    }

}
?>