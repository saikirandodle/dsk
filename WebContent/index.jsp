<html>
<head>
<title>Smart Management System</title>
 
 <!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/signin.css" rel="stylesheet">
<link href="css/indexpage.css" rel="stylesheet">
 
</head>


<body>
 	<div class="header">
		<table class="ft">
			<tr>
				<td style="width: 90%;" valign="top"><img src="images/sms.png"	style="height: 45px;"></td>
 			</tr>
		</table>
	</div>

	<div style="height: 69.2%;" class="">
		<form id="loginForm" class="form-signin login box" role="form" action="login" method="post">
			<table style="width: 100%;">
				<tr>
					<td><h3 class="form-signin-heading"	style="color: rgb(102, 101, 101); float: left;">Sign in
							as:&nbsp;&nbsp;&nbsp;&nbsp;</h3>
					</td>
					<td align="right"><select style="margin-top: 10px;">
							<option value="volvo">Retailer</option>
							<option value="saab">Saab</option>
							<option value="mercedes">Mercedes</option>
							<option value="audi">Audi</option>
					</select></td>
				</tr>
			</table>

			<table style="width: 100%;">
				<tr>
					<td><input type="text" class="form-control" name="userName"	placeholder="User Name" required autofocus>
					</td>
				</tr>
				<tr>
					<td><input type="password" class="form-control"	name="userPassword" placeholder="Password" required>
					</td>
				</tr>
 				<tr><td><br/></td></tr>
				<tr>
					<td><button class="btn btn-lg btn-primary btn-block" type="submit" value="Login">Sign in</button></td>
				</tr>
				<tr>
					<td style="padding-top: 10px;" align="right"><a href="#" onclick="showEmailDiv();">Forgot password? </a></td>
				</tr>
			</table>

		</form>
		<div id="emailDiv" style="display: none;">
			<form id="loginForm" class="form-signin login" role="form" action="login" method="post">
				<table style="width: 100%;">
					<tr>
						<td><input type="text" class="form-control" name="mailid" placeholder="Email ID" required></td>
						<td><button id="Sendemail" type="submit" value="Send Password">Send</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>



	<!--   footer div starts -->
	<div class="footer">
		<table class="ft">
			<tr>
				<td style="white-space: nowrap;">© Copyright 2001-2011
					Copyright .in - All Rights Reserved</td>
				<td nowrap="nowrap" width="25%"></td>
				<td nowrap="nowrap" width="1px"><a href="#" class="fcolor">ABOUT</a>
				</td>
				<td class="orange" width="1px">&nbsp;&nbsp;|&nbsp;&nbsp;</td>
				<td nowrap="nowrap" width="1px"><a href="#" class="fcolor">BLOG</a>
				</td>
				<td class="orange" width="1px">&nbsp;&nbsp;|&nbsp;&nbsp;</td>
				<td style="white-space: nowrap;" width="1px"><a href="#"
					class="fcolor">NEWS & EVENTS</a>
				</td>
				<td class="orange" width="1px">&nbsp;&nbsp;|&nbsp;&nbsp;</td>
				<td nowrap="nowrap" width="1px"><a href="#" class="fcolor">CONTACT</a>
				</td>
				<td class="orange" width="1px">&nbsp;&nbsp;|&nbsp;&nbsp;</td>
				<td nowrap="nowrap" width="70%"><a href="#" class="fcolor">SITEMAP</a>
				</td>

				<td align="right"><a href="#"><img
						src="images/facebook_circle_color-128.png" style="height: 40px;">
				</a>
				</td>
				<td>&nbsp;&nbsp;</td>
				<td align="left"><a href="#"><img
						src="images/twitter_circle_color-128.png" style="height: 40px;">
				</a>
				</td>
			</tr>
		</table>
	</div>
	<!-- footer div ends -->
</body>
</html>