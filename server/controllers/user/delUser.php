<?php
    session_start();
    include "../../db/connect.php";
    header("Access-Control-Allow-Origin: http://localhost:3000");
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: Content-Type");
    header("Content-Type: application/json");

// if ($_SERVER["REQUEST_METHOD"] === "POST") {
//     // var_dump($_SESSION);
//     http_response_code(200);
// }

?>
