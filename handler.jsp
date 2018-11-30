<%@page isErrorPage="true" %> 
<body bgcolor=red text=cyan>
<h2>
<%
if(exception instanceof ArithmeticException)
	out.println("ERROR: "+exception.getMessage().toString());
else if(exception instanceof ArrayIndexOutOfBoundsException)
	out.println("ERROR: Invalid array index"+exception.getMessage());
else
	out.println("Internal Server Error");
%>