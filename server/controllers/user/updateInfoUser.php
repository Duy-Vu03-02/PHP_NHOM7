<?php
    include "../../db/connect.php";
    include "../../model/User.php";
    include "../middleware/index.php";


    if($_SERVER["REQUEST_METHOD"] === "POST"){
        $data = json_decode(file_get_contents('php://input'), true);
        $provider = isset($data['provider']) ? $data['provider'] : null;
        $oldEmail = isset($data['oldEmail']) ? $data['oldEmail'] : null;
        $oldUserID = isset($data['oldUserID']) ? $data["oldUserID"] : null;
        $username = isset($data['username']) ? trim($data['username']) : null;
        $email = isset($data['email']) ? trim($data['email']) : null;
        $picture = isset($data['picture']) ? trim($data['picture']) : null;
        
        if($provider !== null && ($oldEmail !== null || $oldUserID !== null)){
            if($username != null && $email != null && $picture != null){
                $agile = '1=0';
                if($provider === "facebook" && $userID !== null){
                    $agile = "userID = '$userID'";
                }
                else if($provider === "email" && $email !== null){
                    $agile = "email = '$email'";
                }
                
                $select = "SELECT id FROM user WHERE ".$agile;
                $result = $conn->query($select);
                if($result->num_rows > 0){
                    $id = $result->fetch_assoc()["id"];
                    $update = "UPDATE user
                            SET username = '$username',
                                picture = '$picture',
                                email = '$email'
                            WHERE id = '$id'";
                    $resUpdate = $conn->query($update);
                    if($resUpdate){
                        $response = new User($data);
                        echo json_encode($response);
                        http_response_code(200);
                    }                    
                }
                else{
                    http_response_code(204);
                }
            }
        }
        else{
            http_response_code(404);
            echo json_encode(array("mess" => "Something went wrong"));
        }
    }
?>