<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.RequestDispatcher"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%-- <%
if(!("true".equals((String)session.getAttribute("loginsuccess")))){
	response.sendRedirect("login.jsp");
}

%> --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/styleW.css">
 <link rel="stylesheet" href="css/animate.css">
<title>Welcome</title>

</head>

<body style="background-image: url('bg.png');">
<div class="header">Ummeed</div>
<div class="title animated bounceInUp">Welcome </div>
<div class="container">
<a href="Res.jsp" class="button1" ><input type="button" name="commit" value="Reservation"></a>
<a href="Ngo.jsp" class="button2"><input type="button" name="commit" value="Literacy"></a>
<a href="Systm.jsp" class="button3"><input type="button" name="commit" value="Existing System Change"></a>
<a href="index.jsp" class="button4"><input type="button" name="commit" value="Back"></a> 
</div>

<div class="footer"><p style="text-align: center;font-size:large; ;color: white;">Copyright &copy;Executioners 2015</p></div>
</body>

<!-- <script type="text/javascript">
window.history.forward(1);
function noBack(){
window.history.forward();
} -->
</script>
</html>