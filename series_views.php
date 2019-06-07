<?php
class SeriesViews{
 
    // database connection and table name
    private $conn;
    private $table_name = "series";
 
    // object properties
    public $seriesname;
    public $series_image;
    public $variation_origin;
 
    public function __construct($db){
        $this->conn = $db;
    }
 
    function getSeriesList(){
        $query = "SELECT
                    seriesname, series_image
                FROM
                    " . $this->table_name;
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
        return $stmt;
    }
}
?>
