<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ems - Login</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <div class="login-container">
    <h2>Login to continue!</h2>
    <?php
    if (!empty($_SESSION['error_message'])) {
        echo "<p style='color:red;'>" . $_SESSION['error_message'] . "</p>";
        unset($_SESSION['error_message']);
    }
    ?>
    <form method="post" action="login.php">
      <div class="input-container">
        <input type="text" placeholder="Username" required name="name">
      </div>
      <div class="input-container">
        <input type="password" placeholder="Password" required name="password">
      </div>
      <div class="btn-container">
        <button type="submit">Login</button>
      </div>
    </form>
    <p>Don't have an account? <a href="register.html">Register here</a></p>
  </div>

  <!-- SVG Waves -->
  <svg class="waves" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
    <path fill="#007bff" fill-opacity="1" d="M0,96L48,101.3C96,107,192,117,288,117.3C384,117,480,107,576,117.3C672,128,768,160,864,165.3C960,171,1056,149,1152,128C1248,107,1344,85,1392,74.7L1440,64L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path>
  </svg>
</body>
</html>
