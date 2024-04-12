<?php
    include "../../db/connect.php";
    include "../../model/Question.php";

    header("Access-Control-Allow-Origin: http://localhost:3000");
    header("Access-Control-Allow-Methods: GET, POST");
    header("Content-Type: application/json");


    if($_SERVER["REQUEST_METHOD"] === "GET"){
        $selectTotalExam = "SELECT COUNT(*)  FROM exam";
        $result = $conn->query($selectTotalExam);
        $totalExam=0;
        if($result->num_rows >0){
            $totalExam = $result->fetch_assoc()["COUNT(*)"];
            getExam($totalExam);
        }
        else{
            echo json_encode(array("mess" => "Không có dữ liệu"));
        }
    }
    else{
        echo json_encode(array("mess" => "Something went wrong"));
    }

    function getExam ($length){
        global $conn;
        $data = array();
        for($i=1; $i<$length+1; $i++){
            $select = "SELECT * FROM question where question_exam = $i LIMIT 5";
            $result = $conn->query($select);
            $temp = array();
            if($result->num_rows > 0){
                while($row = $result->fetch_assoc()){
                    $temp[] = new Question($row);
                }
            }
            $data[] = $temp;
        }
        echo json_encode($data);
    }
?>