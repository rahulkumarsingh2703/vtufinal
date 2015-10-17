<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/MeStyle.css">
<link rel="stylesheet" href="css/animate.css">
<title>Login</title>
</head>

<body>
<div class="header">Umeed</div>
<div class="title animated bounceInUp">Admin SignUp</div>
<section class="container">
 	<div class="login">
 	
  		
 		
      <form method="post" action="login">
       <p style="text-align: center;color: red"><%
        		if(request.getAttribute("errMsg") != null){
        		out.println((String)request.getAttribute("errMsg"));
        		request.setAttribute("errMsg",null);
        		}
        		%></p>
  		<p><input type="text" name="username" value=""  placeholder="Username"></p>
  		<p><input type="text" name="email" value=""  placeholder="Email ID"></p>
  		<p><input type="password" name="password" value=""  placeholder="Password"></p>
  		<p><input type="password" name="cpassword" value=""  placeholder="Conform Password"></p>
  		<p class="remember_me">
        <label><input type="checkbox" name="remember_me" id="remember_me">Remember me on this computer</label>
        </p>
        <p class="submit"><input type="submit" name="commit" value="Sign up"></p>
      </form>
     
    </div>
</section>
<div class="footer">
<p>Copyright@Executioners</p>
</div>

</body>


</html>