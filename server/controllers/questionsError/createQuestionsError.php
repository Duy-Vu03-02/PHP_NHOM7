<?php
    include "../../db/connect.php";
    include "../../model/CreateQuestionsError.php";

    header("Access-Control-Allow-Origin: http://localhost:3000");
    header("Access-Control-Allow-Methods: GET, POST");
    header("Content-Type: application/json");

    if($_SERVER["REQUEST_METHOD"] === "GET"){
        $action = isset($_GET["action"]) ? $_GET["action"] : "";
        $listId = explode(",",$action);
        
        $select = 
        "IF EXISTS (SELECT id FROM questionserror WHERE id = 1)
            BEGIN 
                UPDATE questionserror 
                SET totaltimes = totaltimes +1
                WHERE id = 1
            END
        ELSE
            BEGIN
                INSERT INTO questionserror (id, totaltimes)
                VALUES(1, 1)
            END 
            ";

        if($conn->multi_query($select)){
            http_response_code(200);
        }
        else{
            echo json_encode(array("mess" => "Database error"));
        }
    } 
    else{
        http_response_code(404);
        echo json_encode(array("mess" => "Something went wrong"));
    }
?>