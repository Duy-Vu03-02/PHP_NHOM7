<?php
    include "../../db/connect.php";
    include "../../model/Question.php";
    
    header("Access-Control-Allow-Origin: http://localhost:3000");
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: Content-Type");
    header("Content-Type: application/json");

    if($_SERVER["REQUEST_METHOD"] === "GET"){
        $select = "SELECT  * FROM question 
            ORDER BY totalqserr DESC
            LIMIT 50";
        $result = $conn->query($select);
        $data = array();
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                $data[] = array(
                    "id" => (int)$row["id"], 
                    "question" => $row["text"], 
                    "img" => $row["img"], 
                    "answer" => explode(".,",$row["answers"]),
                    "trueAnswer" => (int)$row["answer"], 
                    "hint" => $row["hint"], 
                    "mustCorrect" => boolval($row["critical"]),
                    "totalqserr" => $row["totalqserr"],
                    "totalqscorrect" => $row["totalqscorrect"],
                );
            }

            http_response_code(200);
            echo json_encode($data);
        }
        else{
            http_response_code(204);
            echo json_encode(array("mess" => "Khong co du lieu"));
        }
    }
    else{
        http_response_code(404);
        echo json_encode(array("mess" => "Something went wrong"));
    }
?>