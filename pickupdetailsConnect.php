<?php
session_start();

// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "escrap";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate and sanitize the input
    $date = $conn->real_escape_string($_POST['date']);
    $time = $conn->real_escape_string($_POST['time']);
    $address = $conn->real_escape_string($_POST['address']);
    $estimated_weight = $conn->real_escape_string($_POST['estimated_weight']);
    $remarks = $conn->real_escape_string($_POST['remarks']);

    // Check if other form data are available in session
    if (isset($_SESSION['contact_number']) && isset($_SESSION['contact_name']) && isset($_SESSION['pincode']) && isset($_SESSION['contact_email']) && isset($_SESSION['category']) && isset($_SESSION['user_id'])) {
        $user_id = $_SESSION['user_id'];
        $contact_number = $_SESSION['contact_number'];
        $contact_name = $_SESSION['contact_name'];
        $pincode = $_SESSION['pincode'];
        $contact_email = $_SESSION['contact_email'];
        $category = $_SESSION['category'];

        // Insert data into the database
        $sql = "INSERT INTO form_data (user_id, contact_number, contact_name, pincode, contact_email, category, date, time, address, estimated_weight, remarks) 
                VALUES ('$user_id', '$contact_number', '$contact_name', '$pincode', '$contact_email', '$category', '$date', '$time', '$address', '$estimated_weight', '$remarks')";

        if ($conn->query($sql) === TRUE) {
            echo 'Data stored successfully';
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }

    } else {
        echo "Required session data not found.";
    }
}

// Close the database connection
$conn->close();
?>
