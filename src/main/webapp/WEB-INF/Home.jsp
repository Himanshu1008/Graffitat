<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  
</head> 
<script>
$(document).ready(function() {
    $("#datepicker").datepicker();
  });
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
var Myapp = angular.module("Myapp",[]);
Myapp.controller("Myctrl",function($scope)
{
	
$scope.username = '';
$scope.usernameError = false;
$scope.userfill = false;
$scope.usernameValidate = function()
{
var reg = /^$/;
$scope.usernameError = reg.test($scope.username);
console.log( $scope.usernameError );

}
$scope.usernamevalid = function()
{
console.log( $scope.username );
var user = /^[a-zA-Z]{3,15}$/;
$scope.userfill =! user.test($scope.username);
	
}
$scope.email = '';
$scope.emailError = false;
$scope.emailfill = false;
$scope.emailValidate = function() 
{
var reg =/^$/;
$scope.emailError = reg.test($scope.email);
console.log( $scope.emailError );

}

$scope.emailValidate1 = function()
{
var pat = /^[a-zA-Z0-9.!#$%&â€™*+=?^_`{|}~-]+@[a-zA-Z-]+?\.(?:[a-zA-Z])*$/;
$scope.emailfill =! pat.test($scope.email);
}	
$scope.phone = '+91-';
$scope.phfill = false;
$scope.phonevalidate = function()
{
var phpat = /^(\+\d{1,2})?\-?[789]\d{9}$/;
$scope.phfill =! phpat.test($scope.phone);
}
$scope.password = '';

$scope.psfill = false;
$scope.passwordvalidate = function()
{
var paspat = /^(?=(.*\d){2})(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%])[0-9a-zA-Z!@#$%]{8,}/;
$scope.psfill = !paspat.test($scope.password);

}
$scope.Confirmpassword = '';

});

</script>

<style>
.navbar-header a{
    width: 100%;
    line-height: 110px;
    height: 90px;
	padding-top: 0;
	}
	.nav{
	margin-top:15px;
	right:20px;
	
	}
	.ff{
	
	 font-family: "Times New Roman", Georgia, Serif;
	}
.bluring{
        width: 100%;
		height: 600px;
        margin-top:-25;
        padding:0;
        /*background-color: #2E3137; */
        background-position: center center;
        
        background-attachment: fixed;
        background-size: cover;
          -webkit-filter: blur(1px);
         -moz-filter: blur(1px);
        -o-filter: blur(1px);
        -ms-filter: blur(1px);
         filter: blur(1px);
		 position: absolute;
}


.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
div.verticalline
{
    width:1px;
	height:100%;
	margin-left:350px;
	border-radius:2px;
	background-color:#76323F;
}
</style>
<body ng-app="Myapp" style="background-color:#6D7993" >
<nav class="navbar navbar-default"style="background-color:#EFEFEF">
	<div class="navbar-header" >

		<a class="navbar-brand" href="#">
		
		<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>
				<font color="#76323F" size="5">&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;GRAFFITAT</font>
				</a>		
        <div class="verticalline" style="height:90px"></div>
	</div>
	<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">About</a>
  <a href="#">Services</a>
  <a href="#">Clients</a>
  <a href="#">Contact</a>
</div>
			 <ul class="nav navbar-nav navbar-right">
			 <li><a href="#" class="nav" class="active"><font color="#cc0000" size="5" class="ff"> Home &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></a></li>
        <li><a href="#" class="nav" data-toggle="modal" data-target="#myModal1"> <font color="#76323F" size="5" class="ff"> SIGN UP &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></a></li>
        <li><a href="#" class="nav" data-toggle="modal" data-target="#myModal"> <font color="#76323F" size="5" class="ff" >MENTOR SIGN UP &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></a></li>
      </ul>

	
	
</nav>
<div class="container-fluid">
<div class="col-lg-6">
<br>
<br>
<br>
<br>
<br>
<br>
<h1><font class="ff" color="#ffffff" size="5"><i>&nbsp; &nbsp; &nbsp; LEARN BY QUESTIONS</i></font></h1>

<br>

<h1> <font class="ff" color="#ffffff" size="10"> <b><i>&nbsp; DISCOVER GRAFFITAT..</i></b></font></h1>

</div>
<div class="col-lg-6">
<br>
<center><h3><font color="#76323F" size="6" class="ff"><b><i>LOG IN &nbsp;&nbsp; &nbsp;</i></b></h3></center>
<br>
<center>

 <form>

    <div class="input-group">
	
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			     
	 <input id="email" type="text" class="form-control input-lg" name="email" placeholder="Enter Email" style="width:70% ">
	
	</div>
	<br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
  <center>    <input id="password" type="password" class="form-control  input-lg" name="password" placeholder="Enter Password"  style="width:70%"></center>
    </div>
    <br>
  
  </form>
   </center>
</div>


</div>


   <div class="modal fade" id="myModal" >
   <div class="modal-dialog">
    
     
      <div class="modal-content">
        <div class="modal-header">
         
        
        <center>  <strong><h4 >SIGN UP FORM</h4></strong></center>
        </div>
        <div class="modal-body">
		<form Name="myform" action="Signupdata" method="post">
         <center> <label>User Name</label><br>
		 <input type="text" name="username" class= "form-control" ng-model="username" ng-change="usernameValidate();usernamevalid()" ></input></center>
		 <span ng-show="usernameError"> username can not be empty. </span>
		 <span ng-show="userfill"> username is not valid. </span>
		
		  
		 <hr>
		  <center> <label>Email ID</label><br>
		 <input type="text" name="email" action="Signupdata" class= "form-control" ng-model="email" ng-change="emailValidate();emailValidate1()"></input></center>
			 <span ng-show="emailError"> email can not be emMty. </span>
			 <span ng-show="emailfill"> email syntax is not correct. </span>
		
		<hr>
		 <center> <label>Phone No</label><br>
		 <input type="text" name="phoneno" class= "form-control" ng-model="phone" ng-change="phonevalidate()" ></input></center>
		 <span ng-show="phfill"> phone number is wrong </span>
		 <hr>
		   <center> <label>Date of Birth</label><br>
		 <input type="text" name="dateofbirth" class= "form-control" id="datepicker"></input></center>
		 <hr>
		 <center> <label>Gender</label><br>
		 <input type="text" name="dateofbirth" class= "form-control" ></input></center>
		 <hr>
		 <center> <label>About Yourself</label><br>
		 <input type="text" name="dateofbirth" class= "form-control" ></input></center>
		 <hr>
		 <center> <label>Qualifications</label><br>
		 <input type="text" name="dateofbirth" class= "form-control" ></input></center>
		 <hr>
		  <center> <label>Address</label><br>
		 <input type="text" name="address" class= "form-control"></input></center>
		 <hr>
		  <center> <label>Password</label><br>
		 <input type="password" name ="pass" class= "form-control" ng-model="password" ng-change="passwordvalidate()" placeholder="Minimum 8 character needed" ></input></center>
		 <span ng-show="psfill"> password is wrong </span> 
		 <hr>
		  <center> <label>Confirm Password</label><br>
		 <input type="password" name ="conpass" class= "form-control" ng-model="Confirmpassword" placeholder="Minimum 8 character needed"></input></center>
		  <span ng-show="password !== Confirmpassword"> Password Mismatch</span>
		  <br>
		 <center><button type="submit" class="btn btn-warning" ng-disabled="emailfill" >SUBMIT</button></center>
		  </form>
        </div>
        <div class="modal-footer">
          
        </div>
      </div>
      
   
  </div>
  </div>
    <div class="modal fade" id="myModal1" >
   <div class="modal-dialog">
    
     
      <div class="modal-content">
        <div class="modal-header">
         
        
        <center>  <strong><h4 >SIGN UP FORM</h4></strong></center>
        </div>
        <div class="modal-body">
		<form Name="myform" action="Signup" method="post">
         <center> <label>User Name</label><br>
		 <input type="text" name="username" class= "form-control" ng-model="username" ng-change="usernameValidate();usernamevalid()" ></input></center>
		 <span ng-show="usernameError"> username can not be empty. </span>
		 <span ng-show="userfill"> username is not valid. </span>
		
		  
		 <hr>
		  <center> <label>Email ID</label><br>
		 <input type="text" name="email" action="Signupdata" class= "form-control" ng-model="email" ng-change="emailValidate();emailValidate1()"></input></center>
			 <span ng-show="emailError"> email can not be emMty. </span>
			 <span ng-show="emailfill"> email syntax is not correct. </span>
		
		<hr>
		 <center> <label>Phone No</label><br>
		 <input type="text" name="phoneno" class= "form-control" ng-model="phone" ng-change="phonevalidate()" ></input></center>
		 <span ng-show="phfill"> phone number is wrong </span>
		 <hr>
		  <center> <label>Date of Birth</label><br>
		 <input type="text" name="dateofbirth" class= "form-control"  id="datepicker" ></input></center>
		 <hr>
		 <center> <label>Gender</label><br>
		 <input type="text" name="dateofbirth" class= "form-control" ></input></center>
		 <hr>
		 <center> <label>About Yourself</label><br>
		 <input type="text" name="dateofbirth" class= "form-control" ></input></center>
		 <hr>
		
		
		  <center> <label>Address</label><br>
		 <input type="text" name="address" class= "form-control"></input></center>
		 <hr>
		  <center> <label>Password</label><br>
		 <input type="password" name ="pass" class= "form-control" ng-model="password" ng-change="passwordvalidate()" placeholder="Minimum 8 character needed" ></input></center>
		 <span ng-show="psfill"> password is wrong </span> 
		 <hr>
		  <center> <label>Confirm Password</label><br>
		 <input type="password" name ="conpass" class= "form-control" ng-model="Confirmpassword" placeholder="Minimum 8 character needed"></input></center>
		  <span ng-show="password !== Confirmpassword"> Password Mismatch</span>
		  <br>
		 <center><button type="submit" class="btn btn-warning" ng-disabled="emailfill" >SUBMIT</button></center>
		  </form>
        </div>
        <div class="modal-footer">
          
        </div>
      </div>
      
   
  </div>
  </div>

 <!--  <center>
  <h2>LOG-IN</h2>
  </center>
  <div>

  <form Name="myform">
  
   <center>
  
	
  <label style="font-size:170%"><font color="#666699"> Email Address</font></label>
	<br>
	<input type="text" class="form-control" style="width:40%">
	</input>
	
	<br>
	<br>
	
	<label style="font-size:170%"><font color="#666699">Password &nbsp;<span class="glyphicon glyphicon-question-sign"></span></font></label>
	<br>
	<input type="text" style="width:40%" class="form-control" >
	</input>
	</center>
  
  </form>
  </div>--!>

  <!-- <div class="container-fluid" ng-controller="Myctrl">
	<div class="col-lg-6">
	
	
	<h3><font color="#52ce73" size="6"><strong>&nbsp; &nbsp;   LOG-IN</strong>&nbsp;<span class="glyphicon glyphicon-education"></span></font></h3>
	<hr>
	<center>
	<label style="font-size:170%"><font color="#666699"> Email Address :</font></label>
	<br>
	<input type="text" style="width:100%">
	</input>
	
	<br>
	<hr>	
	<label style="font-size:170%"><font color="#666699">Password &nbsp;<span class="glyphicon glyphicon-question-sign"></span> :</font></label>
	<br>
	<input type="text" style="width:100%" >
	</input>
	</center>
	</div>
		
	<div class="col-lg-6">
	
	<div class="container-fluid" style="background-color:">
	<h3><font color="#52ce73" size="6"><strong>&nbsp; &nbsp;   SIGN-UP</strong>&nbsp;<span class="glyphicon glyphicon-education"></span></font></h3>
	<hr id="hr">
	
			<form Name="myform" action="Signup" method="post" >
         <center>
		 <input type="text" name="username" placeholder="Enter UserName" class= "form-control" ng-model="username" ng-change="usernameValidate();usernamevalid()" ></input></center>
		 <span ng-show="usernameError"> username can not be empty. </span>
		 <span ng-show="userfill"> username is not valid. </span>
		
		  
		 <hr>
		  <center> 
		 <input type="text" name="email" placeholder="Enter Email-ID" action="Signupdata" class= "form-control" ng-model="email" ng-change="emailValidate();emailValidate1()"></input></center>
			 <span ng-show="emailError"> email can not be emMty. </span>
			 <span ng-show="emailfill"> email syntax is not correct. </span>
		
		<hr>
		 <center>
		 <input type="text" name="phoneno" placeholder="Enter Phone-NO" class= "form-control" ng-model="phone" ng-change="phonevalidate()" ></input></center>
		 <span ng-show="phfill"> phone number is wrong </span>
		 <hr>
		  <center> 
		 <input type="text" name="address" placeholder="Enter Address" class= "form-control"></input></center>
		 <hr>
		  <center> 
		 <input type="password" name ="pass" placeholder="Enter Password" class= "form-control" ng-model="password" ng-change="passwordvalidate()" placeholder="Minimum 8 character needed" ></input></center>
		 <span ng-show="psfill"> password is wrong </span> 
		 <hr>
		  <center> 
		 <input type="password" name ="conpass" placeholder="Enter Password Again" class= "form-control" ng-model="Confirmpassword" placeholder="Minimum 8 character needed"></input></center>
		  <span ng-show="password !== Confirmpassword"> Password Mismatch</span>
		  <br>
		 <center><button type="submit" class="btn btn-warning" >SUBMIT</button></center>
		  
	</form>
	</div>
	</div>
</div> -->
</body>
</html>