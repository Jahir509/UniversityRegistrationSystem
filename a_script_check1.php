<?php




$conn = mysqli_connect("localhost", "root", "", "university");

if($conn->connect_errno > 0){
    die("Unable to connect: ". $conn->connect_error);
}
$userid = $_GET['Id'];
$query="update scriptcheck
set scriptcheck.Approval='confirm'
where scriptcheck.ID='$userid'";
$result1 = $conn->query($query);

  
$conn->close();
?>