<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FIR Form</title>
<style type="text/css">
	body{
		padding: 20px 25px;
		background-color:#DFBF87;
		color:#9C1027;}
	hr{
	color:#9C1027;
	}
	label{
		margin: 20px;
	}
	h1{
		text-align:center;}
</style>
</head>
<body>
	<form method="post" action="fircase.jsp">
	<h1>FIR FORM</h1>
	<hr>
	<div>
		<label>District name: </label>
		<select name="dist">
		      <option value="Darjeeling">Darjeeling</option>
		      <option value="Jalpaiguri">Jalpaiguri</option>
		      <option value="CoochB">Cooch Behar</option>
		      <option value="UttarDi">Uttar Dinajpur</option>
		      <option value="DakshinDi">Dakshin Dinajpur</option>
		      <option value="Malda">Malda</option>
		      <option value="Birbhum">Birbhum</option>
		      <option value="Mursihdabad">Mursihdabad</option>
		      <option value="PurbaB">Purba Bardhaman</option>
		      <option value="Nadia">Nadia</option>
		      <option value="Purulia">Purulia</option>
		      <option value="Bnakura">Bankura</option>
		      <option value="Hooghly">Hooghly</option>
		      <option value="N24">North 24 Parganas</option>
		      <option value="PaschiM">Paschim Mednipur</option>
		      <option value="Howrah">Howrah</option>
		      <option value="Kolkata">Kolkata</option>
		      <option value="S24">South 24 Parganas</option>
		      <option value="PurbaM">Purba Mednipur</option>
		      <option value="Kalimpong">Kalimpong</option>
		      <option value="Alipurduar">Alipurduar</option>
		      <option value="PaschimB">Paschim Bardhaman</option>
		      <option value="Jhargram">Jhargram</option>
		    </select>
		   <label>Name of police station:</label>
		   <input name="pos" placeholder="police station" required/>
	</div>
	<hr>
	<div>
		<h3>COMPLAINT DETAILS</h3>
		<label>Name of Complainant:</label>
		<input name="name" placeholder="Your full name" required/><br><br>
		<label>Phone Number:</label>
		<input name="phn" placeholder="Phone number" required/><br><br>
		<label>Address:</label>
		<input name="addr" placeholder="Your address" required/><br><br>
		<label>City:</label>
		<input name="city" placeholder="Your city" required/><br><br>
		<label>State:</label>
		<input name="state" placeholder="Your state" required/><br><br>
		<label>Email Address:</label>
		<input name="mail" placeholder="Your email" required/><br><br>
		<p>Complaint type:  
		    <select name="n5">
		      <option value="Drug offence">Drug offence</option>
		      <option value="Theft">Theft</option>
		      <option value="Physical Abuse">Physically Violent/Aggressive</option>
		      <option value="Sexual Harassment">Sexual Harassment</option>
		      <option value="Arson">Arson</option>
		      <option value="Smuggling goods">Smuggling goods</option>
		      <option value="Human Trafficking">Human Trafficking</option>
		      <option value="Corruption">Corruption</option>
		      <option value="Gambling">Gambling</option>
		      <option value="Mental Harassment">Mental Harassment</option>
		      <option value="Breach in privacy">Breach in privacy</option>
		    </select>
  		</p><br><br>
  		<label>Date of occurrence:</label>
		<input name="doo" placeholder="DD-MM-YYYY" required/><br><br>
		<label>Suspect details:</label>
		<textarea cols="80" rows="8" placeholder="Complain in detail" name="susdet" required></textarea>
	</div><br>
	<button type="submit">Submit</button>
	<button type="reset">Reset</button>
	</form>
</body>
</html>
