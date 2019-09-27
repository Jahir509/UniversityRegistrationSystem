
<?php
   session_start();
      $conn = mysqli_connect("localhost", "root", "", "university");
      if($conn->connect_errno > 0){
          die("Unable to connect: ". $conn->connect_error);
      }
      
     
  $sum="
  	<tr>
  		<th id=h>SI</th>
  		<th id=h>Student ID</th>
  		<th id=h>Grade</th>
  		<th id=h>Click</th>
  	</tr>";
  	
  	 $sec=$_GET['Section'];
  	 $_SESSION["sec"] = $sec ;
  	  $code=$_SESSION["code"] ;
      $query="SELECT registration.ID as id FROM `registration` WHERE registration.course_id='$code' and registration.sec_id='$sec'";
      $result = $conn->query($query);
      $i=1;
  while ($row = mysqli_fetch_array($result)) { 
       
  	$sum.="<tr>
  		<td id=h1>".$i."</td>
        <td id=h1>".$row['id']."</td>
        <td id=h1><form><input type=text id=input ></td>
        <td id=h1><input id=bt1 type=button name=select value=select onclick='selectrowtoinput1()'></form></td>
  	</tr>";
 
       $i++;
        } 
    echo $sum;
    $conn->close();
    ?>

