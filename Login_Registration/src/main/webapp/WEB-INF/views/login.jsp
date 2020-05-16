<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
* {box-sizing: border-box;}

body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 20px 10px;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }
}
</style>
	<style>
.input-group-addon {
   color: #fff;
   background-color: #337ab7;
}


.form-control, .input-group-addon {
   border-radius: 0px;
}
label{
  text-align: left !important;
}
</style>
  </head>
  <body>
  
  
 <div class="header">
  <a href="#default" class="logo">CPM & BI Support</a>
  <div class="header-right"> 
    <a style="color:0099FF" href="/logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a>
  </div>
</div>
  
  
 
  
    <div class="container">
      <div class="container">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-5 col-md-offset-4 col-sm-7 col-sm-offset-3">                    
            <div class="panel panel-primary" >
                    <div class="panel-heading">
                        <div class="panel-title text-center"><i class="fa fa-sign-in" aria-hidden="true"></i> Sign In</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" action="/login" role="form" method="post">
                                    
                            <div style="margin-bottom: 25px" class="input-group col-sm-offset-3 col-sm-7">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  id="login-username" type="text" class="form-control input-sm" name="username" value="" placeholder="username or email"/>                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group col-sm-offset-3 col-sm-7">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input  id="login-password" type="password" class="form-control input-sm" name="password" placeholder="password"/>
                                    </div>
                                    
									 <div class="input-group col-sm-offset-3 col-sm-7">
                                      <div class="checkbox">
                                        <label>
                                          <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                                        </label>
                                      </div>
                                    </div>


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls text-center">
                                      <a id="btn-login" href="/dashboard" class="btn btn-primary btn-sm"> Login <i class="fa fa-sign-in" aria-hidden="true"></i>   </a>
                                      

                                    </div>
                                </div>
								
								<div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account! 
                                        <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Sign Up Here
                                        </a>
                                        </div>
                                        <div style="float:right;  font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>
                                    </div>
                                </div>    
                            </form>     



                        </div>                     
                    </div>  
        </div>
	
                        </div>                     
                    </div>  	
		
        



<!-- footer -->
     <footer  style="background-color: #f1f1f1">
        <div class="container">
            <div class="row ">
                <div class="col-md-4 text-center text-md-left ">
                    
                    <div class="py-0">
                        <h3 class="my-4 text-black">CPMBI<span class="mx-2 font-italic text-warning ">Helpdesk</span></h3>
 
                        <p class="footer-links font-weight-bold">
                            <a class="text-w" href="#">Home</a>
                            |
                            <a class="text-black" href="#">Blog</a>
                            |
                            <a class="text-black" href="#">About</a>
                            |
                            <a class="text-black" href="#">Contact</a>
                        </p>
                        <p class="text-black py-4 mb-4">&copy;2019 Raminfo Ltd.</p>
                    </div>
                </div>
                
                <div class="col-md-4 text-black text-center text-md-left ">
                    <div class="py-2 my-4">
                        <div>
                            <p class="text-black"> <i class="fa fa-map-marker mx-2 "></i>
                                    Plot No. A-8A Sector 24, Block A, Noida, Uttar Pradesh 201301</p>
                        </div>
 
                        <div> 
                            <p><i class="fa fa-phone  mx-2 "></i> Incase of CPM queries contact: 0120-4942090</p>
                        </div>
						
						<div> 
                            <p><i class="fa fa-phone  mx-2 "></i> Incase of BI queries contact:  0120-4942089</p>
                        </div>
                        <div>
                            <p><i class="fa fa-envelope  mx-2"></i><a href="mailto:support@eduonix.com">cpmbisupport@ntpc.co.in</a></p>
                        </div>  
                    </div>  
                </div>
                
                
            </div>  
        </div>
     </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>