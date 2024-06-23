<?php
    session_start();
    include "../../db/connect.php";
    include "../../model/User.php";

    header("Access-Control-Allow-Origin: http://localhost:3000");
    header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
    header("Access-Control-Allow-Headers: Content-Type, Authorization");
    header("Access-Control-Allow-Credentials: true");
    header("Content-Type: application/json");

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $data = json_decode(file_get_contents('php://input'), true);
    $provider = isset($data['provider']) ? $data['provider'] : null;
    $username = isset($data['name']) ? $data['name'] : null;
    $email = isset($data['email']) ? $data['email'] : null;
    $userID = isset($data["userID"]) ? $data["userID"] : null;
    $picture = isset($data['picture']) ? $data['picture'] : null;
    $agile = '1=0';
    
    if ($provider === "facebook" && $userID !== null) {
        $agile = "facebook = '$userID'";
    } else if ($provider === "email" && $email !== null) {
        $agile = "email = '$email'";
    }
    
    $select = "SELECT * FROM user WHERE " . $agile;

    if ($email !== null || $userID !== null) {
        $result = $conn->query($select);

        if ($result->num_rows > 0) {
            $userData = $result->fetch_assoc();
            $data = new User($userData);

            if ($data === null) {
                http_response_code(204);
            } else {
                $_SESSION["logged_in"] = true;
                echo json_encode($data);
                http_response_code(200);
            }
        } else {
            $insert = "INSERT INTO user(username, picture, email, userID)
                       VALUES('$username', '$picture', '$email', '$userID')";
            $resInsert = $conn->query($insert);

            if ($resInsert) {
                $result = $conn->query($select);

                if ($result->num_rows > 0) {
                    $userData = $result->fetch_assoc(); 
                    $data = new User($userData); 

                    if ($data === null) {
                        http_response_code(204);
                    } else {
                        $_SESSION["logged_in"] = true;
                        echo json_encode($data);
                        http_response_code(200);
                    }
                }
            }
        }
    }
}
?>
