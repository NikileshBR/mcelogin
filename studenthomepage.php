<?php
require 'config.php';
session_start();
if(!empty($_SESSION["usn"])){
  $id = $_SESSION["usn"];
  $result = mysqli_query($conn, "SELECT * FROM studentinfo WHERE usn ='$id'");
  $row = mysqli_fetch_assoc($result);
}
else{
 //header("Location: index.php");
 echo("{$_SESSION['id']}");
}
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Index</title>
    <link rel="stylesheet" href="css/preloginstyle.css">
    <link rel="stylesheet" href="css/loginstyle.css">
    <link rel="stylesheet" href="css/navbarstyle.css">
    <link rel="stylesheet" href="css/index.css">
    
  </head>
  <body>
    <header>
      <a href="index1.php"><div class="logo">MCE Portal</div></a>
        <div class="hamburger">
            <div class="line"></div>
            <div class="line"></div>
            <div class="line"></div>
        </div>
        <nav class="nav-bar">
            <ul>
                <li>
                    <a href="studenthomepage.php" class="active">Home</a>
                </li>
                <li>
                    <a href="studttfetch.php">Schedule</a>
                </li>
                <li>
                    <a href="studentgrievanceform.php">Grievance</a>
                </li>
                <li>
                    <a href="studentdispgrievance.php">Vote</a>
                </li>
                <li>
                    <a href="">About</a>
                </li>
                <li>
                    <a href="studentlogout.php">LOGOUT</a>
                </li>
            </ul>
        </nav>
    </header>  
    <h1 style="position:absolute; margin-top:140px; margin-left:810px;">Welcome <?php echo $row["Name"]; ?></h1> 
    <div class="container">
      <div class="card-container">
        <a style="color: grey;" href="studttfetch.php">
            <div class="card-base card-one">
            <div class="img-one"></div>
            <div class="side-btn btn-base btn-one">
                <P>Schedule</P>
            </div>
            <div class="content">
                See your update class Time table, along with any other important notifications posted by your lecturers.
            </div>
            </div>
        </a>
        <a  style="color: grey;" href="grievance.php">
            <div class="card-base card-two">
                <div class="img-two"></div>
                <div class="side-btn btn-base btn-one">
                    <P>Grievance</P>
                </div>
                <div class="content">
                    Report any grievance or Feedback by submitting the subject and a short body description of the problem you face. We will look into it ASAP 
                </div>
            </div>
        </a>
        <a  style="color: grey;" href="vote.php">
            <div class="card-base card-three">
                <div class="img-three"></div>
                <div class="side-btn btn-base btn-one">
                    <P>Voting</P>
                </div>
                <div class="content">
                    Vote for Public Grievances/Feedback posted by others so that ones with higher votes will be given higher priority. 
                </div>
            </div>
        </a>
    </div>
    </div>
    
    
    <script src="js/navbar.js"></script>
  </body>
</html>
