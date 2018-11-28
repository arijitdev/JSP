<h2>
<%!
	String uid,pwd;
%>
<%
    uid=request.getParameter("uid");
	pwd=request.getParameter("pwd");
	
	if (uid.equals("ardeb")&&pwd.equals("123")) {
		
		response.sendRedirect("http://www.edureka.co");
	
	} else {
	
		response.sendError(response.SC_UNAUTHORIZED, "Invalid user name/password");
		
	}
%>
<hr>