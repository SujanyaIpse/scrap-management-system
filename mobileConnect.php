<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate and sanitize the input
    $contact_number = $_POST['contact_number'];

    // You can add more validation if needed
    if (!preg_match('/^\d{10}$/', $contact_number)) {
        echo "Invalid phone number";
        exit();
    }

    // Store the contact number in the session
    $_SESSION['contact_number'] = $contact_number;

    // Return success message
    echo "Saved";
}
?>
