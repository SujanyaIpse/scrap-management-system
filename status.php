<?php
session_start();

// Check if user_id is set in session
if (!isset($_SESSION['user_id'])) {
    // Redirect to login page if user_id is not set
    header("Location: login.php");
    exit();
}

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

// Assuming user_id is stored in the session after login
$user_id = $_SESSION['user_id'];

$sql = "SELECT * FROM form_data WHERE user_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$result = $stmt->get_result();
?>

<!DOCTYPE html>
<html>
<head>
    <link href = "status.css" rel = "stylesheet">
    <title>User Dashboard</title>
    <style>
        body {
            background-color: #f6faf5;
        }
        h2 {
            color: green;
            margin-bottom: 30px;
            padding: 20px;
            font-size: 40px;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        .btn {
            padding: 5px 10px;
            text-decoration: none;
        }
        .btn-success {
            background-color: green;
            color: white;
        }
        .btn-danger {
            background-color: red;
            color: white;
        }
    </style>
</head>
<body>
    <h2>Your Pickup Requests</h2>
    <table>
        <thead>
            <tr>
                <th>S.N.</th>
                <th>Date</th>
                <th>Time</th>
                <th>Address</th>
                <th>Estimated Weight</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $count = 1;
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
            ?>
            <tr>
                <td><?=$count?></td>
                <td><?=$row["date"]?></td>
                <td><?=$row["time"]?></td>
                <td><?=$row["address"]?></td>
                <td><?=$row["estimated_weight"]?></td>
                <td><?=$row["status"]?></td>
            </tr>
            <?php
                    $count++;
                }
            } else {
                echo "<tr><td colspan='6'>No pickup requests found.</td></tr>";
            }
            ?>
        </tbody>
    </table>
</body>
</html>

<?php
$stmt->close();
$conn->close();
?>

