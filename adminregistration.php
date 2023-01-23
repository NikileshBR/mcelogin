<?php
require 'config.php';
session_start();
if(!empty($_SESSION["usn"])){
  header("Location: index1.php");
}
if(isset($_POST["submit"])){
  $name = $_POST["name"];
  $tid = $_POST["tid"];
  $email = $_POST["email"];
  $lecture=$_POST["lecture"];
  $password = $_POST["password"];
  $confirmpassword = $_POST["confirmpassword"];
  $hashed_pass=password_hash($password,PASSWORD_DEFAULT);
  $hashed_confirm_pass=password_hash($confirmpassword,PASSWORD_DEFAULT);
  $duplicate = mysqli_query($conn, "SELECT * FROM lecturerinfo WHERE tid = '$tid' OR email = '$email'");
  if(mysqli_num_rows($duplicate) > 0){
    echo
    "<script> alert('Username or Email Has Already Taken'); </script>";
  }
  else{
    if($password == $confirmpassword){
      $query = "INSERT INTO lecturerinfo VALUES('$name','$tid','$email','$lecture','$hashed_pass')";
      mysqli_query($conn, $query);
     
      header("Location: llogin.php");
      echo "<script> alert('Registration Successful'); </script>";
    }
    else{
      echo "<script> alert('Password Does Not Match'); </script>";
    }
  }
}
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Registration</title>

    <link rel="stylesheet" href="css/preloginstyle.css">
    <link rel="stylesheet" href="css/registrationstyle.css">
    <link rel="stylesheet" href="css/navbarstyle.css">

  </head>
  <body>
    <<header style="z-index:3;">
  <a href="login.php"><div class="logo">MCE Portal</div></a>
            <div class="hamburger">
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
            </div>
            <nav class="nav-bar">
                <ul>
                    <li>
                        <a href="adminlogin.php" >Login</a>
                    </li>
                    <li>
                        <a href="" class="active">Register</a>
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
            <h2>LECTURER<BR>REGISTRATION</h2>
            <form class="" action="" method="post" autocomplete="off">

              <input type="text" name="name" id="name" class="input-box" placeholder="Enter your Name" required value=""> <br>
             
              <input type="text" name="tid" id="tid" class="input-box" placeholder="Enter your TID" required value=""> <br>
              
              <input type="email" name="email" id="email" class="input-box" placeholder="Enter your Email" required value=""> <br>
              
              <!-- <input type="text" name="branch" id="branch" class="input-box" placeholder="Enter Branch (eg. CSE)" required value=""> <br> -->


              <input type="text" name="lecture" id="lecturing" class="input-box" placeholder="Classes (eg:cse3a,cse5c)" required value=""> <br>
              
              
              <input type="password" name="password" id="password" class="input-box" placeholder="Password" required value=""> <br>

              <input type="password" name="confirmpassword" id="confirmpassword" class="input-box" placeholder="Confirm Password" required value=""> <br>
              
              <button type="submit" class="main-btn" name="submit">SUBMIT</button>

              <a href="adminlogin.php">
                <button type="button" class="side-btn" onclick="adminlogin.php">GO TO LOGIN</button>
              </a>
            </form>
            <br>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>