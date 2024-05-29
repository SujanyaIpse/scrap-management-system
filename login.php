<?php
session_start();
error_reporting(E_ALL);  // Enable error reporting
ini_set('display_errors', 1);  // Display errors on the page

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $password = $_POST['password'];

    // Assuming 'Escrap' is your database name
    $conn = new mysqli('localhost', 'root', '', 'Escrap');

    if ($conn->connect_error) {
        die('Connection failed: ' . $conn->connect_error);
    }

    $stmt = $conn->prepare("SELECT id, name, password FROM registration WHERE email=?");
    $stmt->bind_param("s", $name);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        if ($password == $row['password']) {  // Compare plain text passwords
            $_SESSION['user_id'] = $row['id']; // Store user_id in session
            $_SESSION['name'] = $row['name'];
            header('Location: homePage.html');
            exit();
        } else {
            $_SESSION['error_message'] = "Invalid username or password. Please try again.";
        }
    } else {
        $_SESSION['error_message'] = "Invalid username or password. Please try again.";
    }

    $stmt->close();
    $conn->close();
    
    header('Location: index.php'); // Redirect back to login form
    exit();
}
?>
