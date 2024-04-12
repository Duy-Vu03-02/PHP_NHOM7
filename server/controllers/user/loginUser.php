<?php
    include "../../db/connect.php";

    header("Access-Control-Allow-Origin: http://localhost:3000");
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: Content-Type");
    header("Content-Type: application/json");

    if($_SERVER["REQUEST_METHOD"] === "POST"){
        $data = json_decode(file_get_contents('php://input'), true);
        if ($data['key'] === 'value') {
            // Thực hiện hành động tương ứng
            echo json_encode(['message' => 'Data received successfully']);
          } else {
            // Trả về thông báo lỗi nếu cần
            http_response_code(400);
            echo json_encode(['error' => 'Invalid data']);
          }    
    }
?>