<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>

<style>
body
{
background-image:url("backreg.jpg");
}
#fname,#lname,#dob,#number,#email,#password input:required:invalid, input:focus:invalid {
  background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAeVJREFUeNqkU01oE1EQ/mazSTdRmqSxLVSJVKU9RYoHD8WfHr16kh5EFA8eSy6hXrwUPBSKZ6E9V1CU4tGf0DZWDEQrGkhprRDbCvlpavan3ezu+LLSUnADLZnHwHvzmJlvvpkhZkY7IqFNaTuAfPhhP/8Uo87SGSaDsP27hgYM/lUpy6lHdqsAtM+BPfvqKp3ufYKwcgmWCug6oKmrrG3PoaqngWjdd/922hOBs5C/jJA6x7AiUt8VYVUAVQXXShfIqCYRMZO8/N1N+B8H1sOUwivpSUSVCJ2MAjtVwBAIdv+AQkHQqbOgc+fBvorjyQENDcch16/BtkQdAlC4E6jrYHGgGU18Io3gmhzJuwub6/fQJYNi/YBpCifhbDaAPXFvCBVxXbvfbNGFeN8DkjogWAd8DljV3KRutcEAeHMN/HXZ4p9bhncJHCyhNx52R0Kv/XNuQvYBnM+CP7xddXL5KaJw0TMAF8qjnMvegeK/SLHubhpKDKIrJDlvXoMX3y9xcSMZyBQ+tpyk5hzsa2Ns7LGdfWdbL6fZvHn92d7dgROH/730YBLtiZmEdGPkFnhX4kxmjVe2xgPfCtrRd6GHRtEh9zsL8xVe+pwSzj+OtwvletZZ/wLeKD71L+ZeHHWZ/gowABkp7AwwnEjFAAAAAElFTkSuQmCC');
  background-position: right top;
  background-repeat: no-repeat;
  -moz-box-shadow: none;
}
input:required:valid {
  background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAepJREFUeNrEk79PFEEUx9/uDDd7v/AAQQnEQokmJCRGwc7/QeM/YGVxsZJQYI/EhCChICYmUJigNBSGzobQaI5SaYRw6imne0d2D/bYmZ3dGd+YQKEHYiyc5GUyb3Y+77vfeWNpreFfhvXfAWAAJtbKi7dff1rWK9vPHx3mThP2Iaipk5EzTg8Qmru38H7izmkFHAF4WH1R52654PR0Oamzj2dKxYt/Bbg1OPZuY3d9aU82VGem/5LtnJscLxWzfzRxaWNqWJP0XUadIbSzu5DuvUJpzq7sfYBKsP1GJeLB+PWpt8cCXm4+2+zLXx4guKiLXWA2Nc5ChOuacMEPv20FkT+dIawyenVi5VcAbcigWzXLeNiDRCdwId0LFm5IUMBIBgrp8wOEsFlfeCGm23/zoBZWn9a4C314A1nCoM1OAVccuGyCkPs/P+pIdVIOkG9pIh6YlyqCrwhRKD3GygK9PUBImIQQxRi4b2O+JcCLg8+e8NZiLVEygwCrWpYF0jQJziYU/ho2TUuCPTn8hHcQNuZy1/94sAMOzQHDeqaij7Cd8Dt8CatGhX3iWxgtFW/m29pnUjR7TSQcRCIAVW1FSr6KAVYdi+5Pj8yunviYHq7f72po3Y9dbi7CxzDO1+duzCXH9cEPAQYAhJELY/AqBtwAAAAASUVORK5CYII=');
  background-position: right top;
  background-repeat: no-repeat;
}
table,#reg
{
position:relative;
left:40%;
}
#can1
{
position:relative;
left:27%;
}


</style>
</head>
<body onload="drawCanvas()">
<canvas id="can1" width="600" height="50">
</canvas>
	<form:form method="Post" name="user" action="usercontroller.html"
		commandName="registration">
		<table>
			<tr>
				<td>FIRST NAME</td>
				<td><input type="text" name="fname" id="f" autofocus="autofocus" placeholder="Enter the first name" required /></td>
			</tr>
			<tr>
				<td>LAST NAME</td>
				<td><input type="text" name="lname" placeholder="Enter the last name" required/></td>
			</tr>
			<tr>
				<td>Date Of Birth</td>
				<td><input type="date" name="dob" placeholder="Enter the date of birth" required/></td>
			</tr>
			<tr>
				<td>Mobile Number</td>
				<td><input type="text" name="number" placeholder="Enter the Mobile Number" required oninput="myNumber()" pattern="\d{2}\d{10}"/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" placeholder="Enter the Email" required oninput="myEmail()"/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" placeholder="Enter the Password" required/></td>
			</tr>
			<tr>
				<td>Confirm Password</td>
				<td><input type="password" name="cpassword" placeholder="Re enter the password" required/></td>
			</tr>
			<tr>
				<td><input type="submit" value="REGISTER" id="reg"
					onclick="return validateUserDetails()"></td>
			</tr>
		</table>
	</form:form>
	<script type="text/javascript">
	
	  function drawCanvas()
	  {
	    var canvas = document.getElementById("can1");
	    if (canvas.getContext)
	    {
	      var ctx = canvas.getContext("2d");
	      ctx.fillStyle = "rgb(255,255,255)";
	      ctx.strokeStyle="rgb(10,10,50)";
	      ctx.font = "italic 24pt calibri";
	      ctx.strokeText("WELCOME TO USER REGISTRATION",75,35);

	    }
	  }
		function validateUserDetails() //function to validate
		{
			var retvalue;
			retvalue = ValidateFirstName();
			if (retvalue == false) {
				return retvalue;
			}

			retvalue = ValidateLastName();
			if (retvalue == false) {
				return retvalue;
			}

			

			retvalue = validatePassword();
			if (retvalue == false) {
				return retvalue;
			}

		}
		
		function myEmail()
		{
		    var inputVal = document.forms[0].elements[4]
		    if(inputVal.validity.typeMismatch)
		    {
		       inputVal.setCustomValidity("Hey '" + inputVal.value + "' is not a valid email. Please enter something that is valid!");
		    }
		    else
		        inputVal.setCustomValidity("");
		}
		function ValidateFirstName() {
			var fname = user.fname.value;
			var flag = true;

			if (fname == " " || fname == null) {
				alert("Please provide your first name!");
				return false;
			}

			for ( var indx = 0; indx < fname.length; indx++)
				if (fname.toUpperCase().charAt(indx) < 'A'
						|| fname.toUpperCase().charAt(indx) > 'Z')
					if (fname.charAt(indx) != '') {
						alert("First Name is not valid..");
						flag = false;
						break;
					}
			return flag;
		}

		function ValidateLastName() {
			var lname = user.lname.value;
			var flag1 = true;

			if ((lname == " " || lname == null)) {
				alert("Please provide your Last name!");
				return false;
			}

			for ( var indx1 = 0; indx1 < name.length; indx1++)
				if ((lname.toUpperCase().charAt(indx1) < 'A' || lname
						.toUpperCase().charAt(indx1) > 'Z'))
					if (lname.charAt(indx1) != '') {
						alert("Last Name is not valid..");
						flag1 = false;
						break;
					}
			return flag1;
		}

	
		
		function myNumber()
		{
		    var inputVal = document.forms[0].elements[3]
		    if(inputVal.validity.patternMismatch)
		    {
		       inputVal.setCustomValidity("Hey '" + inputVal.value + "' is not a valid phone number. Please enter something that is valid!");
		    }
		    else
		        inputVal.setCustomValidity("");
		}

		function validatePassword() {
			var password = user.password.value;
			var cpassword = user.cpassword.value;
			if (password != cpassword) {
				alert("Password entered is incorrect!!please enter the correct password");
			}
		}
	</script>

</body>
</html>
