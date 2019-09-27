<?php
session_start();
   $conn = mysqli_connect("localhost", "root", "", "university");
	if($conn->connect_errno > 0){
			    die("Unable to connect: ". $conn->connect_error);
	}
	$code=$_GET['Course-Id'];
	$_SESSION["code"] = $code ;
	$query="SELECT DISTINCT `sec_id`, `semester`, `year` FROM  registration  WHERE registration.course_id='$code'";
	$result = $conn->query($query);
	$sum="<tr>
	<th id=h>SI</th>
	<th id=h>Sec-Id</th>
	<th id=h>Click</th>
	</tr>";
	 $i=1;
	while ($row = mysqli_fetch_array($result)) {

		$sum.="<tr>
		       <td id=h1>".$i."</td>
		       <td id=h1>".$row['sec_id']."</td>
		       <td id=h1><a href=javascript:click1()>Click</a></td>
		 </tr>";
		 $i++;
	}
	echo $sum;
	$conn->close();

?>