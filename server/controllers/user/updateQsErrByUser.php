<?php
    include "../../db/connect.php";
    include "../middleware/index.php";
    

    if($_SERVER["REQUEST_METHOD"] === "POST"){
        $dataPost = json_decode(file_get_contents("php://input", true));
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
                /// true la nhan ve kieu mang
                $oldList = json_decode($data["questionerr"], true);
                $listID = explode(",",$listID);
                $id = $data["id"];

                // decode troc khi su dung
                $mergeList = empty($oldList) || $oldList == null ? $listID : ($listID + $oldList);
                // encode truoc khi update
                $mergeList = json_encode($mergeList);

                $update = "UPDATE user
                        SET questionerr = '$mergeList'
                        WHERE id = '$id'";
                if($conn->query($update)){
                    http_response_code(200);
                }
                else{
                    http_response_code(204);
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
?>