<?php
session_start();
session_unset();
session_destroy();
echo "Session variables unset and destroyed."; // Debugging statement
header('location: index.php');
exit; // Make sure to exit after redirection
?>
