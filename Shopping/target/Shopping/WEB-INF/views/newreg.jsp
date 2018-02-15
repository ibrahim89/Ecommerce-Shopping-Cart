<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#ff0044">
<h1>Registration Form: </h1>
<form class="form-horizontal" id="registerHere" method='post' action=''>
<fieldset>

<legend>Registration</legend>

<div class="control-group">
<label class="control-label">First Name</label>
<div class="controls">
<input type="text" class="input-xlarge" id="fname" name="fname" rel="popover" data-content="Enter your first name." data-original-title="First Name">
</div>
</div>


<div class="control-group">
<label class="control-label">Last Name</label>
<div class="controls">
<input type="text" class="input-xlarge" id="lname" name="lname" rel="popover" data-content="Enter your second name." data-original-title="Last Name">
</div>
</div>

<div class="control-group">
<label class="control-label">Date Of Birth</label>
<div class="controls">
<input type="text" class="input-xlarge" id="dob" name="dob" rel="popover" data-content="Enter your Date Of Birth." data-original-title="Date Of Birth">
</div>
</div>

<div class="control-group">
<label class="control-label">Email</label>
<div class="controls">
<input type="text" class="input-xlarge" id="email" name="email" rel="popover" data-content="Enter your email id." data-original-title="email id">
</div>
</div>
<div class="control-group">
<label class="control-label">Mobile</label>
<div class="controls">
<input type="text" class="input-xlarge" id="mobile" name="mobile" rel="popover" data-content="Enter your mobile no." data-original-title="mobile no.">
</div>
</div>
<div class="control-group">
<label class="control-label">Gender</label>
<div class="radio">
  <label><input type="radio" name="male">Male</label>
</div>
<div class="radio">
  <label><input type="radio" name="female">Female</label>
</div>
</div>
<label class="control-label">Address</label>
<div class="controls">
 <textarea class="form-control" rows="5" id="comment"></textarea>
</div>
</div>
<br>
<div class="form-group">
  <label for="sel1">Select City:</label>
  <select class="form-control" id="city">
    <option>Mumbai</option>
    <option>Chennai</option>
    <option>Banglore</option>
    <option>Pune</option>
  </select>
</div>
<div class="control-group">
<label class="control-label">Pin Code:</label>
<div class="controls">
<input type="text" class="input-xlarge" id="pincode" name="pincode" rel="popover" data-content="Enter your pin code." data-original-title="pin code">
</div>
</div>
<div class="control-group">
<label class="control-label">State</label>
<div class="controls">
<input type="text" class="input-xlarge" id="state" name="state" rel="popover" data-content="Enter your State." data-original-title="State">
</div>
</div>
<div class="form-group">
  <label for="sel1">Select Country:</label>
  <select class="form-control" id="city">
    <option>India</option>
    <option>USA</option>
    <option>China</option>
    <option>Australia</option>
  </select>
</div>

<br><br>
<div class="control-group">
<label class="control-label"></label>
<div class="controls">
<button type="submit" class="btn btn-success" >Create My Account</button>
</div>
</div>

</fieldset>
</form>
</body>
</html>