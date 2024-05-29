<?php
    $name = $_POST['name'];
    $mobile = $_POST['mobile'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    $conn = new mysqli('localhost', 'root', '', 'Escrap');
    if($conn->connect_error){
        die(`Connection failed : ` .$conn->connect_error);
    }else{
        $stmt = $conn->prepare("insert into registration(name, mobile, email, password) values(?, ?, ?,?)");
        $stmt->bind_param("siss", $name, $mobile, $email, $password);
        $stmt->execute();
        echo "registration Successful..";
        $stmt->close();
        $conn->close();

        header('Location: index.php');
        exit();
    }
?>