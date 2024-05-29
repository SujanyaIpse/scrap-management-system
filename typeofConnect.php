<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate and sanitize the input
    $contact_name = $_POST['contact_name'];
    $pincode = $_POST['pincode'];
    $contact_email = $_POST['contact_email'];
    $category = $_POST['category'];
    // You can add more validation if needed

    // Store the data in the session
    $_SESSION['contact_name'] = $contact_name;
    $_SESSION['pincode'] = $pincode;
    $_SESSION['contact_email'] = $contact_email;
    $_SESSION['category'] = $category;

    // Echo "Saved" to indicate successful submission
    echo "Saved";
}
?>
