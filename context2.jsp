<h2>
<%
    String uid=pageContext.getAttribute("name",PageContext.SESSION_SCOPE).toString();
	
	out.println("Welcome : "+uid);
	
%>
</h2>
