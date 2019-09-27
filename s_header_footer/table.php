<?php
         $conn = mysqli_connect("localhost", "root", "", "university");

          if($conn->connect_errno > 0){
             die("Unable to connect: ". $conn->connect_error);
             }


            $query1= "SELECT * FROM `academic_calender` WHERE 1";
           $result1 = $conn->query($query1);
            $today =  date("Y-m-d");
            
              ?>
		<table border="4px solid black">
			<tr class="upperrow">
				<th>Date</th>
				<th>Day</th>
			    <th>Details</th>
			</tr>
			
		   <?php
		 while ($rowa = mysqli_fetch_array($result1)) {
		 ?>
		 
		 	<?php
		 	  $parts = explode('-', $rowa['Date']);
		 	  $time=strtotime($parts[0]);
		 	  $date = date('Y-m-d',$time);
		 	   $time1=strtotime($today);
		 	  $today1 = date('Y-m-d',$time1);
		 	  $diff=date_diff(date_create($today),date_create($date));
		 	  $intDiff = $diff->format("%R%a");
              $intDiff = intval($intDiff);
              if( $intDiff>=0&&$intDiff<=2){
		 	?>
		 	<tr>
			<td><font color="red" weight="bold" size="4px"><?= $rowa['Date'];?></td>
			<td><font color="red" weight="bold" size="4px"><?=  $rowa['Day'];?></td>
			<td><font color="red" weight="bold" size="4px"><?=  $rowa['Details'];?></td>
			</tr>
			<?php
			   }
			   else if ($intDiff>=3&&$intDiff<=5) {
	   	    ?>
		 	<tr>
			<td><font color="orange" weight="bold" size="4px"><?= $rowa['Date'];?></td>
			<td><font color="orange" weight="bold" size="4px"><?=  $rowa['Day'];?></td>
			<td><font color="orange" weight="bold" size="4px"><?=  $rowa['Details'];?></td>
			</tr>
			<?php
			   }
			   else if ($intDiff>=6 && $intDiff<=8) {
	   	    ?>
		 	<tr>
			<td><font color="green" weight="bold" size="5px"><?= $rowa['Date'];?></td>
			<td><font color="green" weight="bold" size="5px"><?=  $rowa['Day'];?></td>
			<td><font color="green" weight="bold" size="5px"><?=  $rowa['Details'];?></td>
			</tr>
			<?php
			   }
			 else{  

			?>
			<tr>
			<td font-weight="bold" font-size="4px"><?= $rowa['Date'];?></td>
			<td font-weight="bold" font-size="4px"><?=  $rowa['Day'];?></td>
			<td font-weight="bold" font-size="4px"><?=  $rowa['Details'];?></td>
			</tr>
			<?php
		}
	    }
		$conn->close();
		?>			  
			
		</table>