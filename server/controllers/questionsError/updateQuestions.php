<?php
    include "../../db/connect.php";
    include "../../model/CreateQuestionsError.php";

    header("Access-Control-Allow-Origin: http://localhost:3000");
    header("Access-Control-Allow-Methods: GET, POST");
    header("Content-Type: application/json");

    if($_SERVER["REQUEST_METHOD"] === "GET"){
        $listErr = isset($_GET["listerr"]) ? $_GET["listerr"] : "";
        $listCorrect = isset($_GET["listcorrect"]) ? $_GET["listcorrect"] : "";
        if($listErr != "" || $listCorrect != ""){
            $listErr = explode(",",$listErr);
            $listCorrect = explode(",", $listCorrect);
            for($i = 0; $i< count($listErr); $i++){
                $selectId = "SELECT id FROM question WHERE id = '$listErr[$i]'";
                $resultId = $conn->query($selectId);
                if($resultId->num_rows > 0){
                    $updateById = "UPDATE question 
                                        SET totalqserr  = totalqserr + 1
                                        WHERE id = '$listErr[$i]'";
                    $resultUpdateById = $conn->multi_query($updateById);
                }
                else{
                    echo json_encode(array("mess" => "Khong ton tai id cau hoi nay"));
                }    
            }

            for($i = 0; $i< count($listCorrect); $i++){
                $selectId = "SELECT id FROM question WHERE id = '$listCorrect[$i]'";
                $resultId = $conn->query($selectId);
                if($resultId->num_rows > 0){
                    $updateById = "UPDATE question 
                                        SET totalqscorrect = totalqscorrect +1
                                        WHERE id = '$listCorrect[$i]'";
                    $resultUpdateById = $conn->multi_query($updateById);
                }
                else{
                    echo json_encode(array("mess" => "Khong ton tai id cau hoi nay"));
                }    
            }
            echo json_encode($liseSelect);
        }
        else{
            http_response_code(404);
            echo json_encode(array("mess" => "Du lieu rong"));
        }
    } 
    else{
        http_response_code(405);
        echo json_encode(array("mess" => "Something went wrong"));
    }
?>