<?php

if (isset($_POST['login-submit'])){
    require 'dbhandler.php';

    $uname_email = $_POST['uname'];
    $password = $_POST['pwd'];

    if (empty($uname_email) || empty($password)){
        header("Location: ../login.php?error=emptyfield");
        exit();
    }    
    
    $sql = "SELECT * FROM users WHERE uname=? OR email=?;";
    $stmt = mysqli_stmt_init($conn);
    if (!mysqli_stmt_prepare($stmt, $sql)){
        header("Location: ../login.php?error=SQLerror");
        exit();
    }
    else{
        mysqli_stmt_bind_param($stmt, "ss", $uname_email, $uname_email);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        $data = mysqli_fetch_assoc($result);
        
        if (empty($data)){
            header("Location: ../login.php?error=userDNE");
            exit();
        }
        else{
            $pass_check = password_verify($password, $data['password']);

            if ($pass_check == true){
               session_start();
               $_SESSION['uid'] = $data['uid'];
               $_SESSION['fname'] = $data['fname'];
               $_SESSION['username'] = $data['uname'];


            
               if ($uname_email == "Admin"){
                    header("Location: ../admin.php?login=success");
                    exit();
               }

               header("Location: ../profile.php?login=success");
                exit();

            }
            else{
                header("Location: ../login.php?error=passwdIncorrect");
                exit();
            }
            
             
        }
    }

}

else{
    header("Location: ../login.php");
    exit();
}