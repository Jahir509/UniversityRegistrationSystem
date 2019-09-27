<?php
     session_start();
      $conn = mysqli_connect("localhost", "root", "", "university");
      if($conn->connect_errno > 0){
          die("Unable to connect: ". $conn->connect_error);
      }
      $id = $_GET['ID'];
      $grade = $_GET['Grade'];
      $code=$_SESSION["code"]  ;
      $sec=$_SESSION["sec"]  ;
      echo $sec;
      $query="INSERT INTO `result`(`ID`, `course_id`, `grade`) VALUES ('$id','$code','$grade')";
      $result = $conn->query($query);
      $query2="SELECT DISTINCT registration.semester as sem ,registration.year as year from registration where registration.ID='$id' and registration.course_id='$code' and registration.sec_id='$sec'";
      $result2 = $conn->query($query2);
     $row = mysqli_fetch_array($result2);
      	$sem=$row['sem'];
      $year=$row['year'];
      echo $year,$sem;
      $query3="INSERT INTO takes VALUES ('$id','$code','$sec','$sem',$year)";
      $result3 =$conn->query($query3);
      #$query1="DELETE from registration where registration.ID='$id' and registration.course_id='$code' and registration.sec_id='$sec'";
      #$result1 = $conn->query($query1);

       ?>