<?php
    include "../../db/connect.php";
    
    header("Access-Control-Allow-Origin: http://localhost:3000");
    header("Access-Control-Allow-Methods: GET, POST");
    header("Content-type: application/json");

    if($_SERVER["REQUEST_METHOD"] === "GET"){
        $provider = isset($_GET["provider"]) ? $_GET["provider"] : "";
        if($provider === "facebook" || $provider === "email"){
		$agile = $provider === "facebook" ? $_GET["userID"] : $_GET["email"];
            $select = "SELECT id FROM user where email = '$agile' OR userID  =  '$agile'";
            echo json_encode(array("select" => $select));
            $result = $conn->query($select);
            $data;
            if($result->num_rows > 0){
                $id = $result->fetch_array();
                $listID = $_GET["listID"];
                $update = "UPDATE user
                           SET questionerr = $listID
                           where id = '$id'";
                $resUpdate = $conn->multi_query($update);
                if($resUpdate){
                    echo json_encode(array("mess" => "thanh cong"));
                }
            }else{
                http_response_code(204);
                echo json_encode(array("mess" => "Khong thanh cong"));
            }
        }
        else{
            http_response_code(404);
            echo json_encode(array("mess" => "Khong xac dinh duoc provider"));
        }
    }
    else{
        http_response_code(404);
        echo json_encode(array("mess" => "Something went wrong"));
    }
?>