<?php
require 'config.php';
session_start();
if(!empty($_SESSION["usn"])){
  header("Location: index1.php");
}
if(isset($_POST["submit"])){
  $usn = $_POST["usn"];
  $password = $_POST["password"];
  $hashed_pass=password_hash($password,PASSWORD_DEFAULT);
  $result = mysqli_query($conn, "SELECT * FROM studentinfo WHERE usn = '$usn'");
  $row = mysqli_fetch_assoc($result);
  if(mysqli_num_rows($result) > 0){
    if(password_verify($password,$row['password'])){
      $_SESSION["login"] = true;
      $_SESSION["usn"] = $row["usn"];
      header("Location: studenthomepage.php");
    }
    else{
      echo
      "<script> alert('Wrong Password.'); </script>";
    }
  }
  else{
    echo
    "<script> alert('User Not Registered.'); </script>";
  }
}
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Login</title>

    <link rel="stylesheet" href="css/preloginstyle.css">
    <link rel="stylesheet" href="css/loginstyle.css">
    <link rel="stylesheet" href="css/navbarstyle.css">
    
  </head>
  <body>
    <header style="z-index:3;">
      <a href="login.php"><div class="logo">MCE Portal</div></a>
            <div class="hamburger">
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
            </div>
            <nav class="nav-bar">
                <ul>
                    <li>
                        <a href="" class="active">Login</a>
                    </li>
                    <li>
                        <a href="studentregistration.php">Register</a>
                    </li>
                    <li>
                        <a href="">About</a>
                    </li>
                </ul>
            </nav>
    </header>
    <div class="container">
      <div class="card">
        <div class="inner-box">
          <div class="card-front">
            <h2>LOGIN</h2>
            <form class="" action="" method="post" autocomplete="off">
              
              <input type="text" name="usn" id="usn" class="input-box" placeholder="Enter your USN" > <br>
              
              <input type="password" name="password" id="password" class="input-box" placeholder="Password" > <br>
              
              <button type="submit" class="main-btn" name="submit">SUBMIT</button>

              <a href="studentregistration.php">
                <button type="button" class="side-btn" onclick="registration.php">REGISTER</button>
              </a>

            </form>
            <br>
            
          </div>
        </div>
      </div>
    </div>
    <script src="js/navbar.js"></script>
  </body>
</html>