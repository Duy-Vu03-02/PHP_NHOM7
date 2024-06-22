<?php
    header("Access-Control-Allow-Origin:http://localhost:3000");
    header("Access-Control-Allow-Methods:GET,POST");
    header("Access-Control-Allow-Headers: Content-Type,Authorization");
    header("Access-Control-Allow-Credentials:true");
    header("Content-Type: application/json");

   if($_SERVER["REQUEST_METHOD"] == "POST" || $_SERVER["REQUEST_METHOD"] == "GET"){
    $id = json_decode($_COOKIE["type"]) != "" ? json_decode($_COOKIE["type"]) : null;
    $ss = $_COOKIE["id"] != "" ? $_COOKIE["id"] : null;
    if($id && $ss){
        $userSS = $_SESSION["user"]["$id"] != "" ? $_SESSION["user"]["$id"] : null;
        if($userSS !== $ss){
            // http_response_code(204);
        }
    }
    else{
        // http_response_code(204);
    }
   }
?>