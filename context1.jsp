<h2>
<%
    String uid=request.getParameter("uid");
	
	out.println("Welcome : "+uid);
	pageContext.setAttribute("name",uid,PageContext.SESSION_SCOPE);
	
%>
</h2>
<hr>
<a href=context2.jsp>Next Page</a>