<?php
    include "../../db/connect.php";
    include "../../model/Question.php";

    header("Access-Control-Allow-Origin: http://localhost:3000");
    header("Access-Control-Allow-Methods: GET, POST");
    header("Content-Type: application/json");

    if($_SERVER["REQUEST_METHOD"] === "GET"){
       $id = isset($_GET["id"]) ? $_GET["id"] : null;
       if($id) getExam($id);
        else{
            echo json_encode(array("mess" => "Không có dữ liệu"));
        }
    }
    else{
        echo json_encode(array("mess" => "Something went wrong"));
    }

    function getExam($examId){
        global $conn;
        
            $select = "SELECT question.id, question.text, question.img, question.answers, 
                question.answer, question.critical, question.hint FROM question 
                INNER JOIN exam ON question_exam = exam.id
                WHERE exam.id = '$examId'";
            $result = $conn->query($select);
            $temp = array();
            if($result->num_rows > 0){
                while($row = $result->fetch_assoc()){
                    $temp[] = new Question($row);
                }
        }
        echo json_encode($temp);
    }
?>
