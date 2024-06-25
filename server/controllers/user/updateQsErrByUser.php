<?php
    session_start();
    include "../../db/connect.php";
    
    header("Access-Control-Allow-Origin: http://localhost:3000");
    header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
    header("Access-Control-Allow-Headers: Content-Type, Authorization");
    header("Access-Control-Allow-Credentials: true");
    header("Content-Type: application/json");

    if($_SERVER["REQUEST_METHOD"] === "POST" ){
        if(isset($_SESSION["logged_in"])){
            $dataPost = json_decode(file_get_contents('php://input'), true);
            $provider = isset($dataPost["provider"]) ? $dataPost["provider"] : null;
            $email = isset($dataPost['email']) ? $dataPost["email"] : null;
            $userID = isset($dataPost['userID']) ? $dataPost["userID"] : null;
            $listID = isset($dataPost["listID"]) ? $dataPost["listID"]:null;
    
            if($listID !== null){
                $agile = '1=0';
                if($provider === 'facebook' && $userID !== null){
                    $agile= "userID = '$userID'";
                }
                else if($provider === "email"  && $email !== null){
                    $agile = "email = '$email'";
                }
                $select = "SELECT id, questionerr FROM user WHERE ".$agile;
                $result = $conn->query($select);
                if($result->num_rows >0){
                    $data = $result->fetch_assoc();

                    // decode troc khi su dung
                    $oldList = json_decode($data["questionerr"], true);
                    $id = $data["id"];
    
                    if($oldList != null){
                        foreach($oldList as $item){
                            $listID[] = $item;
                        }
                    }
                    $listID = json_encode($listID);
                    $update = "UPDATE user
                            SET questionerr = '$listID'
                            WHERE id = '$id'";
                    if($conn->query($update)){
                        http_response_code(200);
                    }
                    else{
                        http_response_code(204);
                    }
                }
            }
        }
        else{
            http_response_code(204);
        }
    }
?>