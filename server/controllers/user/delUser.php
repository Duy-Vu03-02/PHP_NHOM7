<?php
    session_start();
    include "../../db/connect.php";

    header("Access-Control-Allow-Origin: http://localhost:3000");
    header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
    header("Access-Control-Allow-Headers: Content-Type, Authorization");
    header("Access-Control-Allow-Credentials: true");
    header("Content-Type: application/json");

    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        if(isset($_SESSION["logged_in"])){
            $idUser = isset($_SESSION["id_user"]) ? $_SESSION["id_user"] : null;
            if(isset($idUser) && $idUser != null){
                $del = "DELETE FROM user where id = '$idUser'";
                $result = $conn->query($del);
                if($result){
                    http_response_code(200);
                    session_unset();
                    session_destroy();
                }
            }
        }
        else{
            http_response_code(204);
        }
    }

?>
