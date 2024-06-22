<?php
    include "../../db/connect.php";
    include "../../model/Question.php";
    
    header("Access-Control-Allow-Origin:*");
    header("Access-Control-Allow-Methods:GET,POST");
    header("Access-Control-Allow-Headers: Content-Type,Authorization");
    header("Access-Control-Allow-Credentials:true");
    header("Content-Type: application/json");

    if($_SERVER["REQUEST_METHOD"] === "POST"){
        $dataPost = json_decode(file_get_contents("php://input"), true);
        $action = isset($dataPost["action"]) ? $dataPost["action"] : "";
        $listID = explode(",", $action);
        if(count($listID) > 0){
            $data = array();

            for($i = 0; $i < count($listID); $i++){
                $select = "SELECT * FROM question where id = '$listID[$i]'";
                $result = $conn->query($select);
                if($result->num_rows > 0){
                    while($row = $result->fetch_assoc()){
                        $data[] = new Question($row);
                    }
                }
            }
            http_response_code(200);
            echo json_encode($data);
        }
    }
    else{
        http_response_code(405);
        echo json_encode(array("mess" => "Something went wrong"));
    }
?>