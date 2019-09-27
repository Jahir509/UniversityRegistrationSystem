

<?php Include('a_header_footer/header.php');?>
	
<div id="breadcrumb">
    <div class="container">	
        <div class="breadcrumb">							
            <li><a href="a_home.php">Home</a></li>
            <li><a href="a_result.php">Result</a></li>
            
        </div>		
    </div>	
</div>





<title>Result</title>
<link rel="stylesheet"type ="text/css" href="style1.css">

<style type="text/css">
    #tabel1{
  height: 400;
  width: 100%;
  border-radius: 4px;

}
#h{
  background-color: #ff8533;
  color: black;
  font-size: 20px;
  text-align: center;
  border-radius: 4px;
  
  height: 40px;

}
#h1{
  background-color: #ffcc66;
  border: 2px solid black;
  font-size: 20px;
  color: black;
  text-align: center;
  border-radius: 4px;
  
}
#h1:hover{
  background-color: whitesmoke;
}

#tabel2{
  height: 200;
  width: 100%;
  border-radius: 4px;

}
#tabel3{
  height: 200;
  width: 100%;
  border-radius: 4px;

}
#bt1{
  background-color: rgba(230, 46, 0,0.7);
  padding: 4px 10px;
  font-size: 16px;
  cursor: pointer;
  border-radius: 5px;
  font-weight: bolder;
  border: 2px solid black;
  margin-top: 5px;
  margin-bottom: 5px;
}
</style>
<script type="text/javascript">
		function click(){
         var table=document.getElementById("tabel1");
         for(var i=0;i<table.rows.length;i++){
              table.rows[i].onclick=function(){
                  
                  var link="a_result1.php?Course-Id="+this.cells[1].innerHTML;
                  var xmlhttp = new XMLHttpRequest();
                  xmlhttp.onreadystatechange = function() {
                         if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                               document.getElementById("tabel2").innerHTML=xmlhttp.responseText; 
                               
                               console.log(xmlhttp.responseText);
                                
                          }
                   };  
                   xmlhttp.open("GET",link,true);
                   xmlhttp.send(null);
               
                };
            }
      }
    function click1(){
        var table=document.getElementById("tabel2");
         for(var i=0;i<table.rows.length;i++){
              table.rows[i].onclick=function(){
                  
                   var link="a_result2.php?Section="+this.cells[1].innerHTML;
                  var xmlhttp = new XMLHttpRequest();
                  xmlhttp.onreadystatechange = function() {
                         if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                                
                                document.getElementById("tabel3").innerHTML=xmlhttp.responseText;
                                
                                

                                
                          }
                   };  
                   xmlhttp.open("GET",link,true);
                   xmlhttp.send(null);
               
                };
            }
      }
      function selectrowtoinput1(){
			var table=document.getElementById("tabel3");
         for(var i=0;i<table.rows.length;i++){
              table.rows[i].onclick=function(){
                  
                  var link="a_result3.php?ID="+this.cells[1].innerHTML+"&Grade="+document.getElementById("input").value;
                  var xmlhttp = new XMLHttpRequest();
                  xmlhttp.onreadystatechange = function() {
                         if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                             window.location.reload();
                             
                                
                          }
                   };  
                   xmlhttp.open("GET",link,true);
                   xmlhttp.send(null);
               
                };
            }
		}
 
	</script>


<body>

<!--

  <div class="container1">
   <div class="wrapper">
       <div id="top-left">
          <img src="uiu.png">
          </div>
          <div id="top-right">
              <ul>
                <li><a href="login.html">Logout</a></li>
              </ul>
          </div>
      </div>        
  </div>
  <div  class="container2">
    <ul>    
      <li><a href="a_home.php">Home</a></li>
        <li>
                <a href="a_registration.php" >Registration</a>
            </li>
            <li><a href="a_show_course.php">Resource</a></li>
      <li><a href="a_section.html">Section</a></li>
      <li><a href="a_result.php">Result</a></li>
      <li><a href="a_script_check.php">Script Recheck</a></li>
      <li><a href="a_help.php">Help</a></li>
    </ul>
  </div>
-->
	 <?php
   
      $conn = mysqli_connect("localhost", "root", "", "university");
      if($conn->connect_errno > 0){
          die("Unable to connect: ". $conn->connect_error);
      }
      
      ?>
  <table id="tabel1">
  	<tr>
  		<th id="h">SI</th>
  		<th id="h">Course-Id</th>
  		<th id="h">Title</th>
  		<th id="h">Click</th>
  	</tr>
  	<?php
      $query="SELECT DISTINCT registration.course_id as code ,course.title as title from registration NATURAL JOIN course";
      $result = $conn->query($query);
      $i=1;
  while ($row = mysqli_fetch_array($result)) { 
       ?> 
  	<tr>
  		<td id="h1"><?=$i?></td>
        <td id="h1"><?=$row['code']?></td>
        <td id="h1"><?=$row['title']?></td>
        <td id="h1"><a href="javascript:click()">Click</a></td>
  	</tr>

      <?php 
       $i++;
        } 

    $conn->close();
    ?>
  </table>
  <table id="tabel2">
  	
  </table>
  <table id="tabel3">
  	
  </table>
</body>
</html>