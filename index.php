<?php
$con=pg_connect("host='localhost' dbname='db_desire' user='desire' password='12345'") or die(" not con");


//include ("include.php");

if(isset($_POST['login']))
{

$user= pg_escape_string($con, $_POST['username']);
$pass= pg_escape_string($con, $_POST['password']);
$hashed_pass=hash('sha512',$pass);




 
 $query = pg_query($con,"SELECT * FROM users WHERE username='$user'");
 $row=pg_fetch_array( $query);



  if($hashed_pass == $row['pass'])
 {
 
  
  header("Location:succes.php");
      
}
 
 
 else
 {
  echo "Incorrect password or username";	
   

}
 
 pg_close($con);
 



}










if(isset($_POST["signup"]))
{
      

 


$name= pg_escape_string($con, $_POST['name']);
$user= pg_escape_string($con, $_POST['uname']);
$pass= pg_escape_string($con, $_POST['pass']);
$hashed_pass=hash('sha512',$pass);


       $check_email =pg_query($con,"SELECT * FROM users WHERE username='$user'");











 $count=pg_num_rows($check_email);
 
 if($count==0){ 


          $query = "INSERT INTO users(name,username,pass) VALUES('$name','$user','$hashed_pass')";

                     
 $result =pg_query($con,$query);
				

          

			
			
                if($result)
				 {echo"successfully registered ";}

				  else{echo"not registered";}


        }
             

		else{
 echo"the username you entered exist in the sysyem ";
    
            } 

}



pg_close($con);
?>




<hml>
<head>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>

      <div class="header">
        <h2>Sign up</h2>
      </div>
  

 
      <form action="index.php" method="post" >
<div class="input-g">
       <label>Name:
 <input type="text"  placeholder="your name" name="name" required  />
      </label>
</div>

<div class="input-g">
<label>Username:
        <input type="text"  placeholder="Email address" name="uname" required  /><br><br>
</label>
</div>

<div class="input-g">
<label>password:
        <input type="password" placeholder="Password" name="pass" required  />
</label>
        </div>              
 

            
<div class="input-g">
          <button type="submit" name="signup" class="btn">Create Account</button> 
             </div>
      
      </form>

<div class="header1">
<h3 class="white">log in</h3>
</div>
				     
				<form action="index.php" method="post">
				<div class="input-g">
       <label>Username:
					<input type="text" placeholder="Email address" name="username" required><br><br>
</label>
</div>
<div class="input-g">
       <label>Password:
					<input type="password"  placeholder="Password" name="password" required>
</label>
</div>
			<div class="input-g">
     
					<input type="submit" name="login" class="btn" value="login">
          </div>
					
				</form>







