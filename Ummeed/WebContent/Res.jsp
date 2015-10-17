<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.IOException,java.io.PrintWriter,java.sql.Connection,java.sql.Statement,com.project.db.DataBaseMgr,java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%-- <%
if(!("true".equals((String)session.getAttribute("loginsuccess")))){
	response.sendRedirect("login.jsp");
}
%> --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/Sstyle.css">
<style>

 #search{
  position: relative;
  text-align:center;
  
  width: 0px auto;
  height: 0px auto;
 margin-left: 5%;
 margin-right: 5%;
 
 }
 
 
table {
    width:100%;
    
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    
}
th, td {
    padding: 5px;
    text-align: left;
     text-align: center;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
     
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
    
}
table#t01 th	{
    background-color: #13202c;
    color: white;
     text-align: center;
}
 
 
 
 


</style>
<link rel="stylesheet" href="css/animate.css">
<title>Equality</title>
</head>
<body style="background-image: url('bg.png');">
<div class="header">Equality in Opportunity</div>
<div class="title animated bounceInUp">Reservation portal</div>

<div  >
<!-- <a href="welcome.jsp" class="button1"><input type="button" name="commit" value="Back"></a>
<a href="Logout.jsp" class="button2"><input type="button" name="commit" value="Logout"></a> -->
</div>


<section class="container">
<div class="login">
 	
 	<form method="post" action="Res.jsp">
 	<input type="hidden" name="search" value="true">
       <p><input type="text" name="sname" value=""  placeholder="City"></p>
  		 		
        <p class="submit"><input type="submit" name="commit" value="Search"></p>
      </form>
     
    </div>








<div id="search">
<% if("true".equals(request.getParameter("search"))){
 		String sname = request.getParameter("sname");
 		
 		try{
			Connection con = DataBaseMgr.getDataBaseMgr().getConnection();
			Statement stmt = con.createStatement();
			
			  con.setAutoCommit(false);
		     
			String q1="select * from equality where city='"+sname+"' and slry>=500000";
			String q2="select * from equality where city='"+sname+"' and slry<=200000 and exp<=(0.5)*slry";
			String q3="select * from equality where city='"+sname+"' and slry<=200000 and exp>(0.5)*slry";
			ResultSet rset = stmt.executeQuery(q1);
			if (rset.next() ) {
			    
				
			
			%>
			 <div id="result">
			 <table id="t01">
			 <tr>
			 <th>
			 Denied
			 </th>
			 </tr>
			 <tr>
			 	    <th>Person name</th>
    				<th>Aadhar no.</th> 
   					<th>Phone no.</th>
   					<th>Occupation</th>
 			 </tr>
			 <% do{ %>
         		 <tr>
				    <td><%= rset.getString(1) %> </td>
			 		<td><%= rset.getString(2) %></td>
			 		<td><%= rset.getString(3) %></td>
			 		<td><%= rset.getString(4) %></td>
 				</tr>
 			<%}while (rset.next()); %>
			  </table>
		</div>
			
			<%
			}else{
				out.println("*No result found");
			} 
			
			stmt.executeBatch();
		    con.commit();
		    ResultSet rset1 = stmt.executeQuery(q2);
			if (rset1.next() ) {
			    
				
				
				%>
				 <div id="result">
				 <table id="t01">
				 <tr>
			 <th>
			 Approved
			 </th>
			 </tr>
			 <tr>
				 <tr>
				 	    <th>Person name</th>
	    				<th>Aadhar no.</th> 
	   					<th>Phone no.</th>
	   					<th>Occupation</th>
	 			 </tr>
				 <% do{ %>
	         		 <tr>
					    <td><%= rset1.getString(1) %> </td>
				 		<td><%= rset1.getString(2) %></td>
				 		<td><%= rset1.getString(3) %></td>
				 		<td><%= rset1.getString(4) %></td>
	 				</tr>
	 			<%}while (rset1.next()); %>
				  </table>
			</div>
				
				<%
				}else{
					out.println("*No result found");
				} 
			stmt.executeBatch();
		    con.commit();
		    
		    ResultSet rset2 = stmt.executeQuery(q3);
			if (rset2.next() ) {
			    
				
				
				%>
				 <div id="result">
				 <table id="t01">
				 <tr>
			 <th>
			 Doubt
			 </th>
			 </tr>
			 <tr>
				 <tr>
				 	    <th>Person name</th>
	    				<th>Aadhar no.</th> 
	   					<th>Phone no.</th>
	   					<th>Occupation</th>
	 			 </tr>
				 <% do{ %>
	         		 <tr>
					    <td><%= rset2.getString(1) %> </td>
				 		<td><%= rset2.getString(2) %></td>
				 		<td><%= rset2.getString(3) %></td>
				 		<td><%= rset2.getString(4) %></td>
	 				</tr>
	 			<%}while (rset2.next()); %>
				  </table>
			</div>
				
				<%
				}else{
					out.println("*No result found");
				} 
		    
			}
		catch(Exception ex)
		{
			ex.printStackTrace();
			out.println("error");
		}
		//out.println("Search performed");
	}
	%>

   
 	
</div>
</section>
<div class="footer" style="position: fixed;"><p style="text-align: center;font-size:large; ;color: white;">Copyright &copy;Executioners 2015</p></div>
</body>

<!-- <script type="text/javascript">
window.history.forward(1);
function noBack(){
window.history.forward();
}
</script> -->
</html>