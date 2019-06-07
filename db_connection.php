<?php 

Class Database {

    private $servername;
    private $username;
    private $password;
    private $dbname;
    private $charset;

    public function getConnection() {
        $this->servername = "localhost"; //e.g. localhost or websqlstaging
        $this->dbname = "robinsnest"; //e.g. vascular devices
        $this->username = "rich";
        $this->password = "123";
        $this->charset = "utf8mb4";

        try {
            $dsn = "mysql:host=". $this->servername .";dbname=" . $this->dbname . ";charset=" . $this->charset;
            $pdo = new PDO($dsn, $this->username, $this->password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $pdo;
       } catch (PDOException $e) {
            throw new \PDOException($e->getMessage(), (int)$e->getCode());
       }

       
    }
}
?>