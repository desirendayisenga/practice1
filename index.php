
<hml>
<head>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>

      <div class="header">
        <h2>Sign up</h2>
      </div>
  

 
      <form action="reg.php" method="post" >
<div class="input-g">
       <label>Name:
 <input type="text"  placeholder="your name" name="name" required  />
      </label>
</div>

<div class="input-g">
<label>Username:
        <input type="email"  placeholder="Email address" name="uname" required  /><br><br>
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
				     
				<form action="reg.php" method="post">
				<div class="input-g">
       <label>Username:
					<input type="email" placeholder="Email address" name="emails" required><br><br>
</label>
</div>
<div class="input-g">
       <label>Password:
					<input type="password"  placeholder="Password" name="passs" required>
</label>
</div>
			<div class="input-g">
     
					<input type="submit" name="login" class="btn" value="login">
          </div>
					
				</form>



<?php

include ("include.php");

if(isset($_POST['login']))
{
 $emails = $MySQLi_CON->real_escape_string(trim($_POST['uname']));
 $passs = $MySQLi_CON->real_escape_string(trim($_POST['pass']));
 
 $query = $MySQLi_CON->query("SELECT * FROM reguser WHERE uname='$emails'");
 $row=$query->fetch_array();



  if($passs == $row['pass'])
 {
 
  
  header("Location:succes.php");
      
}
 
 
 else
 {
  echo "Incorrect password or username";	
   

}
 
 $MySQLi_CON->close();
 



}










if(isset($_POST["signup"]))
{
      $hashed_pass=hash('sha512',$_POST['pass']);

   $name=$_POST["name"];
   $uname=$_POST["uname"];
   $password=$_POST["pass"];
   

       $check_email = $MySQLi_CON->query("SELECT uname FROM reguser WHERE uname='$uname'");
 $count=$check_email->num_rows;
 
 if($count==0){


          $query = "INSERT INTO reguser(name,uname,pass)VALUES('$name','$uname','$hashed_pass')";

                     
 $result = mysqli_query($MySQLi_CON,$query);
				mysqli_close($MySQLi_CON);

          

			
			
                if($result)
				 {echo"successfully registered ";}

				  else{echo"error";}
        
             }

		else{
 echo"the email you entered exist in the sysyem ";
    
            }

}
?>



