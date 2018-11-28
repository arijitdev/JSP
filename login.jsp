<h2>
<%!
	String uid,pwd;
%>
<%
    uid=request.getParameter("uid");
	pwd=request.getParameter("pwd");
	out.println("User Name ="+uid+"<br>");
	out.println("Password ="+pwd+"<br>");
%>
<hr>

Server Name : <%=request.getServerName() %> <br>
Server Name : <%=request.getServerPort() %> <br>
Protocol    : <%=request.getProtocol() %>   <br>
Method      : <%=request.getMethod() %>     <br>