<?php
if (!isset($_POST)) {
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
    die();
}

include_once("dbconnect.php");

$name = $_POST['name'];
$email = $_POST['email'];
$password = sha1($_POST['password']);
$na = "na";

$sqlinsert = "INSERT INTO tbl_users (user_email,user_name,user_password,user_phone,user_address) VALUES('$email','$name','$password','$na','$na')";
if ($conn->query($sqlinsert) === TRUE) {
    $response = array('status' => 'success', 'data' => null);
    sendEmail($email);
    sendJsonResponse($response);
} else {
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
}


function sendJsonResponse($sentArray)
{
    header('Content-Type: application/json');
    echo json_encode($sentArray);
}

function sendEmail($email)
{
    //send email function here
}
?>